//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Error404_TLT.Models.Error404Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class KhachHang
    {
        public string SDT { get; set; }
        public string FullName { get; set; }
        public string Address { get; set; }
        public string User { get; set; }
        public string ThanhPho { get; set; }
        public string Quan { get; set; }
        public string Phuong { get; set; }
    
        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}
