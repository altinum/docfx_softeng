namespace ChinookUI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void buttonAlbums_Click(object sender, EventArgs e)
        {
            UserControlAlbums uca = new UserControlAlbums();
            panelRight.Controls.Clear();
            panelRight.Controls.Add(uca);
            uca.Dock = DockStyle.Fill;


        }
    }
}
