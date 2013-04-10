using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class TipoQuarto
    {
        private int id;
        private string descricao;

        public TipoQuarto() { }

        public TipoQuarto(int pId)
        {
            this.id = pId;
        }

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
    }
}