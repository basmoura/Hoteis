using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleQuartos
    {
        private static List<Quarto> listaQuartos = new List<Quarto>();

        public static void Adicionar(Quarto pQuarto)
        {
            if (listaQuartos.Any(q => q.Hotel.Codigo == pQuarto.Hotel.Codigo && q.NrQuarto == pQuarto.NrQuarto))
                throw new Exception("Este quarto já está cadastrado para este hotel");

            listaQuartos.Add(pQuarto);
        }

        public static Quarto BuscarQuarto(int pNrQuarto, Hotel pHotel)
        {
            return listaQuartos.Find(q => q.NrQuarto == pNrQuarto && q.Hotel == pHotel);
        }

        public static List<Quarto> ListarQuartos()
        {
            return listaQuartos;
        }
    }
}