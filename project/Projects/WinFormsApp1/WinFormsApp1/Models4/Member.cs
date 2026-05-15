using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models4;

public partial class Member
{
    public int MemberSk { get; set; }

    public string? Name { get; set; }

    public string? Address { get; set; }

    public int? FavCategoryFk { get; set; }

    public int? FavLanguageFk { get; set; }

    public virtual Category? FavCategoryFkNavigation { get; set; }

    public virtual Language? FavLanguageFkNavigation { get; set; }

    public virtual ICollection<Rental> Rentals { get; set; } = new List<Rental>();
}
