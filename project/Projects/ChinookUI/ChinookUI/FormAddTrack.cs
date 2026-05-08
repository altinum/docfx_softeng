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
    public partial class FormAddTrack : Form
    {
        public ChinookModels.Track NewTrack { get; set; } = new ChinookModels.Track();

        ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();

        public FormAddTrack()
        {
            InitializeComponent();
        }

        private void FormAddTrack_Load(object sender, EventArgs e)
        {
            trackBindingSource.DataSource = NewTrack;

            mediaTypeBindingSource.DataSource = context.MediaTypes.ToList();
            genreBindingSource.DataSource = context.Genres.ToList();
        }
    }
}
