using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class Cliente
    {
        private string cpf;
        private DateTime dataNascimento;
        private string nome;
        private string email;
        private string endereco;
        private string telefone;
        private string sexo;
        private string estado;

        public Cliente() { }

        public string CPF
        {
            get { return cpf; }
            set { cpf = value; }
        }

        public DateTime DataNascimento
        {
            get { return dataNascimento; }
            set { dataNascimento = value; }
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }


        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }


        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }


        public string Sexo
        {
            get { return sexo; }
            set { sexo = value; }
        }


        public string Estado
        {
            get { return estado; }
            set { estado = value; }
        }
    }
}