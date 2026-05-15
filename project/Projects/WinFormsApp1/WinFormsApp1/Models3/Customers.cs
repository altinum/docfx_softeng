using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models3;

public partial class Customers
{
    public int CustomerSk { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string? Phone { get; set; }

    public string Email { get; set; } = null!;

    public string? Street { get; set; }

    public string? City { get; set; }

    public string? State { get; set; }

    public string? ZipCode { get; set; }

    public virtual ICollection<Orders> Orders { get; set; } = new List<Orders>();
}
