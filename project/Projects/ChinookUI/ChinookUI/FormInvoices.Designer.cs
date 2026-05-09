namespace ChinookUI
{
    partial class FormInvoices
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            components = new System.ComponentModel.Container();
            DataGridViewCellStyle dataGridViewCellStyle1 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle3 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle4 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle5 = new DataGridViewCellStyle();
            labelCustomerName = new Label();
            dataGridView1 = new DataGridView();
            invoiceIdDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            customerIdDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            invoiceDateDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            billingAddressDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            billingCityDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            billingStateDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            billingCountryDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            billingPostalCodeDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            totalDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            customerDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            invoiceLinesDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            invoiceBindingSource = new BindingSource(components);
            buttonNewInvoice = new Button();
            buttonDeleteInvoice = new Button();
            dataGridViewInvoiceLines = new DataGridView();
            trackNameDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            albumDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            quantityDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            unitPriceDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            lineTotalDataGridViewTextBoxColumn = new DataGridViewTextBoxColumn();
            invoiceLineDeatiledBindingSource = new BindingSource(components);
            listBox1 = new ListBox();
            trackBindingSource = new BindingSource(components);
            numericUpDown1 = new NumericUpDown();
            buttonAddTrack = new Button();
            buttonDelete = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)invoiceBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)dataGridViewInvoiceLines).BeginInit();
            ((System.ComponentModel.ISupportInitialize)invoiceLineDeatiledBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)numericUpDown1).BeginInit();
            SuspendLayout();
            // 
            // labelCustomerName
            // 
            labelCustomerName.AutoSize = true;
            labelCustomerName.Font = new Font("Segoe UI", 22F);
            labelCustomerName.Location = new Point(-2, -3);
            labelCustomerName.Name = "labelCustomerName";
            labelCustomerName.Size = new Size(168, 70);
            labelCustomerName.TabIndex = 0;
            labelCustomerName.Text = "label1";
            // 
            // dataGridView1
            // 
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            dataGridView1.AutoGenerateColumns = false;
            dataGridViewCellStyle1.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = SystemColors.Control;
            dataGridViewCellStyle1.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle1.ForeColor = SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = DataGridViewTriState.True;
            dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { invoiceIdDataGridViewTextBoxColumn, customerIdDataGridViewTextBoxColumn, invoiceDateDataGridViewTextBoxColumn, billingAddressDataGridViewTextBoxColumn, billingCityDataGridViewTextBoxColumn, billingStateDataGridViewTextBoxColumn, billingCountryDataGridViewTextBoxColumn, billingPostalCodeDataGridViewTextBoxColumn, totalDataGridViewTextBoxColumn, customerDataGridViewTextBoxColumn, invoiceLinesDataGridViewTextBoxColumn });
            dataGridView1.DataSource = invoiceBindingSource;
            dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = SystemColors.Window;
            dataGridViewCellStyle2.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle2.ForeColor = SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = DataGridViewTriState.False;
            dataGridView1.DefaultCellStyle = dataGridViewCellStyle2;
            dataGridView1.Location = new Point(-2, 68);
            dataGridView1.Margin = new Padding(1);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersWidth = 72;
            dataGridView1.Size = new Size(1994, 337);
            dataGridView1.TabIndex = 1;
            // 
            // invoiceIdDataGridViewTextBoxColumn
            // 
            invoiceIdDataGridViewTextBoxColumn.DataPropertyName = "InvoiceId";
            invoiceIdDataGridViewTextBoxColumn.HeaderText = "InvoiceId";
            invoiceIdDataGridViewTextBoxColumn.MinimumWidth = 9;
            invoiceIdDataGridViewTextBoxColumn.Name = "invoiceIdDataGridViewTextBoxColumn";
            invoiceIdDataGridViewTextBoxColumn.ReadOnly = true;
            invoiceIdDataGridViewTextBoxColumn.Width = 175;
            // 
            // customerIdDataGridViewTextBoxColumn
            // 
            customerIdDataGridViewTextBoxColumn.DataPropertyName = "CustomerId";
            customerIdDataGridViewTextBoxColumn.HeaderText = "CustomerId";
            customerIdDataGridViewTextBoxColumn.MinimumWidth = 9;
            customerIdDataGridViewTextBoxColumn.Name = "customerIdDataGridViewTextBoxColumn";
            customerIdDataGridViewTextBoxColumn.ReadOnly = true;
            customerIdDataGridViewTextBoxColumn.Width = 175;
            // 
            // invoiceDateDataGridViewTextBoxColumn
            // 
            invoiceDateDataGridViewTextBoxColumn.DataPropertyName = "InvoiceDate";
            invoiceDateDataGridViewTextBoxColumn.HeaderText = "InvoiceDate";
            invoiceDateDataGridViewTextBoxColumn.MinimumWidth = 9;
            invoiceDateDataGridViewTextBoxColumn.Name = "invoiceDateDataGridViewTextBoxColumn";
            invoiceDateDataGridViewTextBoxColumn.ReadOnly = true;
            invoiceDateDataGridViewTextBoxColumn.Width = 175;
            // 
            // billingAddressDataGridViewTextBoxColumn
            // 
            billingAddressDataGridViewTextBoxColumn.DataPropertyName = "BillingAddress";
            billingAddressDataGridViewTextBoxColumn.HeaderText = "BillingAddress";
            billingAddressDataGridViewTextBoxColumn.MinimumWidth = 9;
            billingAddressDataGridViewTextBoxColumn.Name = "billingAddressDataGridViewTextBoxColumn";
            billingAddressDataGridViewTextBoxColumn.ReadOnly = true;
            billingAddressDataGridViewTextBoxColumn.Width = 175;
            // 
            // billingCityDataGridViewTextBoxColumn
            // 
            billingCityDataGridViewTextBoxColumn.DataPropertyName = "BillingCity";
            billingCityDataGridViewTextBoxColumn.HeaderText = "BillingCity";
            billingCityDataGridViewTextBoxColumn.MinimumWidth = 9;
            billingCityDataGridViewTextBoxColumn.Name = "billingCityDataGridViewTextBoxColumn";
            billingCityDataGridViewTextBoxColumn.ReadOnly = true;
            billingCityDataGridViewTextBoxColumn.Width = 175;
            // 
            // billingStateDataGridViewTextBoxColumn
            // 
            billingStateDataGridViewTextBoxColumn.DataPropertyName = "BillingState";
            billingStateDataGridViewTextBoxColumn.HeaderText = "BillingState";
            billingStateDataGridViewTextBoxColumn.MinimumWidth = 9;
            billingStateDataGridViewTextBoxColumn.Name = "billingStateDataGridViewTextBoxColumn";
            billingStateDataGridViewTextBoxColumn.ReadOnly = true;
            billingStateDataGridViewTextBoxColumn.Width = 175;
            // 
            // billingCountryDataGridViewTextBoxColumn
            // 
            billingCountryDataGridViewTextBoxColumn.DataPropertyName = "BillingCountry";
            billingCountryDataGridViewTextBoxColumn.HeaderText = "BillingCountry";
            billingCountryDataGridViewTextBoxColumn.MinimumWidth = 9;
            billingCountryDataGridViewTextBoxColumn.Name = "billingCountryDataGridViewTextBoxColumn";
            billingCountryDataGridViewTextBoxColumn.ReadOnly = true;
            billingCountryDataGridViewTextBoxColumn.Width = 175;
            // 
            // billingPostalCodeDataGridViewTextBoxColumn
            // 
            billingPostalCodeDataGridViewTextBoxColumn.DataPropertyName = "BillingPostalCode";
            billingPostalCodeDataGridViewTextBoxColumn.HeaderText = "BillingPostalCode";
            billingPostalCodeDataGridViewTextBoxColumn.MinimumWidth = 9;
            billingPostalCodeDataGridViewTextBoxColumn.Name = "billingPostalCodeDataGridViewTextBoxColumn";
            billingPostalCodeDataGridViewTextBoxColumn.ReadOnly = true;
            billingPostalCodeDataGridViewTextBoxColumn.Width = 175;
            // 
            // totalDataGridViewTextBoxColumn
            // 
            totalDataGridViewTextBoxColumn.DataPropertyName = "Total";
            totalDataGridViewTextBoxColumn.HeaderText = "Total";
            totalDataGridViewTextBoxColumn.MinimumWidth = 9;
            totalDataGridViewTextBoxColumn.Name = "totalDataGridViewTextBoxColumn";
            totalDataGridViewTextBoxColumn.ReadOnly = true;
            totalDataGridViewTextBoxColumn.Width = 175;
            // 
            // customerDataGridViewTextBoxColumn
            // 
            customerDataGridViewTextBoxColumn.DataPropertyName = "Customer";
            customerDataGridViewTextBoxColumn.HeaderText = "Customer";
            customerDataGridViewTextBoxColumn.MinimumWidth = 9;
            customerDataGridViewTextBoxColumn.Name = "customerDataGridViewTextBoxColumn";
            customerDataGridViewTextBoxColumn.ReadOnly = true;
            customerDataGridViewTextBoxColumn.Width = 175;
            // 
            // invoiceLinesDataGridViewTextBoxColumn
            // 
            invoiceLinesDataGridViewTextBoxColumn.DataPropertyName = "InvoiceLines";
            invoiceLinesDataGridViewTextBoxColumn.HeaderText = "InvoiceLines";
            invoiceLinesDataGridViewTextBoxColumn.MinimumWidth = 9;
            invoiceLinesDataGridViewTextBoxColumn.Name = "invoiceLinesDataGridViewTextBoxColumn";
            invoiceLinesDataGridViewTextBoxColumn.ReadOnly = true;
            invoiceLinesDataGridViewTextBoxColumn.Width = 175;
            // 
            // invoiceBindingSource
            // 
            invoiceBindingSource.DataSource = typeof(ChinookModels.Invoice);
            invoiceBindingSource.CurrentChanged += invoiceBindingSource_CurrentChanged;
            // 
            // buttonNewInvoice
            // 
            buttonNewInvoice.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            buttonNewInvoice.Location = new Point(1811, 424);
            buttonNewInvoice.Name = "buttonNewInvoice";
            buttonNewInvoice.Size = new Size(181, 40);
            buttonNewInvoice.TabIndex = 2;
            buttonNewInvoice.Text = "New invoice";
            buttonNewInvoice.UseVisualStyleBackColor = true;
            buttonNewInvoice.Click += buttonNewInvoice_Click;
            // 
            // buttonDeleteInvoice
            // 
            buttonDeleteInvoice.Location = new Point(1631, 424);
            buttonDeleteInvoice.Name = "buttonDeleteInvoice";
            buttonDeleteInvoice.Size = new Size(174, 40);
            buttonDeleteInvoice.TabIndex = 3;
            buttonDeleteInvoice.Text = "Delete invoice";
            buttonDeleteInvoice.UseVisualStyleBackColor = true;
            buttonDeleteInvoice.Click += buttonDeleteInvoice_Click;
            // 
            // dataGridViewInvoiceLines
            // 
            dataGridViewInvoiceLines.AllowUserToAddRows = false;
            dataGridViewInvoiceLines.AllowUserToDeleteRows = false;
            dataGridViewInvoiceLines.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            dataGridViewInvoiceLines.AutoGenerateColumns = false;
            dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = SystemColors.Control;
            dataGridViewCellStyle3.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle3.ForeColor = SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = DataGridViewTriState.True;
            dataGridViewInvoiceLines.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            dataGridViewInvoiceLines.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewInvoiceLines.Columns.AddRange(new DataGridViewColumn[] { trackNameDataGridViewTextBoxColumn, albumDataGridViewTextBoxColumn, quantityDataGridViewTextBoxColumn, unitPriceDataGridViewTextBoxColumn, lineTotalDataGridViewTextBoxColumn });
            dataGridViewInvoiceLines.DataSource = invoiceLineDeatiledBindingSource;
            dataGridViewCellStyle4.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = SystemColors.Window;
            dataGridViewCellStyle4.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle4.ForeColor = SystemColors.ControlText;
            dataGridViewCellStyle4.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = DataGridViewTriState.False;
            dataGridViewInvoiceLines.DefaultCellStyle = dataGridViewCellStyle4;
            dataGridViewInvoiceLines.Location = new Point(-2, 494);
            dataGridViewInvoiceLines.Name = "dataGridViewInvoiceLines";
            dataGridViewInvoiceLines.ReadOnly = true;
            dataGridViewCellStyle5.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = SystemColors.Control;
            dataGridViewCellStyle5.Font = new Font("Segoe UI", 9F);
            dataGridViewCellStyle5.ForeColor = SystemColors.WindowText;
            dataGridViewCellStyle5.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = DataGridViewTriState.True;
            dataGridViewInvoiceLines.RowHeadersDefaultCellStyle = dataGridViewCellStyle5;
            dataGridViewInvoiceLines.RowHeadersWidth = 72;
            dataGridViewInvoiceLines.Size = new Size(1116, 424);
            dataGridViewInvoiceLines.TabIndex = 4;
            // 
            // trackNameDataGridViewTextBoxColumn
            // 
            trackNameDataGridViewTextBoxColumn.DataPropertyName = "TrackName";
            trackNameDataGridViewTextBoxColumn.HeaderText = "TrackName";
            trackNameDataGridViewTextBoxColumn.MinimumWidth = 9;
            trackNameDataGridViewTextBoxColumn.Name = "trackNameDataGridViewTextBoxColumn";
            trackNameDataGridViewTextBoxColumn.ReadOnly = true;
            trackNameDataGridViewTextBoxColumn.Width = 175;
            // 
            // albumDataGridViewTextBoxColumn
            // 
            albumDataGridViewTextBoxColumn.DataPropertyName = "Album";
            albumDataGridViewTextBoxColumn.HeaderText = "Album";
            albumDataGridViewTextBoxColumn.MinimumWidth = 9;
            albumDataGridViewTextBoxColumn.Name = "albumDataGridViewTextBoxColumn";
            albumDataGridViewTextBoxColumn.ReadOnly = true;
            albumDataGridViewTextBoxColumn.Width = 175;
            // 
            // quantityDataGridViewTextBoxColumn
            // 
            quantityDataGridViewTextBoxColumn.DataPropertyName = "Quantity";
            quantityDataGridViewTextBoxColumn.HeaderText = "Quantity";
            quantityDataGridViewTextBoxColumn.MinimumWidth = 9;
            quantityDataGridViewTextBoxColumn.Name = "quantityDataGridViewTextBoxColumn";
            quantityDataGridViewTextBoxColumn.ReadOnly = true;
            quantityDataGridViewTextBoxColumn.Width = 175;
            // 
            // unitPriceDataGridViewTextBoxColumn
            // 
            unitPriceDataGridViewTextBoxColumn.DataPropertyName = "UnitPrice";
            unitPriceDataGridViewTextBoxColumn.HeaderText = "UnitPrice";
            unitPriceDataGridViewTextBoxColumn.MinimumWidth = 9;
            unitPriceDataGridViewTextBoxColumn.Name = "unitPriceDataGridViewTextBoxColumn";
            unitPriceDataGridViewTextBoxColumn.ReadOnly = true;
            unitPriceDataGridViewTextBoxColumn.Width = 175;
            // 
            // lineTotalDataGridViewTextBoxColumn
            // 
            lineTotalDataGridViewTextBoxColumn.DataPropertyName = "LineTotal";
            lineTotalDataGridViewTextBoxColumn.HeaderText = "LineTotal";
            lineTotalDataGridViewTextBoxColumn.MinimumWidth = 9;
            lineTotalDataGridViewTextBoxColumn.Name = "lineTotalDataGridViewTextBoxColumn";
            lineTotalDataGridViewTextBoxColumn.ReadOnly = true;
            lineTotalDataGridViewTextBoxColumn.Width = 175;
            // 
            // invoiceLineDeatiledBindingSource
            // 
            invoiceLineDeatiledBindingSource.DataSource = typeof(InvoiceLineDeatiled);
            // 
            // listBox1
            // 
            listBox1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            listBox1.DataSource = trackBindingSource;
            listBox1.DisplayMember = "Name";
            listBox1.FormattingEnabled = true;
            listBox1.ItemHeight = 30;
            listBox1.Location = new Point(1465, 494);
            listBox1.Name = "listBox1";
            listBox1.Size = new Size(527, 424);
            listBox1.TabIndex = 5;
            // 
            // trackBindingSource
            // 
            trackBindingSource.DataSource = typeof(ChinookModels.Track);
            // 
            // numericUpDown1
            // 
            numericUpDown1.Location = new Point(1304, 566);
            numericUpDown1.Name = "numericUpDown1";
            numericUpDown1.Size = new Size(101, 35);
            numericUpDown1.TabIndex = 6;
            numericUpDown1.Value = new decimal(new int[] { 1, 0, 0, 0 });
            // 
            // buttonAddTrack
            // 
            buttonAddTrack.Location = new Point(1167, 566);
            buttonAddTrack.Name = "buttonAddTrack";
            buttonAddTrack.Size = new Size(131, 35);
            buttonAddTrack.TabIndex = 7;
            buttonAddTrack.Text = "←";
            buttonAddTrack.UseVisualStyleBackColor = true;
            buttonAddTrack.Click += buttonAddTrack_Click;
            // 
            // buttonDelete
            // 
            buttonDelete.Location = new Point(1167, 607);
            buttonDelete.Name = "buttonDelete";
            buttonDelete.Size = new Size(131, 40);
            buttonDelete.TabIndex = 8;
            buttonDelete.Text = "→";
            buttonDelete.UseVisualStyleBackColor = true;
            buttonDelete.Click += buttonDelete_Click;
            // 
            // FormInvoices
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1994, 937);
            Controls.Add(buttonDelete);
            Controls.Add(buttonAddTrack);
            Controls.Add(numericUpDown1);
            Controls.Add(listBox1);
            Controls.Add(dataGridViewInvoiceLines);
            Controls.Add(buttonDeleteInvoice);
            Controls.Add(buttonNewInvoice);
            Controls.Add(dataGridView1);
            Controls.Add(labelCustomerName);
            Font = new Font("Segoe UI", 9F);
            Name = "FormInvoices";
            Text = "FormInvoices";
            Load += FormInvoices_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ((System.ComponentModel.ISupportInitialize)invoiceBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)dataGridViewInvoiceLines).EndInit();
            ((System.ComponentModel.ISupportInitialize)invoiceLineDeatiledBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)numericUpDown1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label labelCustomerName;
        private DataGridView dataGridView1;
        private DataGridViewTextBoxColumn invoiceIdDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn customerIdDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn invoiceDateDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn billingAddressDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn billingCityDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn billingStateDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn billingCountryDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn billingPostalCodeDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn totalDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn customerDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn invoiceLinesDataGridViewTextBoxColumn;
        private BindingSource invoiceBindingSource;
        private Button buttonNewInvoice;
        private Button buttonDeleteInvoice;
        private DataGridView dataGridViewInvoiceLines;
        private DataGridViewTextBoxColumn trackNameDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn albumDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn quantityDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn unitPriceDataGridViewTextBoxColumn;
        private DataGridViewTextBoxColumn lineTotalDataGridViewTextBoxColumn;
        private BindingSource invoiceLineDeatiledBindingSource;
        private ListBox listBox1;
        private NumericUpDown numericUpDown1;
        private Button buttonAddTrack;
        private BindingSource trackBindingSource;
        private Button buttonDelete;
    }
}