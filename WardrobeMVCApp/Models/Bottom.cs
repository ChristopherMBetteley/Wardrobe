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
    
    public partial class Bottom
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bottom()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int BottomsID { get; set; }
        public string BottomsName { get; set; }
        public string BottomsPhoto { get; set; }
        public string BottomsColor { get; set; }
        public string BottomsType { get; set; }
        public Nullable<int> SeasonID { get; set; }
        public Nullable<int> OccassionID { get; set; }
    
        public virtual Occasssion Occasssion { get; set; }
        public virtual Season Season { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Outfit> Outfits { get; set; }
    }
}
