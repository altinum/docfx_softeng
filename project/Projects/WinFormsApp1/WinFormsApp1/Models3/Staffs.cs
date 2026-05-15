using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Staffs
{
    public int StaffSk { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string? Phone { get; set; }

    public byte Active { get; set; }

    public int StoreFk { get; set; }

    public int? ManagerFk { get; set; }

    public virtual ICollection<Staffs> InverseManagerFkNavigation { get; set; } = new List<Staffs>();

    public virtual Staffs? ManagerFkNavigation { get; set; }

    public virtual ICollection<Orders> Orders { get; set; } = new List<Orders>();

    public virtual Stores StoreFkNavigation { get; set; } = null!;
}
