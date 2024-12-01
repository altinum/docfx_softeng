using System;
using System.Collections.Generic;

namespace WebApplication2.BookModels;

public partial class Book
{
    public int Id { get; set; }

    public string Title { get; set; } = null!;

    public string Author { get; set; } = null!;

    public int Year { get; set; }

    public string Genre { get; set; } = null!;

    public bool IsAvailable { get; set; }
}
