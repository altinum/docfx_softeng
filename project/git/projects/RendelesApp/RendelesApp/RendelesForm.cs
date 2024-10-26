using Microsoft.EntityFrameworkCore;
using RendelesApp.Data;
using RendelesApp.Models;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.Design;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace RendelesApp
{
    public partial class RendelesForm : Form
    {
        private readonly RendelesDbContext _context;

        private const decimal AFA = .27m;

        public RendelesForm()
        {
            InitializeComponent();
            _context = new RendelesDbContext();
        }

        private void RendelesForm_Load(object sender, EventArgs e)
        {
            LoadUgyfelek();
            LoadCimek();

            termekBindingSource.DataSource = _context.Termek.ToList();

            //SetupDataBindings();
        }

        private void LoadUgyfelek()
        {
            var q = from x in _context.Ugyfel
                    where x.Nev.Contains(txtSzuro.Text) || x.Email.Contains(txtSzuro.Text)
                    orderby x.Nev
                    select x;

            ugyfelBindingSource.DataSource = q.ToList();

            ugyfelBindingSource.ResetCurrentItem();
        }

        private void LoadCimek()
        {
            var q = from x in _context.Cim
                    select new CimEgybenDTO
                    {
                        CimId = x.CimId,
                        CimEgyben = $"{x.Iranyitoszam}-{x.Varos}, {x.Orszag}: {x.Utca} {x.Hazszam}"
                    };

            cimEgybenDTOBindingSource.DataSource = q.ToList();
        }

        private void LoadRendelesek()
        {
            if (ugyfelBindingSource.Current == null) return;

            dgvTetelek.DataSource = null;

            var rendeles = from x in _context.Rendeles
                           where x.UgyfelId == ((Ugyfel)ugyfelBindingSource.Current).UgyfelId
                           select x;

            rendelesBindingSource.DataSource = rendeles.ToList();
            lbRendeles.DataSource = rendelesBindingSource;

            if (lbRendeles.Items.Count > 0)
            {
                lbRendeles.SelectedIndex = 0;
            }

            rendelesBindingSource.ResetCurrentItem();
        }

        private void txtSzuro_TextChanged(object sender, EventArgs e)
        {
            LoadUgyfelek();
        }

        private void lbUgyfelek_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadRendelesek();
        }

        private void btnUjRendeles_Click(object sender, EventArgs e)
        {
            if (ugyfelBindingSource.Current == null)
            {
                return;
            }

            var cim = ((Ugyfel)ugyfelBindingSource.Current).Lakcim ?? _context.Cim.FirstOrDefault();

            if (cim == null)
            {
                MessageBox.Show("Nincs cím megadva.");
                return;
            }

            var ujRendeles = new Rendeles()
            {
                UgyfelId = ((Ugyfel)ugyfelBindingSource.Current).UgyfelId,
                SzallitasiCimId = cim.CimId,
                RendelesDatum = DateTime.Now,
                Kedvezmeny = 0,
                Vegosszeg = 0,
                Statusz = "Feldolgozás alatt"
            };

            _context.Rendeles.Add(ujRendeles);
            Mentés();

            lblRendelesLabel.Text = $"A rendelés teljes értéke: {ujRendeles.Vegosszeg} Ft";

            LoadRendelesek();

            lbRendeles.SelectedItem = ujRendeles;
        }

        private void btnHozzaad_Click(object sender, EventArgs e)
        {
            if (!int.TryParse(txtMennyiseg.Text, out int mennyiseg) || mennyiseg <= 0)
            {
                MessageBox.Show("Rossz mennyiség!");
                return;
            }

            if (rendelesBindingSource.Current == null || termekBindingSource.Current == null)
            {
                MessageBox.Show("Nincs kiválasztva rendelés vagy termék!");
                return;
            }

            var kivalasztottTermek = (Termek)termekBindingSource.Current;

            decimal bruttoAr = kivalasztottTermek.AktualisAr * (1 + AFA);

            var ujTetel = new RendelesTetel
            {
                RendelesId = ((Rendeles)rendelesBindingSource.Current).RendelesId,
                TermekId = kivalasztottTermek.TermekId,
                Mennyiseg = mennyiseg,
                EgysegAr = kivalasztottTermek.AktualisAr,
                Afa = AFA,
                NettoAr = kivalasztottTermek.AktualisAr * mennyiseg,
                BruttoAr = bruttoAr
            };

            _context.RendelesTetel.Add(ujTetel);
            Mentés();

            LoadRendelesTetel();

            //UpdateVegosszeg();
        }

        private void LoadRendelesTetel()
        {
            if (rendelesBindingSource.Current == null) return;

            var q = from rt in _context.RendelesTetel
                    where rt.RendelesId == ((Rendeles)rendelesBindingSource.Current).RendelesId
                    select new RendelesTetelDTO
                    {
                        TetelId = rt.TetelId,
                        TermekNev = rt.Termek.Nev,
                        Mennyiseg = rt.Mennyiseg,
                        EgysegAr = rt.EgysegAr,
                        Afa = rt.Afa,
                        NettoAr = rt.NettoAr,
                        BruttoAr = rt.BruttoAr
                    };

            dgvTetelek.DataSource = q.ToList();

            UpdateVegosszeg();
        }

        private void UpdateVegosszeg()
        {
            if (rendelesBindingSource.Current == null) return;

            var kivalasztottRendeles = (Rendeles)rendelesBindingSource.Current;

            var vegosszeg = _context.RendelesTetel
                .Where(rt => rt.RendelesId == kivalasztottRendeles.RendelesId)
                .Sum(rt => rt.Mennyiseg * rt.BruttoAr);

            kivalasztottRendeles.Vegosszeg = vegosszeg * (1 - kivalasztottRendeles.Kedvezmeny);

            Mentés();

            rendelesBindingSource.ResetBindings(false);
        }

        private void btnMentes_Click(object sender, EventArgs e)
        {
            rendelesBindingSource.EndEdit();
            Mentés();
        }

        private void btnTorol_Click(object sender, EventArgs e)
        {
            if (dgvTetelek.SelectedRows.Count == 0)
            {
                MessageBox.Show("Nincs kiválasztva tétel!");
                return;
            }

            var selectedTetel = dgvTetelek.SelectedRows[0].DataBoundItem as RendelesTetelDTO;

            var tetel = (from rt in _context.RendelesTetel
                         where rt.TetelId == selectedTetel!.TetelId
                         select rt).FirstOrDefault();

            if (tetel != null)
            {
                _context.RendelesTetel.Remove(tetel);
                Mentés();

                LoadRendelesTetel();
                //UpdateVegosszeg();
            }
        }

        private void lbRendeles_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadRendelesTetel();
            //UpdateVegosszeg();
        }

        void Mentés()
        {
            try
            {
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnExcel_Click(object sender, EventArgs e)
        {
            ExcelExport excelExport = new ExcelExport();
            excelExport.CreateExcel();
        }
    }

    public class CimEgybenDTO
    {
        public int CimId { get; set; }
        public string? CimEgyben { get; set; }
    }

    public class RendelesTetelDTO
    {
        public int TetelId { get; set; }
        public string? TermekNev { get; set; }
        public int Mennyiseg { get; set; }
        public decimal EgysegAr { get; set; }
        public decimal Afa { get; set; }
        public decimal NettoAr { get; set; }
        public decimal BruttoAr { get; set; }
    }
}
