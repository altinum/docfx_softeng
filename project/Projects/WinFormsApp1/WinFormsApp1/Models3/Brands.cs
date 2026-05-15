using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Brands
{
    public int BrandSk { get; set; }

    public string BrandName { get; set; } = null!;

    public virtual ICollection<Products> Products { get; set; } = new List<Products>();
}
