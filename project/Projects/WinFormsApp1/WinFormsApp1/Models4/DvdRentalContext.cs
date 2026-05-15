using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WinFormsApp1.Models4;

public partial class DvdRentalContext : DbContext
{
    public DvdRentalContext()
    {
    }

    public DvdRentalContext(DbContextOptions<DvdRentalContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Dvd> Dvds { get; set; }

    public virtual DbSet<Language> Languages { get; set; }

    public virtual DbSet<Member> Members { get; set; }

    public virtual DbSet<Rental> Rentals { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=bit.uni-corvinus.hu;Initial Catalog=DVD_Rental;User ID=hallgato;Password=Password123;Trust Server Certificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.CategorySk).HasName("PK__Category__1908CDFA11D85496");

            entity.ToTable("Category");

            entity.Property(e => e.CategorySk).HasColumnName("CategorySK");
            entity.Property(e => e.Name).HasMaxLength(30);
        });

        modelBuilder.Entity<Dvd>(entity =>
        {
            entity.HasKey(e => e.Dvdsk).HasName("PK__DVD__461C100FD0B57D37");

            entity.ToTable("DVD");

            entity.Property(e => e.Dvdsk).HasColumnName("DVDSK");
            entity.Property(e => e.CategoryFk).HasColumnName("CategoryFK");
            entity.Property(e => e.LanguageFk).HasColumnName("LanguageFK");
            entity.Property(e => e.NetPrice).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.Title).HasMaxLength(100);

            entity.HasOne(d => d.CategoryFkNavigation).WithMany(p => p.Dvds)
                .HasForeignKey(d => d.CategoryFk)
                .HasConstraintName("FK_DVD_ToCategory");

            entity.HasOne(d => d.LanguageFkNavigation).WithMany(p => p.Dvds)
                .HasForeignKey(d => d.LanguageFk)
                .HasConstraintName("FK_DVD_ToLanguage");
        });

        modelBuilder.Entity<Language>(entity =>
        {
            entity.HasKey(e => e.LanguageSk).HasName("PK__Language__B93682EE0EB1E273");

            entity.ToTable("Language");

            entity.Property(e => e.LanguageSk).HasColumnName("LanguageSK");
            entity.Property(e => e.Name).HasMaxLength(30);
        });

        modelBuilder.Entity<Member>(entity =>
        {
            entity.HasKey(e => e.MemberSk).HasName("PK__Member__0CF5ED1C6BA329A5");

            entity.ToTable("Member");

            entity.Property(e => e.MemberSk).HasColumnName("MemberSK");
            entity.Property(e => e.Address).HasMaxLength(100);
            entity.Property(e => e.FavCategoryFk).HasColumnName("FavCategoryFK");
            entity.Property(e => e.FavLanguageFk).HasColumnName("FavLanguageFK");
            entity.Property(e => e.Name).HasMaxLength(50);

            entity.HasOne(d => d.FavCategoryFkNavigation).WithMany(p => p.Members)
                .HasForeignKey(d => d.FavCategoryFk)
                .HasConstraintName("FK_Member_ToCategory");

            entity.HasOne(d => d.FavLanguageFkNavigation).WithMany(p => p.Members)
                .HasForeignKey(d => d.FavLanguageFk)
                .HasConstraintName("FK_Member_ToLanguage");
        });

        modelBuilder.Entity<Rental>(entity =>
        {
            entity.HasKey(e => e.RentalSk).HasName("PK__Rental__977F36349FF9F21B");

            entity.ToTable("Rental");

            entity.Property(e => e.RentalSk).HasColumnName("RentalSK");
            entity.Property(e => e.Dvdfk).HasColumnName("DVDFK");
            entity.Property(e => e.MemberFk).HasColumnName("MemberFK");

            entity.HasOne(d => d.DvdfkNavigation).WithMany(p => p.Rentals)
                .HasForeignKey(d => d.Dvdfk)
                .HasConstraintName("FK_Rental_ToDVD");

            entity.HasOne(d => d.MemberFkNavigation).WithMany(p => p.Rentals)
                .HasForeignKey(d => d.MemberFk)
                .HasConstraintName("FK_Rental_ToMember");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
