using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Classes.Modelo;

namespace Hoteis.Classes.Negocio
{
    public class ControleTiposQuarto
    {
        private static List<TipoQuarto> listaTipos = new List<TipoQuarto>();

        public void Adicionar(TipoQuarto pTipoQuarto)
        {
            if (listaTipos.Any(t => t.Id == pTipoQuarto.Id))
                throw new Exception("Tipo de Quarto já cadastrado");

            listaTipos.Add(pTipoQuarto);
        }
    }
}