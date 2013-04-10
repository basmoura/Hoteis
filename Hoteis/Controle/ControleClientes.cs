using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleClientes
    {
        private static List<Cliente> listaClientes = new List<Cliente>();

        public static void Adicionar(Cliente pCliente)
        {
            if (listaClientes.Any(c => c.CPF == pCliente.CPF))
                throw new Exception("Cliente já cadastrado");
            else
                listaClientes.Add(pCliente);
        }

        public static Cliente BuscarCliente(string pCPF)
        {
            return listaClientes.Find(c => c.CPF == pCPF);
        }

        public static List<Cliente> ListarClientes()
        {
            return listaClientes;
        }
    }
}