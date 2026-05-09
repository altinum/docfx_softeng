using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChinookUI
{
    public partial class FormInvoices : Form
    {
        public ChinookModels.Customer CurrentCustomer { get; set; }

        ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();
        public FormInvoices()
        {
            InitializeComponent();
        }

        private void FormInvoices_Load(object sender, EventArgs e)
        {
            LoadInvoices();
            trackBindingSource.DataSource = context.Tracks.ToList();

        }

        private void LoadInvoices()
        {
            var invoices = from x in context.Invoices
                           where x.CustomerId == CurrentCustomer.CustomerId
                           select x;

            invoiceBindingSource.DataSource = invoices.ToList();
        }

        private void buttonNewInvoice_Click(object sender, EventArgs e)
        {
            ChinookModels.Invoice newInvoice = new ChinookModels.Invoice()
            {
                CustomerId = CurrentCustomer.CustomerId,
                InvoiceDate = DateTime.Now,
            };

            //newInvoice.CustomerId = CurrentCustomer.CustomerId;
            //newInvoice.InvoiceDate = DateTime.Now;

            context.Invoices.Add(newInvoice);

            context.SaveChanges();
            //ToDO
            LoadInvoices();
        }

        private void buttonDeleteInvoice_Click(object sender, EventArgs e)
        {
            if (invoiceBindingSource.Current == null) return;
            var result = MessageBox.Show("Are you sure?", "Conformation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                ChinookModels.Invoice invoiceToDelete = (ChinookModels.Invoice)invoiceBindingSource.Current;

                context.Invoices.Remove(invoiceToDelete);

                context.SaveChanges();

                LoadInvoices();
            }
        }

        private void invoiceBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (invoiceBindingSource.Current == null) return;

            ChinookModels.Invoice selectedInvoice = (ChinookModels.Invoice)invoiceBindingSource.Current;

            LoadInvoiceLines(selectedInvoice);

        }

        private void LoadInvoiceLines(ChinookModels.Invoice selectedInvoice)
        {
            var invoiceLines = from x in context.InvoiceLines
                               where x.InvoiceId == selectedInvoice.InvoiceId
                               select new InvoiceLineDeatiled
                               {
                                   TrackName = x.Track.Name,
                                   Album = x.Track.Album.Title,
                                   Quantity = x.Quantity,
                                   UnitPrice = x.UnitPrice,
                                   LineTotal = x.Quantity * x.UnitPrice,
                                   ReferenceToTheOriginalInvoiceLine = x
                               };

            invoiceLineDeatiledBindingSource.DataSource = invoiceLines.ToList();
        }

        private void buttonAddTrack_Click(object sender, EventArgs e)
        {
            if (trackBindingSource.Current == null) return;
            if (invoiceBindingSource.Current == null) return;

            ChinookModels.Track selectedTrack = (ChinookModels.Track)trackBindingSource.Current;
            ChinookModels.Invoice selectedInvoice = (ChinookModels.Invoice)invoiceBindingSource.Current;

            ChinookModels.InvoiceLine newInvoiceLine = new ChinookModels.InvoiceLine()
            {
                InvoiceId = selectedInvoice.InvoiceId,
                TrackId = selectedTrack.TrackId,
                UnitPrice = selectedTrack.UnitPrice,
                Quantity = (int)numericUpDown1.Value
            };

            context.InvoiceLines.Add(newInvoiceLine);

            context.SaveChanges();
            //ToDO
            LoadInvoiceLines(selectedInvoice);


        }

        private void buttonDelete_Click(object sender, EventArgs e)
        {
            if (invoiceLineDeatiledBindingSource.Current == null) return;

            var result = MessageBox.Show("Are you sure?", "Conformation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                InvoiceLineDeatiled invoiceLineDeatiled = (InvoiceLineDeatiled)invoiceLineDeatiledBindingSource.Current;

                context.InvoiceLines.Remove(invoiceLineDeatiled.ReferenceToTheOriginalInvoiceLine);

                context.SaveChanges();

                ChinookModels.Invoice selectedInvoice = (ChinookModels.Invoice)invoiceBindingSource.Current;
                LoadInvoiceLines(selectedInvoice);
            }
        }

        public class InvoiceLineDeatiled
        {
            public string TrackName { get; set; } = string.Empty;
            public string Album { get; set; } = string.Empty;
            public int Quantity { get; set; }
            public decimal UnitPrice { get; set; }
            public decimal LineTotal { get; set; }
            public ChinookModels.InvoiceLine ReferenceToTheOriginalInvoiceLine { get; set; }
        }
       
    }
}
