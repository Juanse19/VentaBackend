using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VentaAPI.DTOs
{
    public class DetalleVentaDTO
    {
        public string Producto { get; set; }
        public int? Cantidad { get; set; }
        public decimal? Valor_Unitario { get; set; }
        public decimal? Valor_Total { get; set; }
    }
}
