using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class TrackView
{
    public string Trackname { get; set; } = null!;

    public decimal? Minutes { get; set; }

    public decimal Unitprice { get; set; }

    public decimal? Grossunitprice { get; set; }

    public string? Mediatypename { get; set; }

    public string? Artname { get; set; }

    public string Title { get; set; } = null!;

    public decimal? Priceperminute { get; set; }
}
