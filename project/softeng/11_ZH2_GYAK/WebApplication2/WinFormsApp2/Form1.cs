using WinFormsApp2.BookModels;

namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        FunnyDatabaseContext context = new FunnyDatabaseContext();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            bookBindingSource.DataSource = context.Books.ToList();
        }
    }
}
