using System;
using System.Collections.Generic;

namespace ChinookUI.ChinookModels;

public partial class Follow
{
    public int FollowingUserId { get; set; }

    public int FollowedUserId { get; set; }

    public DateTime CreatedAt { get; set; }

    public virtual User FollowedUser { get; set; } = null!;

    public virtual User FollowingUser { get; set; } = null!;
}
