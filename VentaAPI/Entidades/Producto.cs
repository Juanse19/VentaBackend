using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.Entidades
{
    public class Producto
    {
        public Producto()
        {
            DetalleVenta = new HashSet<DetalleVenta>();
        }

        public int IdProducto { get; set; }
        public string Nombre { get; set; }
        public decimal Valor_Unitario { get; set; }
        public int Stock { get; set; }

        public virtual ICollection<DetalleVenta> DetalleVenta { get; set; }
    }
}
