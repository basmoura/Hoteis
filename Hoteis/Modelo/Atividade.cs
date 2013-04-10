using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class Atividade
    {
        private string data;
        private string nome;
        private AreaLazer areaLazer;
        private List<Cliente> clientes;

        public Atividade() { }

        public string Data
        {
            get { return data; }
            set { data = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public AreaLazer AreaLazer
        {
            get { return areaLazer; }
            set { areaLazer = value; }
        }

        public List<Cliente> Clientes
        {
            get { return clientes; }
            set { clientes = value; }
        }
    }
}