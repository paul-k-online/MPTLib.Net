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
    
    public partial class PlcEventOld
    {
        public int Id { get; set; }
        public int PlcId { get; set; }
        public int LogPos { get; set; }
        public System.DateTime DateTime { get; set; }
        public int Msec { get; set; }
        public int n { get; set; }
        public double Value { get; set; }
        public string Message { get; set; }
        public Nullable<int> nn { get; set; }
        public Nullable<int> s { get; set; }
    
        public virtual PLC PLC { get; set; }
    }
}