using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ChinookUI
{
    public partial class UserControlCustomers : UserControl
    {
        ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();
        public UserControlCustomers()
        {
            InitializeComponent();
        }

        private void UserControlCustomers_Load(object sender, EventArgs e)
        {
            customerBindingSource.DataSource = context.Customers.ToList();
        }

        private void buttonInvoices_Click(object sender, EventArgs e)
        {
            if (customerBindingSource.Current == null) return;

            ChinookModels.Customer selectedCustomer = (ChinookModels.Customer)customerBindingSource.Current;

            FormInvoices formInvoices = new FormInvoices();
            formInvoices.CurrentCustomer = selectedCustomer;

            formInvoices.ShowDialog();
        }
    }
}
