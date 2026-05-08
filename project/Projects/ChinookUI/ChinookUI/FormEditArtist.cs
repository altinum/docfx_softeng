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
    public partial class FormEditArtist : Form
    {
        string OriginalName;
        public ChinookModels.Artist CurrentArtist { get; set; } = new ChinookModels.Artist();
        public FormEditArtist()
        {
            InitializeComponent();
        }

        private void FormEditArtist_Load(object sender, EventArgs e)
        {
            artistBindingSource.DataSource = CurrentArtist;
            OriginalName = CurrentArtist.Name;

        }

        private void button2_Click(object sender, EventArgs e)
        {
            CurrentArtist.Name = OriginalName;            
        }
    }
}
