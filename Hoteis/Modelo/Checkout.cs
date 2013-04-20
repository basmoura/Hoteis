using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class Checkout
    {
        private Cliente cliente;
        private DateTime dataSaida;
        private Hotel hotel;
        private int qtdDias;
        private Reserva reserva;
        private decimal valorTotal;

        public Checkout() { }

        public Cliente Cliente 
        {
            get { return cliente; }
            set { cliente = value; }
        }

        public DateTime DataSaida
        {
            get { return dataSaida; }
            set { dataSaida = value; }
        }

        public Hotel Hotel
        {
            get { return hotel; }
            set { hotel = value; }
        }

        public int QtdDias
        {
            get { return qtdDias; }
            set { qtdDias = value; }
        }

        public Reserva Reserva
        {
            get { return reserva; }
            set { reserva = value; }
        }

        public decimal ValorTotal
        {
            get { return valorTotal; }
            set { valorTotal = value; }
        }
    }
}