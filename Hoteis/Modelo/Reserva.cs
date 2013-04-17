using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class Reserva
    {
        private Cliente cliente;
        private string dataReserva;
        private Hotel hotel;
        private Quarto quarto;

        public Reserva() { }

        public Cliente Cliente
        {
            get { return cliente; }
            set { cliente = value; }
        }

        public string DataReserva
        {
            get { return dataReserva; }
            set { dataReserva = value; }
        }

        public Hotel Hotel
        {
            get { return hotel; }
            set { hotel = value; }
        }

        public Quarto Quarto
        {
            get { return quarto; }
            set { quarto = value; }
        }
    }
}