using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleHoteis
    {
        private static List<Hotel> listaHoteis = new List<Hotel>();

        public static void Adicionar(Hotel pHotel)
        {
            if (listaHoteis.Any(h => h.Codigo == pHotel.Codigo))
                throw new Exception("Hotel já cadastrado");

            listaHoteis.Add(pHotel);
        }

        public static Hotel BuscarHotel(int pCodigo)
        {
            return listaHoteis.Find(h => h.Codigo == pCodigo);
        }

        public static List<Hotel> ListarHoteis()
        {
            return listaHoteis;
        }
    }
}