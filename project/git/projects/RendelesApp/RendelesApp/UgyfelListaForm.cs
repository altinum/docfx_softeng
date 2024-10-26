using Microsoft.EntityFrameworkCore;
using RendelesApp.Data;
using RendelesApp.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RendelesApp
{
    public partial class UgyfelListaForm : Form
    {
        private RendelesDbContext _context;
        private BindingList<Ugyfel>? ugyfelBindingList;

        public UgyfelListaForm()
        {
            InitializeComponent();
            _context = new RendelesDbContext();
            _context.Ugyfel.Load();
        }

        private void UgyfelKezeloForm_Load(object sender, EventArgs e)
        {
            ugyfelBindingList = _context.Ugyfel.Local.ToBindingList();
            ugyfelBindingSource.DataSource = ugyfelBindingList;
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

        private void buttonUjUgyfel_Click(object sender, EventArgs e)
        {
            UgyfelSzerkesztesForm ujUgyfelForm = new UgyfelSzerkesztesForm();
            if (ujUgyfelForm.ShowDialog() == DialogResult.OK)
            {
                ugyfelBindingList.Add(ujUgyfelForm.SzerkesztettÜgyfél);
                Mentés(); //Rögtön megkapja a DGV-ben az ID-t, nem kell refresh                
            };

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            ugyfelBindingSource.Filter = $"Nev LIKE '%{textBox1.Text}%'";

            //Ez is jópofa, maradhat a doksiban :) 

            //string filterString = textBox1.Text.ToLower();                      
            //ugyfelBindingSource.DataSource = from u in ugyfelBindingList
            //                                 where u.Nev.ToLower().Contains(filterString) ||
            //                                 u.Email.ToLower().Contains(filterString) ||
            //                                 (u.Telefonszam != null && u.Telefonszam.Contains(filterString))
            //                                 orderby u.UgyfelId
            //                                 select u;
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            //if (dataGridView1.SelectedRows.Count > 0 && dataGridView1.SelectedRows[0].DataBoundItem is Ugyfel ugyfel)
            
            if (ugyfelBindingSource.Current == null) return;

            UgyfelSzerkesztesForm szerkesztesForm = new UgyfelSzerkesztesForm(ugyfelBindingSource.Current as Ugyfel);
            //Rögtön frissül a DGV-ban is, nem kell reolad, refresh, egyéb. 
            //Az EndEdit() triggereli a BindingSource-ot és a DataGridView-t, hogy frissítse magát

            if (szerkesztesForm.ShowDialog() == DialogResult.OK)
            {
                Mentés();
            }
            else
            {
                _context.Ugyfel.Load();
                //Ha mégse mentjük el, akkor visszaállítjuk az eredeti értékeket
                //Az adatkötés megoldja a többit
            }
            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            //Megerősítő üzi lehet :)
            if (ugyfelBindingSource.Current == null) return;
            ugyfelBindingSource.RemoveCurrent();
            Mentés();

        }
    }
}
