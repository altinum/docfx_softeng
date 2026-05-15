using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WinFormsApp1.Models3;

public partial class SeBikestoreContext : DbContext
{
    public SeBikestoreContext()
    {
    }

    public SeBikestoreContext(DbContextOptions<SeBikestoreContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Brands> Brands { get; set; }

    public virtual DbSet<Categories> Categories { get; set; }

    public virtual DbSet<Customers> Customers { get; set; }

    public virtual DbSet<OrderItems> OrderItems { get; set; }

    public virtual DbSet<Orders> Orders { get; set; }

    public virtual DbSet<Products> Products { get; set; }

    public virtual DbSet<Staffs> Staffs { get; set; }

    public virtual DbSet<Stocks> Stocks { get; set; }

    public virtual DbSet<Stores> Stores { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=bit.uni-corvinus.hu;Initial Catalog=se_bikestore;User ID=hallgato;Password=Password123;Trust Server Certificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Brands>(entity =>
        {
            entity.HasKey(e => e.BrandSk).HasName("PK__brands__5E5A8E278A0923B7");

            entity.ToTable("brands");

            entity.Property(e => e.BrandSk).HasColumnName("brand_SK");
            entity.Property(e => e.BrandName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("brand_name");
        });

        modelBuilder.Entity<Categories>(entity =>
        {
            entity.HasKey(e => e.CategorySk).HasName("PK__categori__D54EE9B4329A8114");

            entity.ToTable("categories");

            entity.Property(e => e.CategorySk).HasColumnName("category_SK");
            entity.Property(e => e.CategoryName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("category_name");
        });

        modelBuilder.Entity<Customers>(entity =>
        {
            entity.HasKey(e => e.CustomerSk).HasName("PK__customer__CD65CB8506E3AB24");

            entity.ToTable("customers");

            entity.Property(e => e.CustomerSk).HasColumnName("customer_SK");
            entity.Property(e => e.City)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("city");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.FirstName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("first_name");
            entity.Property(e => e.LastName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("last_name");
            entity.Property(e => e.Phone)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("phone");
            entity.Property(e => e.State)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("state");
            entity.Property(e => e.Street)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("street");
            entity.Property(e => e.ZipCode)
                .HasMaxLength(5)
                .IsUnicode(false)
                .HasColumnName("zip_code");
        });

        modelBuilder.Entity<OrderItems>(entity =>
        {
            entity.HasKey(e => new { e.OrderFk, e.ProductFk });

            entity.ToTable("order_items");

            entity.Property(e => e.OrderFk).HasColumnName("order_FK");
            entity.Property(e => e.ProductFk).HasColumnName("product_FK");
            entity.Property(e => e.Discount)
                .HasColumnType("decimal(4, 2)")
                .HasColumnName("discount");
            entity.Property(e => e.ListPrice)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("list_price");
            entity.Property(e => e.Quantity).HasColumnName("quantity");

            entity.HasOne(d => d.OrderFkNavigation).WithMany(p => p.OrderItems)
                .HasForeignKey(d => d.OrderFk)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_order_items_orders");

            entity.HasOne(d => d.ProductFkNavigation).WithMany(p => p.OrderItems)
                .HasForeignKey(d => d.ProductFk)
                .HasConstraintName("FK_order_items_products");
        });

        modelBuilder.Entity<Orders>(entity =>
        {
            entity.HasKey(e => e.OrderSk).HasName("PK__orders__4659622952F1D542");

            entity.ToTable("orders");

            entity.Property(e => e.OrderSk).HasColumnName("order_SK");
            entity.Property(e => e.CustomerFk).HasColumnName("customer_FK");
            entity.Property(e => e.OrderDate).HasColumnName("order_date");
            entity.Property(e => e.OrderStatus).HasColumnName("order_status");
            entity.Property(e => e.RequiredDate).HasColumnName("required_date");
            entity.Property(e => e.ShippedDate).HasColumnName("shipped_date");
            entity.Property(e => e.StaffFk).HasColumnName("staff_FK");
            entity.Property(e => e.StoreFk).HasColumnName("store_FK");

            entity.HasOne(d => d.CustomerFkNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.CustomerFk)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK__orders__customer__04E4BC85");

            entity.HasOne(d => d.StaffFkNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.StaffFk)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__orders__staff_id__05D8E0BE");

            entity.HasOne(d => d.StoreFkNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.StoreFk)
                .HasConstraintName("FK__orders__store_id__06CD04F7");
        });

        modelBuilder.Entity<Products>(entity =>
        {
            entity.HasKey(e => e.ProductSk).HasName("PK__products__47027DF50B624D99");

            entity.ToTable("products");

            entity.Property(e => e.ProductSk).HasColumnName("product_SK");
            entity.Property(e => e.BrandId).HasColumnName("brand_id");
            entity.Property(e => e.CategoryFk).HasColumnName("category_FK");
            entity.Property(e => e.ListPrice)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("list_price");
            entity.Property(e => e.ModelYear).HasColumnName("model_year");
            entity.Property(e => e.ProductName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("product_name");

            entity.HasOne(d => d.Brand).WithMany(p => p.Products)
                .HasForeignKey(d => d.BrandId)
                .HasConstraintName("FK__products__brand___07C12930");

            entity.HasOne(d => d.CategoryFkNavigation).WithMany(p => p.Products)
                .HasForeignKey(d => d.CategoryFk)
                .HasConstraintName("FK__products__catego__08B54D69");
        });

        modelBuilder.Entity<Staffs>(entity =>
        {
            entity.HasKey(e => e.StaffSk).HasName("PK__staffs__1963DD9C45721F05");

            entity.ToTable("staffs");

            entity.HasIndex(e => e.Email, "UQ__staffs__AB6E6164BBBC75FD").IsUnique();

            entity.Property(e => e.StaffSk).HasColumnName("staff_SK");
            entity.Property(e => e.Active).HasColumnName("active");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.FirstName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("first_name");
            entity.Property(e => e.LastName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("last_name");
            entity.Property(e => e.ManagerFk).HasColumnName("manager_FK");
            entity.Property(e => e.Phone)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("phone");
            entity.Property(e => e.StoreFk).HasColumnName("store_FK");

            entity.HasOne(d => d.ManagerFkNavigation).WithMany(p => p.InverseManagerFkNavigation)
                .HasForeignKey(d => d.ManagerFk)
                .HasConstraintName("FK__staffs__manager___09A971A2");

            entity.HasOne(d => d.StoreFkNavigation).WithMany(p => p.Staffs)
                .HasForeignKey(d => d.StoreFk)
                .HasConstraintName("FK__staffs__store_id__0A9D95DB");
        });

        modelBuilder.Entity<Stocks>(entity =>
        {
            entity.HasKey(e => new { e.StoreSk, e.ProductFk }).HasName("PK__stocks__E68284D3B59CC450");

            entity.ToTable("stocks");

            entity.Property(e => e.StoreSk).HasColumnName("store_SK");
            entity.Property(e => e.ProductFk).HasColumnName("product_FK");
            entity.Property(e => e.Quantity).HasColumnName("quantity");

            entity.HasOne(d => d.ProductFkNavigation).WithMany(p => p.Stocks)
                .HasForeignKey(d => d.ProductFk)
                .HasConstraintName("FK__stocks__product___0B91BA14");

            entity.HasOne(d => d.StoreSkNavigation).WithMany(p => p.Stocks)
                .HasForeignKey(d => d.StoreSk)
                .HasConstraintName("FK__stocks__store_id__0C85DE4D");
        });

        modelBuilder.Entity<Stores>(entity =>
        {
            entity.HasKey(e => e.StoreSk).HasName("PK__stores__A2F2A30C3B408952");

            entity.ToTable("stores");

            entity.Property(e => e.StoreSk).HasColumnName("store_SK");
            entity.Property(e => e.City)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("city");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Phone)
                .HasMaxLength(25)
                .IsUnicode(false)
                .HasColumnName("phone");
            entity.Property(e => e.State)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("state");
            entity.Property(e => e.StoreName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("store_name");
            entity.Property(e => e.Street)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("street");
            entity.Property(e => e.ZipCode)
                .HasMaxLength(5)
                .IsUnicode(false)
                .HasColumnName("zip_code");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
