using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AknaKereso
{
    class Mező : Button
    {
        public static int méret = 25;
        public bool akna = false;
        public bool felfedve = false;
        public int szomszédszám = 0;
        public int sor, oszlop;

        public Mező(int sor, int oszlop)
        {
            this.sor = sor;
            this.oszlop = oszlop;
            this.Top = oszlop * Mező.méret;
            this.Left = sor * Mező.méret;
            this.Height = Mező.méret;
            this.Width = Mező.méret;
        }

        public void FelFed()
        {
            if (akna)
            {
                MessageBox.Show(":(");
            }
            else
            {
                this.FlatStyle = FlatStyle.Flat;
                if (szomszédszám > 0)
                {
                    this.Text = szomszédszám.ToString();
                }
            }
            this.felfedve = true;
        }
    }
}
