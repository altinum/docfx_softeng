using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class Post
{
    public int Id { get; set; }

    public string Title { get; set; } = null!;

    public string Body { get; set; } = null!;

    public int? UserId { get; set; }

    public bool? Status { get; set; }

    public DateTime CreatedAt { get; set; }

    public virtual User? User { get; set; }
}
