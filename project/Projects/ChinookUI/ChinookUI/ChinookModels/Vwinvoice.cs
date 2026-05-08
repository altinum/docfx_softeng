using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class Vwinvoice
{
    public string? Year { get; set; }

    public string? Customertype { get; set; }

    public decimal? Sum { get; set; }

    public decimal? Avg { get; set; }

    public decimal? Min { get; set; }

    public decimal? Max { get; set; }
}
