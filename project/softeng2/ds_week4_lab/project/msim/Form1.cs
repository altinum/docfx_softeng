using FileHelpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace msim
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //Converts aggregated tob data to individual data
        private void button1_Click(object sender, EventArgs e)
        {
            StreamReader sr = new StreamReader(@"c:\temp\szem.csv");
            StreamWriter sw = new StreamWriter(@"c:\sim\census.csv");
            sr.ReadLine();
            while (!sr.EndOfStream)
            {
                string[] s = sr.ReadLine().Split(',');
                int n = int.Parse(s[256]);
                for (int i = 0; i < n; i++)
                {
                    sw.WriteLine(string.Format("{0};{1}", s[8], s[6]));
                }
            }
            sr.Close();
            sw.Close();
        }

        List<Individual> individuals = new List<Individual>();
        List<ProbabilityOfDeath> pDeaths = new List<ProbabilityOfDeath>();
        List<ProbabilityOfBirth> pBirths = new List<ProbabilityOfBirth>();


        private void button2_Click(object sender, EventArgs e)
        {
            StreamReader sr = new StreamReader(@"c:\temp\census.csv");
            while (!sr.EndOfStream)
            {
                string[] s = sr.ReadLine().Split(';');

                Individual sz = new Individual();
                sz.YearOfBirth = int.Parse(s[0]);
                sz.Sex = (Sex)int.Parse(s[1]);
                sz.NumberOfChildren = byte.Parse(s[2]);

                individuals.Add(sz);
            }
            sr.Close();


            //var engine = new FileHelperEngine<Individual>();
            //var Személyek = engine.ReadFile(@"c:\temp\census.csv");


            StreamReader sr1 = new StreamReader(@"c:\temp\fertality.csv");
            sr1.ReadLine(); //Van fejléc-sor is
            while (!sr1.EndOfStream)
            {
                string[] s = sr1.ReadLine().Split(';');
                ProbabilityOfBirth szv = new ProbabilityOfBirth();
                szv.Age = byte.Parse(s[0]);
                szv.NumberOfChildren = byte.Parse(s[2]);
                szv.PGivingBirth = double.Parse(s[3]);
                pBirths.Add(szv);
            }
            sr1.Close();


            var engine = new FileHelperEngine<ProbabilityOfDeath>();
            var pDeaths = engine.ReadFile(@"c:\temp\mortality.csv");

            //StreamReader sr2 = new StreamReader(@"c:\temp\mortality.csv", Encoding.Default);
            //sr2.ReadLine();
            //while (!sr2.EndOfStream)
            //{
            //    string[] s = sr2.ReadLine().Split(';');
            //    ProbabilityOfDeath hv = new ProbabilityOfDeath();
            //    hv.Sex = (Sex)byte.Parse(s[0]);
            //    //hv.Nem = (Nem)(s[0]=="Férfi"?1:2);
            //    hv.Age = byte.Parse(s[1]);
            //    hv.PDeath = double.Parse(s[2],CultureInfo.GetCultureInfo("HU-hu"));
            //    pDeaths.Add(hv);
            //}
            //sr2.Close();

            dataGridView1.DataSource = pBirths;
            dataGridView2.DataSource = pDeaths;
            //dataGridView3.DataSource = Személyek;

            MessageBox.Show("Ok.");
            //            var fiúk = (from x in Személyek where x.Nem == Nem.Férfi select x).Count();
            //            var lányok = (from x in Személyek where x.Nem == Nem.Nő select x).Count();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //Szimuláció
            Random rnd = new Random();
            for (int év = 2005; év < 2025; év++)
            {
                //Végigmegyünk az összes személyen
                for (int i = 0; i < individuals.Count; i++)
                {
                    Individual személy = individuals[i];
                    if (!személy.IsAlive) continue; //Ha halott, ugrunk a ciklus következő lépésére
                    byte személyKora = (byte)(év - személy.YearOfBirth);
                    //Halál kezelése
                    double PHalál = (from x in pDeaths
                                     where x.Sex == személy.Sex && x.Age == személyKora + 1
                                     select x.PDeath).First();
                    if (rnd.NextDouble() <= PHalál) személy.IsAlive = false;

                    //Születés kezelése -- csak nők szülnek
                    if (személy.Sex == Sex.Female)
                    {
                        //Szülési valószínűség kikeresése
                        double Pszülés = (from x in pBirths
                                          where x.Age == személyKora
                                          select x.PGivingBirth).FirstOrDefault();
                        //Születik gyermek?
                        if (rnd.NextDouble() <= Pszülés)
                        {
                            Individual újszülött = new Individual();
                            újszülött.YearOfBirth = év;
                            újszülött.NumberOfChildren = 0;
                            újszülött.Sex = (Sex)(rnd.Next(1, 3));
                            individuals.Add(újszülött);
                        }
                    }
                }
                //int fiukSzáma = (from x in Személyek
                //                 where x.Sex == Sex.Male && x.IsAlive?? true
                //                 select x).Count();
                //int lányokSzáma = (from x in Személyek
                //                   where x.Sex == Sex.Female && x.IsAlive
                //                   select x).Count();
                //Console.WriteLine(
                //    string.Format("Év:{0} Fiuk:{1} Lányok:{2}", év, fiukSzáma, lányokSzáma));
            }
        }
    }

    public enum Sex { Male = 1, Female = 2 }


    class Individual
    {
        public Sex Sex { get; set; }
        public int YearOfBirth { get; set; }
        public byte NumberOfChildren { get; set; }
       
        public bool IsAlive { get; set; } = true;
    }

    [DelimitedRecord(";")]
    class ProbabilityOfDeath
    {
        public Sex Sex { get; set; }
        public byte Age { get; set; }
        public double PDeath { get; set; }
    }

    class ProbabilityOfBirth
    {
        public byte Age { get; set; }
        public byte NumberOfChildren { get; set; }
        public double PGivingBirth { get; set; }
    }

}

