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
    
    public partial class Cart
    {
        public string User { get; set; }
        public string MaSP { get; set; }
        public Nullable<int> SL { get; set; }
    
        public virtual TaiKhoan TaiKhoan { get; set; }
        public virtual SanPham SanPham { get; set; }
    }
}
