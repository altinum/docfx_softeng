using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AknaKereso
{
public partial class Form1 : Form
{
    Mező[,] pálya;
    int szélesség;
    int magasság;

    public Form1()
    {
        InitializeComponent();
        PályaGenerátor(10, 10);
        AknaPakoló(10);
    }

    void AknaPakoló(int aknaszám)
    {
        Random rnd = new Random();
        for (int i = 0; i < aknaszám; i++)
        {
            int sor = rnd.Next(magasság);
            int oszlop = rnd.Next(szélesség);
            pálya[sor, oszlop].akna = true;
            if (PályánVanE(sor - 1, oszlop - 1)) pálya[sor - 1, oszlop - 1].szomszédszám++;
            if (PályánVanE(sor - 1, oszlop + 1)) pálya[sor - 1, oszlop + 1].szomszédszám++;
            if (PályánVanE(sor + 1, oszlop - 1)) pálya[sor + 1, oszlop - 1].szomszédszám++;
            if (PályánVanE(sor + 1, oszlop + 1)) pálya[sor + 1, oszlop + 1].szomszédszám++;
            if (PályánVanE(sor - 0, oszlop + 1)) pálya[sor - 0, oszlop + 1].szomszédszám++;
            if (PályánVanE(sor - 0, oszlop - 1)) pálya[sor - 0, oszlop - 1].szomszédszám++;
            if (PályánVanE(sor + 1, oszlop - 0)) pálya[sor + 1, oszlop - 0].szomszédszám++;
            if (PályánVanE(sor - 1, oszlop - 0)) pálya[sor - 1, oszlop - 0].szomszédszám++;
        }
    }

    bool PályánVanE(int sor, int oszlop)
    {
        if ((sor < 0) || (oszlop < 0)) return false;
        if ((sor >= magasság) || (oszlop >= szélesség)) return false;
        return true;
    }

    void PályaGenerátor(int szélesség, int magasság)
    {
        this.szélesség = szélesség;
        this.magasság = magasság;

        pálya = new Mező[szélesség, magasság];
        for (int s = 0; s < magasság; s++)
        {
            for (int o = 0; o < szélesség; o++)
            {
                Mező m = new Mező(s,o);
                this.Controls.Add(m);
                pálya[s, o] = m;
                m.Click += new EventHandler(m_Click);
            }    
        }
    }

    void m_Click(object sender, EventArgs e)
    {
        Mező m = (Mező)sender;
        felfedés(m.sor, m.oszlop);
        m.FelFed();
    }

    void felfedés(int sor, int oszlop)
    {
        Mező mező = pálya[sor, oszlop];
        if (mező.szomszédszám == 0 && !mező.akna && !mező.felfedve)
        {
            mező.FelFed();
            if (PályánVanE(sor - 1, oszlop - 1)) felfedés(sor - 1, oszlop - 1);
            if (PályánVanE(sor - 1, oszlop + 1)) felfedés(sor - 1, oszlop + 1);
            if (PályánVanE(sor + 1, oszlop - 1)) felfedés(sor + 1, oszlop - 1);
            if (PályánVanE(sor + 1, oszlop + 1)) felfedés(sor + 1, oszlop + 1);
            if (PályánVanE(sor - 0, oszlop + 1)) felfedés(sor - 0, oszlop + 1);
            if (PályánVanE(sor - 0, oszlop - 1)) felfedés(sor - 0, oszlop - 1);
            if (PályánVanE(sor + 1, oszlop - 0)) felfedés(sor + 1, oszlop - 0);
            if (PályánVanE(sor - 1, oszlop - 0)) felfedés(sor - 1, oszlop - 0);
        }
    }
}
}
