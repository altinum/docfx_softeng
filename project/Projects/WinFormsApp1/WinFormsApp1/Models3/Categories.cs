using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Categories
{
    public int CategorySk { get; set; }

    public string CategoryName { get; set; } = null!;

    public virtual ICollection<Products> Products { get; set; } = new List<Products>();
}
