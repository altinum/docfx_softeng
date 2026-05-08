using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class Vwinvoice2
{
    public int? Year { get; set; }

    public decimal? Netprice { get; set; }

    public string Tracname { get; set; } = null!;

    public string? Genrename { get; set; }
}
