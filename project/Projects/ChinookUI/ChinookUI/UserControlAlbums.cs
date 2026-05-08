using ChinookUI.ChinookModels;
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
    public partial class UserControlAlbums : UserControl
    {
        ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();
        public UserControlAlbums()
        {
            InitializeComponent();
        }

        private void UserControlAlbums_Load(object sender, EventArgs e)
        {
            artistBindingSource.DataSource = context.Artists.ToList();
        }

        private void artistBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (artistBindingSource.Current == null) return;
            //ToDO

            ChinookModels.Artist currentArtist = (ChinookModels.Artist)artistBindingSource.Current;

            var albums = from x in context.Albums
                         where x.ArtistId == currentArtist.ArtistId
                         select x;

            albumBindingSource.DataSource = albums.ToList();

        }

        private void albumBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            if (albumBindingSource.Current == null) return;
            //ToDO

            ChinookModels.Album currentAlbum = (ChinookModels.Album)albumBindingSource.Current;

            var tracks = from x in context.Tracks
                         where x.AlbumId == currentAlbum.AlbumId
                         select x;

            trackBindingSource.DataSource = tracks.ToList();

        }

        private void buttonAddArtist_Click(object sender, EventArgs e)
        {
            FormAddArtist formAddArtist = new FormAddArtist();

            var reply = formAddArtist.ShowDialog();

            if (reply == DialogResult.OK)
            {
                ChinookModels.Artist newArtist = new ChinookModels.Artist();
                newArtist.Name = formAddArtist.textBoxName.Text;

                context.Artists.Add(newArtist);

                //ToDO
                context.SaveChanges();

                artistBindingSource.DataSource = context.Artists.ToList();
            }
        }

        private void buttonDeleteArtist_Click(object sender, EventArgs e)
        {
            if (artistBindingSource.Current == null) { return; }

            var result = MessageBox.Show("Are you sure?", "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                ChinookModels.Artist artistToDelete = (ChinookModels.Artist)artistBindingSource.Current;

                context.Artists.Remove(artistToDelete);

                context.SaveChanges();
                //ToDO

                artistBindingSource.DataSource = context.Artists.ToList();

            }
        }

        private void buttonEditArtist_Click(object sender, EventArgs e)
        {
            if (artistBindingSource.Current == null) return;

            ChinookModels.Artist currentArtist = (ChinookModels.Artist)artistBindingSource.Current;

            FormEditArtist formEditArtist = new FormEditArtist();
            formEditArtist.CurrentArtist = currentArtist;

            formEditArtist.ShowDialog();
            artistBindingSource.ResetBindings(false);

        }

        private void buttonAddTrack_Click(object sender, EventArgs e)
        {
            if (albumBindingSource.Current == null) return;
            

            FormAddTrack formAddTrack = new FormAddTrack();
            var result = formAddTrack.ShowDialog();

            if (result == DialogResult.OK)
            {
                ChinookModels.Album currentAlbum = (ChinookModels.Album)albumBindingSource.Current;

                formAddTrack.NewTrack.AlbumId = currentAlbum.AlbumId;

                context.Tracks.Add(formAddTrack.NewTrack);

                context.SaveChanges(true);
                //ToDO

                var tracks = from x in context.Tracks
                             where x.AlbumId == currentAlbum.AlbumId
                             select x;

                trackBindingSource.DataSource = tracks.ToList();
            }
        }
    }
}
