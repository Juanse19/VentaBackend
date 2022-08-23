using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VentaAPI.DTOs;
using VentaAPI.Entidades;

namespace VentaAPI.Utilidades
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<Cliente, ClienteDTO>().ReverseMap();
            CreateMap<ClienteCreacionDTO, Cliente>();
            CreateMap<Producto, ProductoDTO>().ReverseMap();
            CreateMap<ProductoCreacionDTO, Producto>();
            CreateMap<DetalleVentaDTO, DetalleVenta>();
            CreateMap<VentaDTO, Venta>();
        }
    }
}
