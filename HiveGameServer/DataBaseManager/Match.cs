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
    
    public partial class Match
    {
        public int idMatch { get; set; }
        public string code { get; set; }
        public System.DateTime date { get; set; }
        public string state { get; set; }
        public int FK_IdAccount { get; set; }
    
        public virtual AccesAccount AccesAccount { get; set; }
    }
}
