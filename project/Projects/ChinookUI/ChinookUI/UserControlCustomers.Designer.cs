namespace ChinookUI
{
    partial class UserControlCustomers
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
            dataGridView1 = new DataGridView();
            customerIdDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            firstNameDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            lastNameDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            companyDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            addressDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            cityDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            stateDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            countryDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            postalCodeDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            phoneDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            faxDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            emailDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            supportRepIdDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            invoicesDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            supportRepDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            customerBindingSource = new BindingSource(components);
            buttonInvoices = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)customerBindingSource).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 22F);
            label1.Location = new Point(3, 0);
            label1.Name = "label1";
            label1.Size = new Size(272, 70);
            label1.TabIndex = 0;
            label1.Text = "Custumers";
            // 
            // dataGridView1
            // 
            dataGridView1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { customerIdDataGridViewTextBoxColumn, firstNameDataGridViewTextBoxColumn, lastNameDataGridViewTextBoxColumn, companyDataGridViewTextBoxColumn, addressDataGridViewTextBoxColumn, cityDataGridViewTextBoxColumn, stateDataGridViewTextBoxColumn, countryDataGridViewTextBoxColumn, postalCodeDataGridViewTextBoxColumn, phoneDataGridViewTextBoxColumn, faxDataGridViewTextBoxColumn, emailDataGridViewTextBoxColumn, supportRepIdDataGridViewTextBoxColumn, invoicesDataGridViewTextBoxColumn, supportRepDataGridViewTextBoxColumn });
            dataGridView1.DataSource = customerBindingSource;
            dataGridView1.Location = new Point(0, 83);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 72;
            dataGridView1.Size = new Size(1144, 558);
            dataGridView1.TabIndex = 1;
            // 
            // customerIdDataGridViewTextBoxColumn
            // 
            customerIdDataGridViewTextBoxColumn.DataPropertyName = "CustomerId";
            customerIdDataGridViewTextBoxColumn.HeaderText = "CustomerId";
            customerIdDataGridViewTextBoxColumn.MinimumWidth = 9;
            customerIdDataGridViewTextBoxColumn.Name = "customerIdDataGridViewTextBoxColumn";
            customerIdDataGridViewTextBoxColumn.Width = 175;
            // 
            // firstNameDataGridViewTextBoxColumn
            // 
            firstNameDataGridViewTextBoxColumn.DataPropertyName = "FirstName";
            firstNameDataGridViewTextBoxColumn.HeaderText = "FirstName";
            firstNameDataGridViewTextBoxColumn.MinimumWidth = 9;
            firstNameDataGridViewTextBoxColumn.Name = "firstNameDataGridViewTextBoxColumn";
            firstNameDataGridViewTextBoxColumn.Width = 175;
            // 
            // lastNameDataGridViewTextBoxColumn
            // 
            lastNameDataGridViewTextBoxColumn.DataPropertyName = "LastName";
            lastNameDataGridViewTextBoxColumn.HeaderText = "LastName";
            lastNameDataGridViewTextBoxColumn.MinimumWidth = 9;
            lastNameDataGridViewTextBoxColumn.Name = "lastNameDataGridViewTextBoxColumn";
            lastNameDataGridViewTextBoxColumn.Width = 175;
            // 
            // companyDataGridViewTextBoxColumn
            // 
            companyDataGridViewTextBoxColumn.DataPropertyName = "Company";
            companyDataGridViewTextBoxColumn.HeaderText = "Company";
            companyDataGridViewTextBoxColumn.MinimumWidth = 9;
            companyDataGridViewTextBoxColumn.Name = "companyDataGridViewTextBoxColumn";
            companyDataGridViewTextBoxColumn.Width = 175;
            // 
            // addressDataGridViewTextBoxColumn
            // 
            addressDataGridViewTextBoxColumn.DataPropertyName = "Address";
            addressDataGridViewTextBoxColumn.HeaderText = "Address";
            addressDataGridViewTextBoxColumn.MinimumWidth = 9;
            addressDataGridViewTextBoxColumn.Name = "addressDataGridViewTextBoxColumn";
            addressDataGridViewTextBoxColumn.Width = 175;
            // 
            // cityDataGridViewTextBoxColumn
            // 
            cityDataGridViewTextBoxColumn.DataPropertyName = "City";
            cityDataGridViewTextBoxColumn.HeaderText = "City";
            cityDataGridViewTextBoxColumn.MinimumWidth = 9;
            cityDataGridViewTextBoxColumn.Name = "cityDataGridViewTextBoxColumn";
            cityDataGridViewTextBoxColumn.Width = 175;
            // 
            // stateDataGridViewTextBoxColumn
            // 
            stateDataGridViewTextBoxColumn.DataPropertyName = "State";
            stateDataGridViewTextBoxColumn.HeaderText = "State";
            stateDataGridViewTextBoxColumn.MinimumWidth = 9;
            stateDataGridViewTextBoxColumn.Name = "stateDataGridViewTextBoxColumn";
            stateDataGridViewTextBoxColumn.Width = 175;
            // 
            // countryDataGridViewTextBoxColumn
            // 
            countryDataGridViewTextBoxColumn.DataPropertyName = "Country";
            countryDataGridViewTextBoxColumn.HeaderText = "Country";
            countryDataGridViewTextBoxColumn.MinimumWidth = 9;
            countryDataGridViewTextBoxColumn.Name = "countryDataGridViewTextBoxColumn";
            countryDataGridViewTextBoxColumn.Width = 175;
            // 
            // postalCodeDataGridViewTextBoxColumn
            // 
            postalCodeDataGridViewTextBoxColumn.DataPropertyName = "PostalCode";
            postalCodeDataGridViewTextBoxColumn.HeaderText = "PostalCode";
            postalCodeDataGridViewTextBoxColumn.MinimumWidth = 9;
            postalCodeDataGridViewTextBoxColumn.Name = "postalCodeDataGridViewTextBoxColumn";
            postalCodeDataGridViewTextBoxColumn.Width = 175;
            // 
            // phoneDataGridViewTextBoxColumn
            // 
            phoneDataGridViewTextBoxColumn.DataPropertyName = "Phone";
            phoneDataGridViewTextBoxColumn.HeaderText = "Phone";
            phoneDataGridViewTextBoxColumn.MinimumWidth = 9;
            phoneDataGridViewTextBoxColumn.Name = "phoneDataGridViewTextBoxColumn";
            phoneDataGridViewTextBoxColumn.Width = 175;
            // 
            // faxDataGridViewTextBoxColumn
            // 
            faxDataGridViewTextBoxColumn.DataPropertyName = "Fax";
            faxDataGridViewTextBoxColumn.HeaderText = "Fax";
            faxDataGridViewTextBoxColumn.MinimumWidth = 9;
            faxDataGridViewTextBoxColumn.Name = "faxDataGridViewTextBoxColumn";
            faxDataGridViewTextBoxColumn.Width = 175;
            // 
            // emailDataGridViewTextBoxColumn
            // 
            emailDataGridViewTextBoxColumn.DataPropertyName = "Email";
            emailDataGridViewTextBoxColumn.HeaderText = "Email";
            emailDataGridViewTextBoxColumn.MinimumWidth = 9;
            emailDataGridViewTextBoxColumn.Name = "emailDataGridViewTextBoxColumn";
            emailDataGridViewTextBoxColumn.Width = 175;
            // 
            // supportRepIdDataGridViewTextBoxColumn
            // 
            supportRepIdDataGridViewTextBoxColumn.DataPropertyName = "SupportRepId";
            supportRepIdDataGridViewTextBoxColumn.HeaderText = "SupportRepId";
            supportRepIdDataGridViewTextBoxColumn.MinimumWidth = 9;
            supportRepIdDataGridViewTextBoxColumn.Name = "supportRepIdDataGridViewTextBoxColumn";
            supportRepIdDataGridViewTextBoxColumn.Width = 175;
            // 
            // invoicesDataGridViewTextBoxColumn
            // 
            invoicesDataGridViewTextBoxColumn.DataPropertyName = "Invoices";
            invoicesDataGridViewTextBoxColumn.HeaderText = "Invoices";
            invoicesDataGridViewTextBoxColumn.MinimumWidth = 9;
            invoicesDataGridViewTextBoxColumn.Name = "invoicesDataGridViewTextBoxColumn";
            invoicesDataGridViewTextBoxColumn.Width = 175;
            // 
            // supportRepDataGridViewTextBoxColumn
            // 
            supportRepDataGridViewTextBoxColumn.DataPropertyName = "SupportRep";
            supportRepDataGridViewTextBoxColumn.HeaderText = "SupportRep";
            supportRepDataGridViewTextBoxColumn.MinimumWidth = 9;
            supportRepDataGridViewTextBoxColumn.Name = "supportRepDataGridViewTextBoxColumn";
            supportRepDataGridViewTextBoxColumn.Width = 175;
            // 
            // customerBindingSource
            // 
            customerBindingSource.DataSource = typeof(ChinookModels.Customer);
            // 
            // buttonInvoices
            // 
            buttonInvoices.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            buttonInvoices.Location = new Point(1016, 656);
            buttonInvoices.Name = "buttonInvoices";
            buttonInvoices.Size = new Size(131, 40);
            buttonInvoices.TabIndex = 2;
            buttonInvoices.Text = "Invoices";
            buttonInvoices.UseVisualStyleBackColor = true;
            buttonInvoices.Click += buttonInvoices_Click;
            // 
            // UserControlCustomers
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            Controls.Add(buttonInvoices);
            Controls.Add(dataGridView1);
            Controls.Add(label1);
            Name = "UserControlCustomers";
            Size = new Size(1147, 714);
            Load += UserControlCustomers_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ((System.ComponentModel.ISupportInitialize)customerBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private DataGridView dataGridView1;
        private Button buttonInvoices;
        private DataGridViewTextBoxColumn customerIdDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn firstNameDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn lastNameDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn companyDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn addressDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn cityDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn stateDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn countryDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn postalCodeDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn phoneDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn faxDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn supportRepIdDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn invoicesDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn supportRepDataGridViewTextBoxColumn;
        private BindingSource customerBindingSource;
    }
}
