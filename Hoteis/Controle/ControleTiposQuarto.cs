using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleTiposQuarto
    {
        private static List<TipoQuarto> listaTipos = new List<TipoQuarto>();

        public static void Adicionar(TipoQuarto pTipoQuarto)
        {
            if (listaTipos.Any(t => t.Id == pTipoQuarto.Id))
                throw new Exception("Tipo de Quarto já cadastrado");

            listaTipos.Add(pTipoQuarto);
        }

        public static TipoQuarto BuscarTipo(int pIdTipo) {
            return listaTipos.Find(t => t.Id == pIdTipo);
        }

        public static List<TipoQuarto> ListarTipos()
        {
            return listaTipos;
        }
    }
}