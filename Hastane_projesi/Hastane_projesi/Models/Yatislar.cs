//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Hastane_projesi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Yatislar
    {
        public System.DateTime yatis_tarihi { get; set; }
        public Nullable<System.DateTime> cikis_tarihi { get; set; }
        public int hasta_no { get; set; }
        public short doktor_no { get; set; }
        public byte oda_no { get; set; }
        public byte dept_no { get; set; }
        public int kayit_no { get; set; }
    
        public virtual Departmanlar Departmanlar { get; set; }
        public virtual Doktorlar Doktorlar { get; set; }
        public virtual hastalar hastalar { get; set; }
    }
}
