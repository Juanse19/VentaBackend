using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.DTOs
{
    public class ProductoCreacionDTO
    {
        public string Nombre { get; set; }
        public decimal? Valor_Unitario { get; set; }
        public int Stock { get; set; }
    }
}
