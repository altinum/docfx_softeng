using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Stocks
{
    public int StoreSk { get; set; }

    public int ProductFk { get; set; }

    public int? Quantity { get; set; }

    public virtual Products ProductFkNavigation { get; set; } = null!;

    public virtual Stores StoreSkNavigation { get; set; } = null!;
}
