//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CodeVista.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Yorumlar
    {
        public int YorumİD { get; set; }
        public int KullaniciİD { get; set; }
        public int KaynakİD { get; set; }
        public string YorumMetni { get; set; }
        public System.DateTime ZamanDamgasi { get; set; }
    
        public virtual Kullanicilar Kullanicilar { get; set; }
    }
}
