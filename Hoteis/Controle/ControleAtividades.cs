using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleAtividades
    {
        private static List<Atividade> listaAtividades = new List<Atividade>();

        public static void Adicionar(Atividade pAtividade)
        {
            listaAtividades.Add(pAtividade);
        }

        public Atividade BuscarAtividade()
        {
            return null;
        }

        public List<Atividade> ListarAtividades()
        {
            return listaAtividades;
        }
    }
}