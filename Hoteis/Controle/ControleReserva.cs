using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleReserva
    {
        private static List<Reserva> listaReservas = new List<Reserva>();

        public static void Adicionar(Reserva pReserva)
        {
            if (listaReservas.Any(r => r.Cliente.CPF == pReserva.Cliente.CPF &&
                                       r.DataReserva == pReserva.DataReserva &&
                                       r.Hotel.Codigo == pReserva.Hotel.Codigo))
            {
                throw new Exception("Este cliente já possui uma reserva neste mesmo dia e hotel");
            }

            listaReservas.Add(pReserva);
        }

        public static List<Reserva> ConsultarReservas(int pIdHotel, string pCliente, DateTime pDataReserva)
        {
            var reservas = from r in listaReservas
                           where (pIdHotel == 0 || r.Hotel.Codigo == pIdHotel) &&
                                 (string.IsNullOrEmpty(pCliente) || r.Cliente.Nome.Contains(pCliente)) &&
                                 (pDataReserva == DateTime.MinValue || r.DataReserva == pDataReserva)
                           select r;

            return reservas.ToList();
        }

        public static Reserva BuscarReserva(int pCodigo)
        {
            return listaReservas.Find(r => r.Codigo == pCodigo);
        }
    }
}