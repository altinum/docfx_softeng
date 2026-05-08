using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class User
{
    public int Id { get; set; }

    public string Username { get; set; } = null!;

    public string? Role { get; set; }

    public DateTime CreatedAt { get; set; }

    public virtual ICollection<Follow> FollowFollowedUsers { get; set; } = new List<Follow>();

    public virtual ICollection<Follow> FollowFollowingUsers { get; set; } = new List<Follow>();

    public virtual ICollection<Post> Posts { get; set; } = new List<Post>();
}
