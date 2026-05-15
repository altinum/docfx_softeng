using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models2;

public partial class Species
{
    public int SpeciesSk { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Animal> Animals { get; set; } = new List<Animal>();
}
