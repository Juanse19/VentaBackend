using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Linq;
using VentaAPI.DTOs;

namespace VentaAPI.Controllers
{
    [Route("api/venta")]
    [ApiController]
    public class VentaController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        private readonly IMapper mapper;

        public VentaController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        [Route("Productos/{busqueda}")]
        public async Task<IActionResult> Productos(string busqueda)
        {
            List<ProductoDTO> lista = new List<ProductoDTO>();
            try
            {
                lista = await context.Producto
                .Where(p => string.Concat(p.Nombre.ToLower()).Contains(busqueda.ToLower()))
                .Select(p => new ProductoDTO()
                {
                    IdProducto = p.IdProducto,
                    Nombre = p.Nombre,
                    Valor_Unitario = p.Valor_Unitario,
                    Stock = p.Stock
                }).ToListAsync();


                return StatusCode(StatusCodes.Status200OK, lista);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, lista);
            }
        }

        [HttpPost]
        [Route("Registrar")]
        public IActionResult Registrar([FromBody] VentaDTO request)
        {
            try
            {

                XElement productos = new XElement("Productos");
                foreach (ProductoDTO item in request.listaProductos)
                {
                    productos.Add(new XElement("Item",
                        new XElement("IdProducto", item.IdProducto),
                        new XElement("Cantidad", item.Cantidad),
                        new XElement("Valor_Unitario", item.Valor_Unitario),
                        new XElement("Valor_Total", item.Valor_Total)
                        ));
                }

                using (SqlConnection con = new SqlConnection(context.Database.GetConnectionString()))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_RegistrarVenta", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("idCliente", SqlDbType.Int).Value = request.IdCliente;
                    cmd.Parameters.Add("productos", SqlDbType.Xml).Value = productos.ToString();
                    cmd.ExecuteNonQuery();
                }

                return StatusCode(StatusCodes.Status200OK);
            }
            catch (Exception ex)
            {

                var str = ex.Message;
                return StatusCode(StatusCodes.Status500InternalServerError);
            }

        }

    }
}
