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
    [Route("api/cliente")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        private readonly IMapper mapper;

        public ClienteController(ApplicationDbContext context,
            IMapper mapper)
        {
            this.context = context;
            this.mapper = mapper;
        }

        // Metodo get para listar Clientes
        [HttpGet]
        public async Task<ActionResult<List<ClienteDTO>>> Get()
        {
            var cliente = await context.Cliente.ToListAsync();
            return mapper.Map<List<ClienteDTO>>(cliente);
        }

        // Metodo get para listar Cliente por Id
        [HttpGet("{Id:int}")]
        public async Task<ActionResult<ClienteDTO>> Gat(int Id)
        {
            var cliente = await context.Cliente.FirstOrDefaultAsync(x => x.IdCliente == Id);
            if (cliente == null)
            {
                return NotFound();
            }

            return mapper.Map<ClienteDTO>(cliente);
        }

        // Metodo post para guardar Clientes
        [HttpPost]
        public async Task<ActionResult> Post([FromBody] ClienteCreacionDTO clienteCreacionDTO)
        {
            var cliente = mapper.Map<Cliente>(clienteCreacionDTO);
            context.Add(cliente);
            await context.SaveChangesAsync();
            return NoContent();
        }

        // Metodo put para editar un Clientes
        [HttpPut("{Id:int}")]
        public async Task<ActionResult> Put(int Id, [FromBody] ClienteCreacionDTO clienteCreacionDTO)
        {
            var cliente = await context.Cliente.FirstOrDefaultAsync(a => a.IdCliente == Id);

            if (cliente == null)
            {
                return NotFound();
            }

            cliente = mapper.Map(clienteCreacionDTO, cliente);

            await context.SaveChangesAsync();
            return NoContent();
        }

        // Metodo delete para eliminar Cliente
        [HttpDelete("{id:int}")]
        public async Task<ActionResult> Delete(int id)
        {
            var cliente = await context.Cliente.AnyAsync(x => x.IdCliente == id);

            if (!cliente)
            {
                return NotFound();
            }

            context.Remove(new Cliente() { IdCliente = id });
            await context.SaveChangesAsync();
            return NoContent();
        }

    }
}
