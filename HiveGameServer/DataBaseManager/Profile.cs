//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataBaseManager
{
    using System;
    using System.Collections.Generic;
    
    public partial class Profile
    {
        public int idProfile { get; set; }
        public string imagePath { get; set; }
        public System.DateTime createdDate { get; set; }
        public string nickname { get; set; }
        public int FK_IdAccount { get; set; }
    
        public virtual AccessAccount AccessAccount { get; set; }
    }
}
