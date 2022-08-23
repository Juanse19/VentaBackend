using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VentaAPI.DTOs;
using VentaAPI.Entidades;

namespace VentaAPI.Controllers
{
    [Route("api/producto")]
    [ApiController]
    public class ProductoController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        private readonly IMapper mapper;

        public ProductoController(ApplicationDbContext context,
            IMapper mapper)
        {
            this.context = context;
            this.mapper = mapper;
        }

        [HttpGet]
        public async Task<ActionResult<List<ProductoDTO>>> Get()
        {
            var cliente = await context.Producto.ToListAsync();
            return mapper.Map<List<ProductoDTO>>(cliente);
        }

        [HttpGet("{Id:int}")]
        public async Task<ActionResult<ProductoDTO>> Gat(int Id)
        {
            var producto = await context.Producto.FirstOrDefaultAsync(x => x.IdProducto == Id);
            if (producto == null)
            {
                return NotFound();
            }

            return mapper.Map<ProductoDTO>(producto);
        }

        [HttpPost]
        public async Task<ActionResult> Post([FromBody] ProductoCreacionDTO productoCreacionDTO)
        {
            var producto = mapper.Map<Producto>(productoCreacionDTO);
            context.Add(producto);
            await context.SaveChangesAsync();
            return NoContent();
        }

        [HttpPut("{Id:int}")]
        public async Task<ActionResult> Put(int Id, [FromBody] ProductoCreacionDTO productoCreacionDTO)
        {
            var producto = await context.Producto.FirstOrDefaultAsync(a => a.IdProducto == Id);

            if (producto == null)
            {
                return NotFound();
            }

            producto = mapper.Map(productoCreacionDTO, producto);

            await context.SaveChangesAsync();
            return NoContent();
        }

        [HttpDelete("{id:int}")]
        public async Task<ActionResult> Delete(int id)
        {
            var producto = await context.Producto.AnyAsync(x => x.IdProducto == id);

            if (!producto)
            {
                return NotFound();
            }

            context.Remove(new Producto() { IdProducto = id });
            await context.SaveChangesAsync();
            return NoContent();
        }

    }
}
