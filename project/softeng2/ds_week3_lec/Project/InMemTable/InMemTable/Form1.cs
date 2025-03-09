using System.ComponentModel;

namespace InMemTable
{
    public partial class Form1 : Form
    {
        BindingList<Customer> customers = new BindingList<Customer>();
        public Form1()
        {
            InitializeComponent();
            dataGridView1.DataSource = customers;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //customers.Add(new Customer("John", "Doe", new DateTime(1980, 1, 1)));
            customers.Add(new Customer("John", "Doe", dateTimePickerDateOfBirth.Value));

        }

        private void btDelete_Click(object sender, EventArgs e)
        {
            customers.RemoveAt(dataGridView1.SelectedRows[0].Index);
        }
    }
}
