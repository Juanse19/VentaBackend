using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.Entidades
{
    public class Venta
    {
        public int IdVenta { get; set; }
        public int? IdCliente { get; set; }
        public DateTime? FechaRegistro { get; set; }

        public virtual Cliente IdClienteNavigation { get; set; }
        public virtual ICollection<DetalleVenta> DetalleVenta { get; set; }
    }
}
