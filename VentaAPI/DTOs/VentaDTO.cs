using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.DTOs
{
    public class VentaDTO
    {

        public int IdVenta { get; set; }
        public int? IdCliente { get; set; }
        public DateTime? FechaRegistro { get; set; }

        public List<ProductoDTO> listaProductos { get; set; }
    }
}
