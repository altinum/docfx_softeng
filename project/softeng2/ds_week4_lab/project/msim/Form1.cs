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
using System.Threading.Tasks;
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


            //var engine = new FileHelperEngine<ProbabilityOfDeath>();
            //var pDeaths = engine.ReadFile(@"c:\temp\mortality.csv");

            StreamReader sr2 = new StreamReader(@"c:\temp\mortality.csv", Encoding.Default);
            sr2.ReadLine();
            while (!sr2.EndOfStream)
            {
                string[] s = sr2.ReadLine().Split(';');
                ProbabilityOfDeath hv = new ProbabilityOfDeath();
                hv.Sex = (Sex)byte.Parse(s[0]);
                //hv.Nem = (Nem)(s[0]=="Férfi"?1:2);
                hv.Age = byte.Parse(s[1]);
                hv.PDeath = double.Parse(s[2], CultureInfo.GetCultureInfo("HU-hu"));
                pDeaths.Add(hv);
            }
            sr2.Close();

            dataGridView1.DataSource = pBirths;
            dataGridView2.DataSource = pDeaths;
            //dataGridView3.DataSource = Személyek;

            MessageBox.Show("Ok.");
            //            var fiúk = (from x in Személyek where x.Nem == Nem.Férfi select x).Count();
            //            var lányok = (from x in Személyek where x.Nem == Nem.Nő select x).Count();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //Simulation
            Simulation();
        }

        private void Evaluation()
        {
            //int fiukSzáma = (from x in Személyek
            //                 where x.Sex == Sex.Male && x.IsAlive?? true
            //                 select x).Count();
            //int lányokSzáma = (from x in Személyek
            //                   where x.Sex == Sex.Female && x.IsAlive
            //                   select x).Count();
            //Console.WriteLine(
            //    string.Format("Év:{0} Fiuk:{1} Lányok:{2}", év, fiukSzáma, lányokSzáma));
        }

        List<KeyValuePair> keyValuePairs = new List<KeyValuePair>();
        private void statistics()
        {
            var nuberOfFemales = 0;
            foreach (var individual in individuals)
            {
                if (individual.Sex == Sex.Female) nuberOfFemales++;
            }
            keyValuePairs.Add(new KeyValuePair { Key = "Number of females", Value = nuberOfFemales.ToString("N0") });

            var nuberOfMales1 = (from x in individuals where x.Sex == Sex.Male select x).Count();

            nuberOfMales1 = individuals.Count(i => i.Sex== Sex.Male);


            keyValuePairs.Add(new KeyValuePair { Key = "Number of males", Value = nuberOfMales1.ToString("N0") });

            var allTheMales = from x in individuals where x.Sex == Sex.Male select x;

            var countOfMales = allTheMales.Count();

            var numberOfChildren = (from x in individuals where 2005 - x.YearOfBirth < 18 select x).Count();
            keyValuePairs.Add(new KeyValuePair { Key = "All the children", Value = nuberOfFemales.ToString("N0") });

            var tfr = (from x in individuals where x.NumberOfChildren > 0 select (double)x.NumberOfChildren).Average();
            keyValuePairs.Add(new KeyValuePair { Key = "TFR", Value = tfr.ToString("N2") });


            List<int> ages = new List<int>();
            for (int i = 0; i < 110; i++)
            {
                ages.Add(i);
            }

            var ageDistribution =
                from x in individuals
                group x by 2005 - x.YearOfBirth into g
                select new { Age = g.Key, CountOfMales = g.Count() };

            var nuberOfChildrwnByAge =
                from x in individuals
                group x by 2005 - x.YearOfBirth into g
                select new { Age = g.Key, CountOfMales = g.Average(t=>t.NumberOfChildren) };

            var ageDistributionOfMales =
                from x in individuals
                where x.Sex == Sex.Male
                group x by 2005 - x.YearOfBirth into g
                select new { Age = g.Key, CountOfMale = g.Count() };

            var ageDistributionOfFemales =
                from x in individuals
                where x.Sex == Sex.Female
                group x by 2005 - x.YearOfBirth into g
                select new { Age = g.Key, CountOfFemales = g.Count() };

            var ageDistributionTotal =
                from f in ageDistributionOfFemales
                join a in ages
                on f.Age equals a

                select new
                {
                    Age = a,
                    Females = f.CountOfFemales,
                };

            var ageDistributionTotal2 =
                from f in ageDistributionOfFemales
                join a in ages
                on f.Age equals a
                join m in ageDistributionOfMales
                on a equals m.Age
                select new
                {
                    Age = a,
                    Females = f.CountOfFemales,
                    Males = m.CountOfMale
                };

            var ageDistributionTotalOrdered = from x in ageDistributionTotal2 orderby x.Age select x;

            dataGridView1.DataSource = ageDistributionTotalOrdered.ToList();

            dataGridView3.DataSource = keyValuePairs;

        }

        private void statistics2()
        {
            var numberOfMales1 = individuals.Where(x => x.Sex == Sex.Male).Count();
            var numberOfMales2 = individuals.Count(x => x.Sex == Sex.Male);
            keyValuePairs.Add(new KeyValuePair { Key = "Number of males", Value = numberOfMales1.ToString("N0") });

            var allTheMales = individuals.Where(x => x.Sex == Sex.Male);

            var countOfMales = allTheMales.Count();

            var numberOfChildren = individuals.Count(x => 2005 - x.YearOfBirth < 18);
            keyValuePairs.Add(new KeyValuePair { Key = "All the children", Value = numberOfChildren.ToString("N0") });

            var tfr = individuals.Where(x => x.NumberOfChildren > 0)
                                 .Select(x => (double)x.NumberOfChildren)
                                 .Average();
            keyValuePairs.Add(new KeyValuePair { Key = "TFR", Value = tfr.ToString("N2") });

            List<int> ages = Enumerable.Range(0, 110).ToList();

            var ageDistribution = individuals.GroupBy(x => 2005 - x.YearOfBirth)
                                             .Select(g => new { Age = g.Key, CountOfMales = g.Count() });

            var ageDistributionOfMales = individuals.Where(x => x.Sex == Sex.Male)
                                                    .GroupBy(x => 2005 - x.YearOfBirth)
                                                    .Select(g => new { Age = g.Key, CountOfMale = g.Count() });

            var ageDistributionOfFemales = individuals.Where(x => x.Sex == Sex.Female)
                                                      .GroupBy(x => 2005 - x.YearOfBirth)
                                                      .Select(g => new { Age = g.Key, CountOfFemales = g.Count() });

            var ageDistributionTotal = ages.GroupJoin(ageDistributionOfFemales,
                                                      a => a,
                                                      f => f.Age,
                                                      (a, f) => new { Age = a, Females = f.FirstOrDefault()?.CountOfFemales ?? 0 });

            var ageDistributionTotal2 = ages.GroupJoin(ageDistributionOfFemales,
                                                       a => a,
                                                       f => f.Age,
                                                       (a, f) => new { Age = a, Females = f.FirstOrDefault()?.CountOfFemales ?? 0 })
                                            .Join(ageDistributionOfMales,
                                                  f => f.Age,
                                                  m => m.Age,
                                                  (f, m) => new { Age = f.Age, Females = f.Females, Males = m.CountOfMale });

            var ageDistributionTotalOrdered = ageDistributionTotal2.OrderBy(x => x.Age);

            dataGridView1.DataSource = ageDistributionTotalOrdered.ToList();
            dataGridView3.DataSource = keyValuePairs;




        }

        private void Simulation()
        {
            Random rnd = new Random();

            //Iterating through the years
            for (int year = 2005; year < 2025; year++)
            {
                Console.WriteLine("Year: " + year);
                //Iterating through all the individuals
                for (int i = 0; i < individuals.Count; i++)
                {
                    Individual individual = individuals[i];

                    if (!individual.IsAlive) continue; //If the individual is dead already, we skip 

                    byte személyKora = (byte)(year - individual.YearOfBirth);

                    //Handling death
                    double pDeath = (from x in pDeaths
                                     where x.Sex == individual.Sex && x.Age == személyKora + 1
                                     select x.PDeath).First();

                    if (rnd.NextDouble() <= pDeath) individual.IsAlive = false;

                    //Handling birth -- only women can give birth
                    if (individual.Sex == Sex.Female)
                    {
                        //Looking up the probability of giving birth
                        double pBirth = (from x in pBirths
                                         where x.Age == személyKora
                                         select x.PGivingBirth).FirstOrDefault();

                        //Is a new baby born?
                        if (rnd.NextDouble() <= pBirth)
                        {
                            Individual newborn = new Individual();
                            newborn.YearOfBirth = year;
                            newborn.NumberOfChildren = 0;
                            newborn.Sex = (Sex)(rnd.Next(1, 3));
                            individuals.Add(newborn);
                        }
                    }
                }
            }
        }

        private void ParallelSimulation()
        {
            Random rnd = new Random();

            //Iterating through the years
            for (int year = 2005; year < 2025; year++)
            {
                Console.WriteLine("Year: " + year);
                //Iterating through all the individuals
                Parallel.For(0, individuals.Count, i =>
                {
                    Individual individual = individuals[i];

                    if (!individual.IsAlive) return; //If the individual is dead already, we skip 

                    byte személyKora = (byte)(year - individual.YearOfBirth);

                    //Handling death
                    double pDeath = (from x in pDeaths
                                     where x.Sex == individual.Sex && x.Age == személyKora + 1
                                     select x.PDeath).First();

                    if (rnd.NextDouble() <= pDeath) individual.IsAlive = false;

                    //Handling birth -- only women can give birth
                    if (individual.Sex == Sex.Female)
                    {
                        //Looking up the probability of giving birth
                        double pBirth = (from x in pBirths
                                         where x.Age == személyKora
                                         select x.PGivingBirth).FirstOrDefault();

                        //Is a new baby born?
                        if (rnd.NextDouble() <= pBirth)
                        {
                            Individual newborn = new Individual();
                            newborn.YearOfBirth = year;
                            newborn.NumberOfChildren = 0;
                            newborn.Sex = (Sex)(rnd.Next(1, 3));
                            individuals.Add(newborn);
                        }
                    }
                });
            }
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            statistics();
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

