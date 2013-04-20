using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Hoteis.Modelo;

namespace Hoteis.Controle
{
    public class ControleCheckout
    {
        private static List<Checkout> listaCheckouts = new List<Checkout>();

        public static void Adicionar(Checkout pCheckout)
        {
            if (listaCheckouts.Any(c => c.Reserva.Codigo == pCheckout.Reserva.Codigo))
                throw new Exception("Checkout já cadastrado");

            listaCheckouts.Add(pCheckout);
        }

        public static Decimal CalcularTotalDiarias(int pQtdDias, decimal pVlDiaria)
        {
            return decimal.Round(pQtdDias * pVlDiaria, 2);
        }

        public static List<Checkout> Listar()
        {
            return listaCheckouts.OrderBy(c => c.DataSaida).ToList();
        }

        public static List<Checkout> ConsultarCheckouts(int pCodigoHotel, DateTime pDataInicio, DateTime pDataFim)
        {
            var checkout = from i in listaCheckouts
                           where (pCodigoHotel == 0 || pCodigoHotel == i.Hotel.Codigo) &&
                                 (i.DataSaida >= pDataInicio && i.DataSaida <= pDataFim)
                           orderby (i.DataSaida)
                           select i;

            return checkout.ToList();
        }
    }
}