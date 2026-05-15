using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models4;

public partial class Category
{
    public int CategorySk { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Dvd> Dvds { get; set; } = new List<Dvd>();

    public virtual ICollection<Member> Members { get; set; } = new List<Member>();
}
