using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Products
{
    public int ProductSk { get; set; }

    public string ProductName { get; set; } = null!;

    public int BrandId { get; set; }

    public int CategoryFk { get; set; }

    public short ModelYear { get; set; }

    public decimal ListPrice { get; set; }

    public virtual Brands Brand { get; set; } = null!;

    public virtual Categories CategoryFkNavigation { get; set; } = null!;

    public virtual ICollection<OrderItems> OrderItems { get; set; } = new List<OrderItems>();

    public virtual ICollection<Stocks> Stocks { get; set; } = new List<Stocks>();
}
