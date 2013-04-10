using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Classes.Modelo;

namespace Hoteis.Classes.Negocio
{
    public class ControleHoteis
    {
        private static List<Hotel> listaHoteis = new List<Hotel>();

        public void Adicionar(Hotel pHotel)
        {
            if (listaHoteis.Any(h => h.Codigo == pHotel.Codigo))
                throw new Exception("Hotel já cadastrado");

            listaHoteis.Add(pHotel);
        }
    }
}