﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E_ticaret_Projemiz.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class E_ticaretEntities : DbContext
    {
        public E_ticaretEntities()
            : base("name=E_ticaretEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<admin> admin { get; set; }
        public virtual DbSet<kategoriler> kategoriler { get; set; }
        public virtual DbSet<meslek> meslek { get; set; }
        public virtual DbSet<sehirler> sehirler { get; set; }
        public virtual DbSet<siparisler> siparisler { get; set; }
        public virtual DbSet<urunler> urunler { get; set; }
        public virtual DbSet<uyeler> uyeler { get; set; }
    }
}
