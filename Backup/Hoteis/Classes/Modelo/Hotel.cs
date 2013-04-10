using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Classes.Modelo
{
    public class Hotel
    {
        private int codigo;
        private string cidade;
        private string estado;
        private string endereco;
        private string nome;
        private string telefone;
        private List<Quarto> quartos;

        public Hotel()
        {
            quartos = new List<Quarto>();
        }

        public int Codigo
        {
            get { return codigo; }
            set { codigo = value; }
        }

        public string Cidade
        {
            get { return cidade; }
            set { cidade = value; }
        }

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }

        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }

    }
}