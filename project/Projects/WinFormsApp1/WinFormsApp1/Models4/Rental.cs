using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models4;

public partial class Rental
{
    public int RentalSk { get; set; }

    public int? MemberFk { get; set; }

    public int? Dvdfk { get; set; }

    public DateOnly OutDate { get; set; }

    public DateOnly? ReturnDate { get; set; }

    public virtual Dvd? DvdfkNavigation { get; set; }

    public virtual Member? MemberFkNavigation { get; set; }
}
