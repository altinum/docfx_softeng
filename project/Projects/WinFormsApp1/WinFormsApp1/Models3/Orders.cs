using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Orders
{
    public int OrderSk { get; set; }

    public int? CustomerFk { get; set; }

    public byte OrderStatus { get; set; }

    public DateOnly OrderDate { get; set; }

    public DateOnly RequiredDate { get; set; }

    public DateOnly? ShippedDate { get; set; }

    public int StoreFk { get; set; }

    public int StaffFk { get; set; }

    public virtual Customers? CustomerFkNavigation { get; set; }

    public virtual ICollection<OrderItems> OrderItems { get; set; } = new List<OrderItems>();

    public virtual Staffs StaffFkNavigation { get; set; } = null!;

    public virtual Stores StoreFkNavigation { get; set; } = null!;
}
