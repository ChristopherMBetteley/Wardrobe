//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeMVCApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Top
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Top()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int TopsID { get; set; }
        public string TopsName { get; set; }
        public string TopsPhoto { get; set; }
        public string TopsColor { get; set; }
        public string TopsType { get; set; }
        public Nullable<int> SeasonID { get; set; }
        public Nullable<int> OccassionID { get; set; }
    
        public virtual Occasssion Occasssion { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
        public virtual Season Season { get; set; }
    }
}
