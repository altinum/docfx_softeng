using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class VwInvoiceline
{
    public string Customername { get; set; } = null!;

    public int? Year { get; set; }

    public int? Quarter { get; set; }

    public int Invoiceid { get; set; }

    public string Trackname { get; set; } = null!;

    public decimal? Grossunitpricehuf { get; set; }
}
