using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Stores
{
    public int StoreSk { get; set; }

    public string StoreName { get; set; } = null!;

    public string? Phone { get; set; }

    public string? Email { get; set; }

    public string? Street { get; set; }

    public string? City { get; set; }

    public string? State { get; set; }

    public string? ZipCode { get; set; }

    public virtual ICollection<Orders> Orders { get; set; } = new List<Orders>();

    public virtual ICollection<Staffs> Staffs { get; set; } = new List<Staffs>();

    public virtual ICollection<Stocks> Stocks { get; set; } = new List<Stocks>();
}
