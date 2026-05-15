using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WinFormsApp1.Models2;

public partial class SePetsContext : DbContext
{
    public SePetsContext()
    {
    }

    public SePetsContext(DbContextOptions<SePetsContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Animal> Animals { get; set; }

    public virtual DbSet<Procedure> Procedures { get; set; }

    public virtual DbSet<ProcedureDone> ProcedureDones { get; set; }

    public virtual DbSet<Species> Species { get; set; }

    public virtual DbSet<Treatment> Treatments { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=bit.uni-corvinus.hu;Initial Catalog=se_pets;User ID=hallgato;Password=Password123;Trust Server Certificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Animal>(entity =>
        {
            entity.HasKey(e => e.AnimalSk).HasName("PK__Animal__A21A6361F0F1BC1E");

            entity.ToTable("Animal");

            entity.Property(e => e.AnimalSk).HasColumnName("AnimalSK");
            entity.Property(e => e.Name).HasMaxLength(50);
            entity.Property(e => e.OwnerFk).HasColumnName("OwnerFK");
            entity.Property(e => e.SpeciesFk).HasColumnName("SpeciesFK");

            entity.HasOne(d => d.SpeciesFkNavigation).WithMany(p => p.Animals)
                .HasForeignKey(d => d.SpeciesFk)
                .HasConstraintName("FK_Animal_ToSpecies");
        });

        modelBuilder.Entity<Procedure>(entity =>
        {
            entity.HasKey(e => e.ProcedureSk).HasName("PK__Procedur__54C2B47B91628FEB");

            entity.ToTable("Procedure");

            entity.Property(e => e.ProcedureSk).HasColumnName("ProcedureSK");
            entity.Property(e => e.Name).HasMaxLength(100);
            entity.Property(e => e.Price).HasColumnType("money");
            entity.Property(e => e.Unit).HasMaxLength(3);
        });

        modelBuilder.Entity<ProcedureDone>(entity =>
        {
            entity.HasKey(e => e.ProcedureDoneSk).HasName("PK__Procedur__6D1B624410FF9294");

            entity.ToTable("ProcedureDone");

            entity.Property(e => e.ProcedureDoneSk).HasColumnName("ProcedureDoneSK");
            entity.Property(e => e.ProcedureFk).HasColumnName("ProcedureFK");
            entity.Property(e => e.TreatmentFk).HasColumnName("TreatmentFK");

            entity.HasOne(d => d.ProcedureFkNavigation).WithMany(p => p.ProcedureDones)
                .HasForeignKey(d => d.ProcedureFk)
                .HasConstraintName("FK_ProcedureDone_ToProcedure");

            entity.HasOne(d => d.TreatmentFkNavigation).WithMany(p => p.ProcedureDones)
                .HasForeignKey(d => d.TreatmentFk)
                .HasConstraintName("FK_ProcedureDone_ToTreatment");
        });

        modelBuilder.Entity<Species>(entity =>
        {
            entity.HasKey(e => e.SpeciesSk).HasName("PK__Species__A938B6359D28565D");

            entity.Property(e => e.SpeciesSk).HasColumnName("SpeciesSK");
            entity.Property(e => e.Name).HasMaxLength(50);
        });

        modelBuilder.Entity<Treatment>(entity =>
        {
            entity.HasKey(e => e.TreatmentSk).HasName("PK__Treatmen__1A57E42056AD3EDC");

            entity.ToTable("Treatment");

            entity.Property(e => e.TreatmentSk).HasColumnName("TreatmentSK");
            entity.Property(e => e.AnimalFk).HasColumnName("AnimalFK");

            entity.HasOne(d => d.AnimalFkNavigation).WithMany(p => p.Treatments)
                .HasForeignKey(d => d.AnimalFk)
                .HasConstraintName("FK_Treatment_ToAnimal");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
