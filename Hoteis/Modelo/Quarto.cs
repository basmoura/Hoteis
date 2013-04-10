using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Hoteis.Modelo
{
    public class Quarto
    {
        
        private int nrQuarto;
        private int qtdCamas;
        private double tamanho;
        private double vlDiaria;

        private Hotel hotel;
        private TipoQuarto tipoQuarto;

        public Quarto() { }

        public Quarto(Hotel pHotel, int pNrQuarto)
        {
            this.hotel = pHotel;
            this.nrQuarto = pNrQuarto;
        }

        public int NrQuarto
        {
            get { return nrQuarto; }
            set { nrQuarto = value; }
        }

        public int QtdCamas
        {
            get { return qtdCamas; }
            set { qtdCamas = value; }
        }

        public double Tamanho
        {
            get { return tamanho; }
            set { tamanho = value; }
        }

        public double VlDiaria
        {
            get { return vlDiaria; }
            set { vlDiaria = value; }
        }

        public Hotel Hotel
        {
            get { return hotel; }
            set { hotel = value; }
        }

        public TipoQuarto TipoQuarto
        {
            get { return tipoQuarto; }
            set { tipoQuarto = value; }
        }
    }
}