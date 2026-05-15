using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class OrderItems
{
    public int OrderFk { get; set; }

    public int ProductFk { get; set; }

    public int Quantity { get; set; }

    public decimal? ListPrice { get; set; }

    public decimal? Discount { get; set; }

    public virtual Orders OrderFkNavigation { get; set; } = null!;

    public virtual Products ProductFkNavigation { get; set; } = null!;
}
