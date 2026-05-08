using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ChinookUI.ChinookModels;

public partial class ChinookContext : DbContext
{
    public ChinookContext()
    {
    }

    public ChinookContext(DbContextOptions<ChinookContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Album> Albums { get; set; }

    public virtual DbSet<Artist> Artists { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Employee> Employees { get; set; }

    public virtual DbSet<Follow> Follows { get; set; }

    public virtual DbSet<Genre> Genres { get; set; }

    public virtual DbSet<Invoice> Invoices { get; set; }

    public virtual DbSet<InvoiceLine> InvoiceLines { get; set; }

    public virtual DbSet<MediaType> MediaTypes { get; set; }

    public virtual DbSet<Playlist> Playlists { get; set; }

    public virtual DbSet<Post> Posts { get; set; }

    public virtual DbSet<Track> Tracks { get; set; }

    public virtual DbSet<TrackView> TrackViews { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<VwInvoiceline> VwInvoicelines { get; set; }

    public virtual DbSet<VwMediaTypeRep> VwMediaTypeReps { get; set; }

    public virtual DbSet<VwRepbyCity> VwRepbyCities { get; set; }

    public virtual DbSet<Vwinvoice> Vwinvoices { get; set; }

    public virtual DbSet<Vwinvoice2> Vwinvoice2s { get; set; }

    public virtual DbSet<Vwplaylist> Vwplaylists { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=bit.uni-corvinus.hu;Initial Catalog=Chinook;Persist Security Info=True;User ID=hallgato;Password=Password123;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Album>(entity =>
        {
            entity.ToTable("Album");

            entity.HasIndex(e => e.ArtistId, "IFK_AlbumArtistId");

            entity.Property(e => e.Title).HasMaxLength(160);

            entity.HasOne(d => d.Artist).WithMany(p => p.Albums)
                .HasForeignKey(d => d.ArtistId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_AlbumArtistId");
        });

        modelBuilder.Entity<Artist>(entity =>
        {
            entity.ToTable("Artist");

            entity.Property(e => e.Name).HasMaxLength(120);
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.ToTable("Customer");

            entity.HasIndex(e => e.SupportRepId, "IFK_CustomerSupportRepId");

            entity.Property(e => e.Address).HasMaxLength(70);
            entity.Property(e => e.City).HasMaxLength(40);
            entity.Property(e => e.Company).HasMaxLength(80);
            entity.Property(e => e.Country).HasMaxLength(40);
            entity.Property(e => e.Email).HasMaxLength(60);
            entity.Property(e => e.Fax).HasMaxLength(24);
            entity.Property(e => e.FirstName).HasMaxLength(40);
            entity.Property(e => e.LastName).HasMaxLength(20);
            entity.Property(e => e.Phone).HasMaxLength(24);
            entity.Property(e => e.PostalCode).HasMaxLength(10);
            entity.Property(e => e.State).HasMaxLength(40);

            entity.HasOne(d => d.SupportRep).WithMany(p => p.Customers)
                .HasForeignKey(d => d.SupportRepId)
                .HasConstraintName("FK_CustomerSupportRepId");
        });

        modelBuilder.Entity<Employee>(entity =>
        {
            entity.ToTable("Employee");

            entity.HasIndex(e => e.ReportsTo, "IFK_EmployeeReportsTo");

            entity.Property(e => e.Address).HasMaxLength(70);
            entity.Property(e => e.BirthDate).HasColumnType("datetime");
            entity.Property(e => e.City).HasMaxLength(40);
            entity.Property(e => e.Country).HasMaxLength(40);
            entity.Property(e => e.Email).HasMaxLength(60);
            entity.Property(e => e.Fax).HasMaxLength(24);
            entity.Property(e => e.FirstName).HasMaxLength(20);
            entity.Property(e => e.HireDate).HasColumnType("datetime");
            entity.Property(e => e.LastName).HasMaxLength(20);
            entity.Property(e => e.Phone).HasMaxLength(24);
            entity.Property(e => e.PostalCode).HasMaxLength(10);
            entity.Property(e => e.State).HasMaxLength(40);
            entity.Property(e => e.Title).HasMaxLength(30);

            entity.HasOne(d => d.ReportsToNavigation).WithMany(p => p.InverseReportsToNavigation)
                .HasForeignKey(d => d.ReportsTo)
                .HasConstraintName("FK_EmployeeReportsTo");
        });

        modelBuilder.Entity<Follow>(entity =>
        {
            entity.HasKey(e => new { e.FollowingUserId, e.FollowedUserId });

            entity.Property(e => e.FollowingUserId).HasColumnName("Following_user_id");
            entity.Property(e => e.FollowedUserId).HasColumnName("Followed_user_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("Created_at");

            entity.HasOne(d => d.FollowedUser).WithMany(p => p.FollowFollowedUsers)
                .HasForeignKey(d => d.FollowedUserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Follows__Followe__7908F585");

            entity.HasOne(d => d.FollowingUser).WithMany(p => p.FollowFollowingUsers)
                .HasForeignKey(d => d.FollowingUserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Follows__Followi__7814D14C");
        });

        modelBuilder.Entity<Genre>(entity =>
        {
            entity.ToTable("Genre");

            entity.Property(e => e.GenreId).ValueGeneratedNever();
            entity.Property(e => e.Name).HasMaxLength(120);
        });

        modelBuilder.Entity<Invoice>(entity =>
        {
            entity.ToTable("Invoice");

            entity.HasIndex(e => e.CustomerId, "IFK_InvoiceCustomerId");

            entity.Property(e => e.BillingAddress).HasMaxLength(70);
            entity.Property(e => e.BillingCity).HasMaxLength(40);
            entity.Property(e => e.BillingCountry).HasMaxLength(40);
            entity.Property(e => e.BillingPostalCode).HasMaxLength(10);
            entity.Property(e => e.BillingState).HasMaxLength(40);
            entity.Property(e => e.InvoiceDate).HasColumnType("datetime");
            entity.Property(e => e.Total).HasColumnType("numeric(10, 2)");

            entity.HasOne(d => d.Customer).WithMany(p => p.Invoices)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_InvoiceCustomerId");
        });

        modelBuilder.Entity<InvoiceLine>(entity =>
        {
            entity.ToTable("InvoiceLine");

            entity.HasIndex(e => e.InvoiceId, "IFK_InvoiceLineInvoiceId");

            entity.HasIndex(e => e.TrackId, "IFK_InvoiceLineTrackId");

            entity.Property(e => e.UnitPrice).HasColumnType("numeric(10, 2)");

            entity.HasOne(d => d.Invoice).WithMany(p => p.InvoiceLines)
                .HasForeignKey(d => d.InvoiceId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_InvoiceLineInvoiceId");

            entity.HasOne(d => d.Track).WithMany(p => p.InvoiceLines)
                .HasForeignKey(d => d.TrackId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_InvoiceLineTrackId");
        });

        modelBuilder.Entity<MediaType>(entity =>
        {
            entity.ToTable("MediaType");

            entity.Property(e => e.MediaTypeId).ValueGeneratedNever();
            entity.Property(e => e.Name).HasMaxLength(120);
        });

        modelBuilder.Entity<Playlist>(entity =>
        {
            entity.ToTable("Playlist");

            entity.Property(e => e.PlaylistId).ValueGeneratedNever();
            entity.Property(e => e.Name).HasMaxLength(120);

            entity.HasMany(d => d.Tracks).WithMany(p => p.Playlists)
                .UsingEntity<Dictionary<string, object>>(
                    "PlaylistTrack",
                    r => r.HasOne<Track>().WithMany()
                        .HasForeignKey("TrackId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_PlaylistTrackTrackId"),
                    l => l.HasOne<Playlist>().WithMany()
                        .HasForeignKey("PlaylistId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_PlaylistTrackPlaylistId"),
                    j =>
                    {
                        j.HasKey("PlaylistId", "TrackId").IsClustered(false);
                        j.ToTable("PlaylistTrack");
                        j.HasIndex(new[] { "TrackId" }, "IFK_PlaylistTrackTrackId");
                    });
        });

        modelBuilder.Entity<Post>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Posts__3214EC27BF516E28");

            entity.HasIndex(e => new { e.UserId, e.CreatedAt }, "UQ_user_date").IsUnique();

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("Created_at");
            entity.Property(e => e.Status).HasColumnName("status");
            entity.Property(e => e.Title)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.UserId).HasColumnName("User_id");

            entity.HasOne(d => d.User).WithMany(p => p.Posts)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__Posts__User_id__74444068");
        });

        modelBuilder.Entity<Track>(entity =>
        {
            entity.ToTable("Track");

            entity.HasIndex(e => e.AlbumId, "IFK_TrackAlbumId");

            entity.HasIndex(e => e.GenreId, "IFK_TrackGenreId");

            entity.HasIndex(e => e.MediaTypeId, "IFK_TrackMediaTypeId");

            entity.Property(e => e.Composer).HasMaxLength(220);
            entity.Property(e => e.Name).HasMaxLength(200);
            entity.Property(e => e.UnitPrice).HasColumnType("numeric(10, 2)");

            entity.HasOne(d => d.Album).WithMany(p => p.Tracks)
                .HasForeignKey(d => d.AlbumId)
                .HasConstraintName("FK_TrackAlbumId");

            entity.HasOne(d => d.Genre).WithMany(p => p.Tracks)
                .HasForeignKey(d => d.GenreId)
                .HasConstraintName("FK_TrackGenreId");

            entity.HasOne(d => d.MediaType).WithMany(p => p.Tracks)
                .HasForeignKey(d => d.MediaTypeId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TrackMediaTypeId");
        });

        modelBuilder.Entity<TrackView>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("TrackView");

            entity.Property(e => e.Artname)
                .HasMaxLength(120)
                .HasColumnName("artname");
            entity.Property(e => e.Grossunitprice)
                .HasColumnType("numeric(14, 4)")
                .HasColumnName("grossunitprice");
            entity.Property(e => e.Mediatypename)
                .HasMaxLength(120)
                .HasColumnName("mediatypename");
            entity.Property(e => e.Minutes)
                .HasColumnType("numeric(22, 10)")
                .HasColumnName("minutes");
            entity.Property(e => e.Priceperminute)
                .HasColumnType("numeric(38, 20)")
                .HasColumnName("priceperminute");
            entity.Property(e => e.Title)
                .HasMaxLength(160)
                .HasColumnName("title");
            entity.Property(e => e.Trackname)
                .HasMaxLength(200)
                .HasColumnName("trackname");
            entity.Property(e => e.Unitprice)
                .HasColumnType("numeric(10, 2)")
                .HasColumnName("unitprice");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Users__3214EC27A27D60D8");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("Created_at");
            entity.Property(e => e.Role)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Username)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<VwInvoiceline>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vw_invoiceline");

            entity.Property(e => e.Customername)
                .HasMaxLength(61)
                .HasColumnName("customername");
            entity.Property(e => e.Grossunitpricehuf)
                .HasColumnType("numeric(31, 6)")
                .HasColumnName("grossunitpricehuf");
            entity.Property(e => e.Invoiceid).HasColumnName("invoiceid");
            entity.Property(e => e.Quarter).HasColumnName("quarter");
            entity.Property(e => e.Trackname)
                .HasMaxLength(200)
                .HasColumnName("trackname");
            entity.Property(e => e.Year).HasColumnName("year");
        });

        modelBuilder.Entity<VwMediaTypeRep>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vwMediaTypeRep");

            entity.Property(e => e.Mediatype).HasMaxLength(120);
            entity.Property(e => e.Value).HasColumnType("numeric(38, 4)");
            entity.Property(e => e.Year)
                .HasMaxLength(8)
                .IsUnicode(false);
        });

        modelBuilder.Entity<VwRepbyCity>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vwRepbyCity");

            entity.Property(e => e.City).HasMaxLength(40);
            entity.Property(e => e.SupportRepname).HasMaxLength(41);
        });

        modelBuilder.Entity<Vwinvoice>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vwinvoice");

            entity.Property(e => e.Avg)
                .HasColumnType("numeric(38, 6)")
                .HasColumnName("avg");
            entity.Property(e => e.Customertype)
                .HasMaxLength(12)
                .IsUnicode(false)
                .HasColumnName("customertype");
            entity.Property(e => e.Max)
                .HasColumnType("numeric(10, 2)")
                .HasColumnName("max");
            entity.Property(e => e.Min)
                .HasColumnType("numeric(10, 2)")
                .HasColumnName("min");
            entity.Property(e => e.Sum)
                .HasColumnType("numeric(38, 2)")
                .HasColumnName("sum");
            entity.Property(e => e.Year)
                .HasMaxLength(8)
                .IsUnicode(false)
                .HasColumnName("year");
        });

        modelBuilder.Entity<Vwinvoice2>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vwinvoice2");

            entity.Property(e => e.Genrename)
                .HasMaxLength(120)
                .HasColumnName("genrename");
            entity.Property(e => e.Netprice)
                .HasColumnType("numeric(21, 2)")
                .HasColumnName("netprice");
            entity.Property(e => e.Tracname)
                .HasMaxLength(200)
                .HasColumnName("tracname");
            entity.Property(e => e.Year).HasColumnName("year");
        });

        modelBuilder.Entity<Vwplaylist>(entity =>
        {
            entity
                .HasNoKey()
                .ToView("vwplaylist");

            entity.Property(e => e.Genrename)
                .HasMaxLength(120)
                .HasColumnName("genrename");
            entity.Property(e => e.Minutes)
                .HasColumnType("numeric(22, 10)")
                .HasColumnName("minutes");
            entity.Property(e => e.Playlistname)
                .HasMaxLength(120)
                .HasColumnName("playlistname");
            entity.Property(e => e.Trackname)
                .HasMaxLength(200)
                .HasColumnName("trackname");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
