using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.Entidades
{
    public class Cliente
    {
        //public Cliente()
        //{
        //    Venta = new HashSet<Venta>();
        //}

        public int IdCliente { get; set; }
        public int Cedula { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }

        public virtual ICollection<Venta> Venta { get; set; }
    }
}
