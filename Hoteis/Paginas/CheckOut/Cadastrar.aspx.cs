using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.CheckOut
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            try
            {
                Modelo.Reserva reserva = ControleReserva.BuscarReserva(Convert.ToInt32(txtCodigo.Text));

                if (reserva == null)
                    throw new Exception("Código de reserva inválido");

                lblNomeCliente.Text = reserva.Cliente.Nome;
                lblNomeHotel.Text = reserva.Hotel.Nome;
                lblVlDataReserva.Text = reserva.DataReserva.ToShortDateString();
                lblTipoQuarto.Text = reserva.Quarto.TipoQuarto.Descricao;

            }
            catch (Exception ex)
            {
                Utils.Display(ex.Message);
            }

        }

        protected void cvData_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (!string.IsNullOrEmpty(lblVlDataReserva.Text))
            {
                DateTime dataReserva = Convert.ToDateTime(lblVlDataReserva.Text);
                DateTime dataSaida = Convert.ToDateTime(txtDataSaida.Text);

                if (dataReserva > dataSaida)
                    args.IsValid = false;
            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                Modelo.Reserva reserva = ControleReserva.BuscarReserva(Convert.ToInt32(txtCodigo.Text));

                if (reserva.Quarto.VlDiaria == 0)
                    throw new Exception("O valor da diária não foi cadastrado");

                int qtdDias = Convert.ToInt32(txtQtdDias.Text);


                decimal vlDiaria = reserva.Quarto.VlDiaria;

                lblVlTotal.Text = ControleCheckout.CalcularTotalDiarias(qtdDias, vlDiaria).ToString();
            }
            catch (Exception ex)
            {
                Utils.Display(ex.Message);
                    
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                Modelo.Reserva reserva = ControleReserva.BuscarReserva(Convert.ToInt32(txtCodigo.Text));

                Modelo.Checkout checkout = new Modelo.Checkout();

                checkout.Reserva = reserva;
                checkout.Hotel = reserva.Hotel;
                checkout.Cliente = reserva.Cliente;
                checkout.DataSaida = Convert.ToDateTime(txtDataSaida.Text);
                checkout.QtdDias = Convert.ToInt32(txtQtdDias.Text);
                checkout.ValorTotal = Convert.ToDecimal(lblVlTotal.Text);

                ControleCheckout.Adicionar(checkout);

                Response.Redirect("/Paginas/Home/Index.aspx");

            }
            catch (Exception ex)
            {
                Utils.Display(ex.Message);
            }
        }
    }
}