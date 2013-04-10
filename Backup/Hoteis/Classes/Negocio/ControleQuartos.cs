using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Classes.Modelo;

namespace Hoteis.Classes.Negocio
{
    public class ControleQuartos
    {
        private static List<Quarto> listaQuartos = new List<Quarto>();

        public void Adicionar(Quarto pQuarto)
        {
            if (listaQuartos.Any(q => q.Hotel.Codigo == pQuarto.Hotel.Codigo && q.NrQuarto == pQuarto.NrQuarto))
                throw new Exception("Este quarto já está cadastrado para este hotel");

            listaQuartos.Add(pQuarto);
        }
    }
}