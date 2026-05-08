namespace ChinookUI
{
    partial class UserControlAlbums
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            components = new System.ComponentModel.Container();
            label1 = new Label();
            listBox1 = new ListBox();
            artistBindingSource = new BindingSource(components);
            listBox2 = new ListBox();
            albumBindingSource = new BindingSource(components);
            listBox3 = new ListBox();
            trackBindingSource = new BindingSource(components);
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            buttonAddArtist = new Button();
            buttonDeleteArtist = new Button();
            buttonEditArtist = new Button();
            button2 = new Button();
            buttonAddTrack = new Button();
            ((System.ComponentModel.ISupportInitialize)artistBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)albumBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 22F);
            label1.Location = new Point(3, 0);
            label1.Name = "label1";
            label1.Size = new Size(204, 70);
            label1.TabIndex = 0;
            label1.Text = "Albums";
            // 
            // listBox1
            // 
            listBox1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            listBox1.DataSource = artistBindingSource;
            listBox1.DisplayMember = "Name";
            listBox1.FormattingEnabled = true;
            listBox1.ItemHeight = 30;
            listBox1.Location = new Point(3, 118);
            listBox1.Name = "listBox1";
            listBox1.Size = new Size(294, 424);
            listBox1.TabIndex = 1;
            // 
            // artistBindingSource
            // 
            artistBindingSource.DataSource = typeof(ChinookModels.Artist);
            artistBindingSource.CurrentChanged += artistBindingSource_CurrentChanged;
            // 
            // listBox2
            // 
            listBox2.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            listBox2.DataSource = albumBindingSource;
            listBox2.DisplayMember = "Title";
            listBox2.FormattingEnabled = true;
            listBox2.ItemHeight = 30;
            listBox2.Location = new Point(303, 118);
            listBox2.Name = "listBox2";
            listBox2.Size = new Size(294, 424);
            listBox2.TabIndex = 1;
            // 
            // albumBindingSource
            // 
            albumBindingSource.DataSource = typeof(ChinookModels.Album);
            albumBindingSource.CurrentChanged += albumBindingSource_CurrentChanged;
            // 
            // listBox3
            // 
            listBox3.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            listBox3.DataSource = trackBindingSource;
            listBox3.DisplayMember = "Name";
            listBox3.FormattingEnabled = true;
            listBox3.ItemHeight = 30;
            listBox3.Location = new Point(603, 118);
            listBox3.Name = "listBox3";
            listBox3.Size = new Size(294, 424);
            listBox3.TabIndex = 1;
            // 
            // trackBindingSource
            // 
            trackBindingSource.DataSource = typeof(ChinookModels.Track);
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(0, 85);
            label2.Name = "label2";
            label2.Size = new Size(76, 30);
            label2.TabIndex = 2;
            label2.Text = "Artists:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(303, 85);
            label3.Name = "label3";
            label3.Size = new Size(88, 30);
            label3.TabIndex = 2;
            label3.Text = "Albums:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(603, 85);
            label4.Name = "label4";
            label4.Size = new Size(74, 30);
            label4.TabIndex = 2;
            label4.Text = "Tracks:";
            // 
            // buttonAddArtist
            // 
            buttonAddArtist.Location = new Point(214, 548);
            buttonAddArtist.Name = "buttonAddArtist";
            buttonAddArtist.Size = new Size(83, 39);
            buttonAddArtist.TabIndex = 3;
            buttonAddArtist.Text = "Add";
            buttonAddArtist.UseVisualStyleBackColor = true;
            buttonAddArtist.Click += buttonAddArtist_Click;
            // 
            // buttonDeleteArtist
            // 
            buttonDeleteArtist.Location = new Point(107, 548);
            buttonDeleteArtist.Name = "buttonDeleteArtist";
            buttonDeleteArtist.Size = new Size(100, 40);
            buttonDeleteArtist.TabIndex = 4;
            buttonDeleteArtist.Text = "Delete";
            buttonDeleteArtist.UseVisualStyleBackColor = true;
            buttonDeleteArtist.Click += buttonDeleteArtist_Click;
            // 
            // buttonEditArtist
            // 
            buttonEditArtist.Location = new Point(3, 547);
            buttonEditArtist.Name = "buttonEditArtist";
            buttonEditArtist.Size = new Size(98, 40);
            buttonEditArtist.TabIndex = 5;
            buttonEditArtist.Text = "Edit";
            buttonEditArtist.UseVisualStyleBackColor = true;
            buttonEditArtist.Click += buttonEditArtist_Click;
            // 
            // button2
            // 
            button2.Location = new Point(0, 548);
            button2.Name = "button2";
            button2.Size = new Size(98, 40);
            button2.TabIndex = 5;
            button2.Text = "Edit";
            button2.UseVisualStyleBackColor = true;
            button2.Click += buttonEditArtist_Click;
            // 
            // buttonAddTrack
            // 
            buttonAddTrack.Location = new Point(819, 549);
            buttonAddTrack.Name = "buttonAddTrack";
            buttonAddTrack.Size = new Size(78, 40);
            buttonAddTrack.TabIndex = 6;
            buttonAddTrack.Text = "Add";
            buttonAddTrack.UseVisualStyleBackColor = true;
            buttonAddTrack.Click += buttonAddTrack_Click;
            // 
            // UserControlAlbums
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            Controls.Add(buttonAddTrack);
            Controls.Add(button2);
            Controls.Add(buttonEditArtist);
            Controls.Add(buttonDeleteArtist);
            Controls.Add(buttonAddArtist);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(listBox3);
            Controls.Add(listBox2);
            Controls.Add(listBox1);
            Controls.Add(label1);
            Name = "UserControlAlbums";
            Size = new Size(1287, 645);
            Load += UserControlAlbums_Load;
            ((System.ComponentModel.ISupportInitialize)artistBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)albumBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private ListBox listBox1;
        private BindingSource artistBindingSource;
        private ListBox listBox2;
        private ListBox listBox3;
        private Label label2;
        private Label label3;
        private Label label4;
        private BindingSource albumBindingSource;
        private BindingSource trackBindingSource;
        private Button buttonAddArtist;
        private Button buttonDeleteArtist;
        private Button buttonEditArtist;
        private Button button2;
        private Button buttonAddTrack;
    }
}
