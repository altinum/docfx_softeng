using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models2;

public partial class Animal
{
    public int AnimalSk { get; set; }

    public string? Name { get; set; }

    public int? OwnerFk { get; set; }

    public short? BirthYear { get; set; }

    public int? SpeciesFk { get; set; }

    public virtual Species? SpeciesFkNavigation { get; set; }

    public virtual ICollection<Treatment> Treatments { get; set; } = new List<Treatment>();
}
