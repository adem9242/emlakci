//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace emlakci.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ILCELER
    {
        public int ID { get; set; }
        public string ILCEADI { get; set; }
        public Nullable<int> IL_ID { get; set; }
    
        public virtual ILLER ILLER { get; set; }
    }
}
