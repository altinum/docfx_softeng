namespace RendelesApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            TermekKategoriaForm termekKategoriaForm = new TermekKategoriaForm();
            termekKategoriaForm.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            UgyfelListaForm kezeloForm = new();
            kezeloForm.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            RendelesForm rendelesForm = new();
            rendelesForm.ShowDialog();
        }
    }
}
