using System;
using System.Collections.Generic;

namespace WinFormsApp1.Models2;

public partial class Treatment
{
    public int TreatmentSk { get; set; }

    public int? AnimalFk { get; set; }

    public DateOnly? Date { get; set; }

    public bool? Paid { get; set; }

    public virtual Animal? AnimalFkNavigation { get; set; }

    public virtual ICollection<ProcedureDone> ProcedureDones { get; set; } = new List<ProcedureDone>();
}
