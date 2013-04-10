using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Classes.Modelo
{
    public class TipoQuarto
    {
        private int id;
        private string descricao;

        public TipoQuarto(int pId)
        {
            this.id = pId;
        }

        public int Id
        {
            get { return id; }
        }

        public string Descricao
        {
            get { return descricao; }
            set { descricao = value; }
        }
    }
}