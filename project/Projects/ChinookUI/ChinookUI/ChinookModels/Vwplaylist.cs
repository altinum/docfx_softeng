using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class Vwplaylist
{
    public string Trackname { get; set; } = null!;

    public string? Genrename { get; set; }

    public decimal? Minutes { get; set; }

    public string? Playlistname { get; set; }
}
