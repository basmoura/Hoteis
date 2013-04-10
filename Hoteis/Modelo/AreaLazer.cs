using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class AreaLazer
    {
        private int id;
        private string descricao;
        private int capacidadeMaxima;
        private Hotel hotel;

        public AreaLazer() { }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }

        public int CapacidadeMaxima
        {
            get { return capacidadeMaxima; }
            set { capacidadeMaxima = value; }
        }

        public Hotel Hotel
        {
            get { return hotel; }
            set { hotel = value; }
        }
    }
}