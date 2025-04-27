# Code Samples for the Chinook Database

## Scaffold command

``` powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=Chinook;Persist Security Info=True;User ID=hallgato;Password=Password123;TrustServerCertificate=true" Microsoft.EntityFrameworkCore.SqlServer -OutputDir ChinookModels
```

## FormCustomer

This is just a form to list `Customer`s. 

``` csharp
public partial class FormCustomer : Form
{
    ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();
    public FormCustomer()
    {
        InitializeComponent();
    }

    private void FormCustomer_Load(object sender, EventArgs e)
    {
        customerBindingSource.DataSource = context.Customers.ToList();
    }

    private void buttonInvoices_Click(object sender, EventArgs e)
    {            
        if (customerBindingSource.Current == null) return;
        ChinookModels.Customer customer = (ChinookModels.Customer)customerBindingSource.Current;
        var formInvoice = new FormInvoice(customer);
        formInvoice.ShowDialog();
    }
}
```

The from has a button to open the `Invoice`s of the selected `Customer`.



## FormInvoice



``` csharp
public partial class FormInvoice : Form
{
    ChinookModels.Customer customer;
    ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();
    public FormInvoice()
    {
        InitializeComponent();
    }

    public FormInvoice(ChinookModels.Customer customer)
    {
        InitializeComponent();
        this.customer = customer;
        this.Text = $"Invoice for {customer.FirstName} {customer.LastName}";
        var invoices = context.Invoices
            .Where(i => i.CustomerId == customer.CustomerId)
            .ToList();
        invoiceBindingSource.DataSource = invoices;
    }

    private void buttonAddTrack_Click(object sender, EventArgs e)
    {
        TrackPickerForm tpf = new TrackPickerForm();
        if (tpf.ShowDialog() == DialogResult.OK)
        {

            ChinookModels.InvoiceLine invoiceLine = new ChinookModels.InvoiceLine
            {
                TrackId = tpf.SelectedTrack.TrackId,
                UnitPrice = tpf.SelectedTrack.UnitPrice,
                Quantity = 1
            };

            invoiceLine.Invoice = (ChinookModels.Invoice)invoiceBindingSource.Current;

            context.InvoiceLines.Add(invoiceLine);

            try
            {
                context.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.InnerException.Message);
                return;
            }
            LoadInvoiceLines();
        }
    }

    private void invoiceBindingSource_CurrentChanged(object sender, EventArgs e)
    {
        LoadInvoiceLines();
    }

    private void LoadInvoiceLines()
    {
        if (invoiceBindingSource == null) return;
        if (invoiceBindingSource.Current == null) return;
        ChinookModels.Invoice invoice = (ChinookModels.Invoice)invoiceBindingSource.Current;

        var invoiceLineDetails = context.InvoiceLines
            .Where(il => il.InvoiceId == invoice.InvoiceId)
            .Select(il => new InvoiceLineDetail
            {
                Id = il.InvoiceLineId,
                TrackName = il.Track.Name,
                UnitPrice = il.UnitPrice,
                Quantity = il.Quantity,
                Total = il.UnitPrice * il.Quantity,
                InvoiceLine = il
            })
            .ToList();

        invoiceLineDetailBindingSource.DataSource = invoiceLineDetails;
    }

    private void buttonDelete_Click(object sender, EventArgs e)
    {
        if (invoiceLineDetailBindingSource.Current == null) return;
        InvoiceLineDetail invoiceLineDetail = (InvoiceLineDetail)invoiceLineDetailBindingSource.Current;
        if (invoiceLineDetail == null) return;
        var invoiceLine = context.InvoiceLines
            .FirstOrDefault(il => il.InvoiceLineId == invoiceLineDetail.Id);

        //This is the same as the one in the invoiceLineDetail
        var invoiceLine2 = invoiceLineDetail.InvoiceLine; 

        if (invoiceLine == null) return;
        context.InvoiceLines.Remove(invoiceLine);
        try
        {
            context.SaveChanges();
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.InnerException.Message);
            return;
        }
    }
}
```

``` c#
public class InvoiceLineDetail
{
    public int Id { get; set; }
    public string TrackName { get; set; }
    public decimal UnitPrice { get; set; }
    public int Quantity { get; set; }
    public decimal Total { get; set; }

    public ChinookModels.InvoiceLine InvoiceLine { get; set; }
}
```

## TrackPickerForm

``` csharp
public partial class TrackPickerForm : Form
{
    ChinookModels.ChinookContext context = new ChinookModels.ChinookContext();

    public ChinookModels.Track SelectedTrack { get; set; }
    public TrackPickerForm()
    {
        InitializeComponent();
    }

    private void artistBindingSource_CurrentChanged(object sender, EventArgs e)
    {
        if (artistBindingSource == null) return;

        var artist = (ChinookModels.Artist)artistBindingSource.Current;
        if (artist == null) return;
        var albums = context.Albums
            .Where(a => a.ArtistId == artist.ArtistId)
            .ToList();
        albumBindingSource.DataSource = albums;
    }

    private void TrackPickerForm_Load(object sender, EventArgs e)
    {
        artistBindingSource.DataSource = context.Artists.ToList();
    }

    private void albumBindingSource_CurrentChanged(object sender, EventArgs e)
    {
        if (albumBindingSource == null) return;
        var album = (ChinookModels.Album)albumBindingSource.Current;
        if (album == null) return;
        var tracks = context.Tracks
            .Where(t => t.AlbumId == album.AlbumId)
            .Select(t => new TrackDetail
            {
                Genre = t.Genre.Name,
                Name = t.Name,
                Composer = t.Composer,
                Milliseconds = t.Milliseconds,
                Track = t
            });
        trackDetailsBindingSource.DataSource = tracks.ToList();
    }

    private void trackDetailsBindingSource_CurrentChanged(object sender, EventArgs e)
    {
        if (trackDetailsBindingSource == null) return;
        buttonOk.Enabled = trackDetailsBindingSource.Current != null;
        var trackDetail = (TrackDetail)trackDetailsBindingSource.Current;
        if (trackDetail == null) return;
        SelectedTrack = trackDetail.Track;
    }
}
```

```c#
public class TrackDetail
{
    public string Genre { get; set; }
    public string Name { get; set; }
    public string Composer { get; set; }
    public int Milliseconds { get; set; }
    public ChinookModels.Track Track { get; set; }
}
```

