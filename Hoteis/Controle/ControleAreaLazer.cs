using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleAreaLazer
    {
        private static List<AreaLazer> listaAreaLazer = new List<AreaLazer>();

        public static void Adicionar(AreaLazer pAreaLazer)
        {
            if (listaAreaLazer.Any(a => a.Id == pAreaLazer.Id))
                throw new Exception("Area de Lazer já cadastrada");

            listaAreaLazer.Add(pAreaLazer);
        }

        public static AreaLazer BuscaAreaLazer(int pId)
        {
            return listaAreaLazer.Find(a => a.Id == pId);
        }

        public static List<AreaLazer> ListarAreasLazer()
        {
            return listaAreaLazer;
        }
    }
}