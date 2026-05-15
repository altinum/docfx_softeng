using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models;

public partial class Unit
{
    public byte UnitId { get; set; }

    public string Name { get; set; } = null!;

    public virtual ICollection<Material> Materials { get; set; } = new List<Material>();
}
