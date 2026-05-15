using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models4;

public partial class Dvd
{
    public int Dvdsk { get; set; }

    public string? Title { get; set; }

    public int? CategoryFk { get; set; }

    public decimal? NetPrice { get; set; }

    public int? LanguageFk { get; set; }

    public int? Stock { get; set; }

    public virtual Category? CategoryFkNavigation { get; set; }

    public virtual Language? LanguageFkNavigation { get; set; }

    public virtual ICollection<Rental> Rentals { get; set; } = new List<Rental>();
}
