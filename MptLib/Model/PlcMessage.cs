//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MPT.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class PlcMessage
    {
        public PlcMessage()
        {
            this.PlcEvents = new HashSet<PlcEvent>();
        }
    
        public int PlcId { get; set; }
        public int Number { get; set; }
        public string Text { get; set; }
        public Nullable<short> Group { get; set; }
    
        public virtual PLC PLC { get; set; }
        public virtual ICollection<PlcEvent> PlcEvents { get; set; }
    }
}
