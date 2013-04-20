using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.Reserva
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();

                ddlClientes.DataSource = ControleClientes.ListarClientes();
                ddlClientes.DataBind();
            }
        }

        protected void cvData_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtDataReserva.Text != "__/__/____")
            {
                DateTime dataReserva = Convert.ToDateTime(txtDataReserva.Text);

                if (dataReserva < DateTime.Now.Date)
                    args.IsValid = false;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    Modelo.Reserva reserva = new Modelo.Reserva();

                    Modelo.Hotel hotel = ControleHoteis.BuscarHotel(Convert.ToInt32(ddlHoteis.SelectedValue));
                    Modelo.Quarto quarto = ControleQuartos.BuscarQuarto(Convert.ToInt32(ddlQuartos.SelectedValue), hotel);
                    Modelo.Cliente cliente = ControleClientes.BuscarCliente(ddlClientes.SelectedValue);

                    if (hotel != null && quarto != null && cliente != null)
                    {
                        quarto.Disponivel = false;

                        reserva.Codigo = Convert.ToInt32(txtCodigo.Text);
                        reserva.Hotel = hotel;
                        reserva.Quarto = quarto;
                        reserva.Cliente = cliente;
                        reserva.DataReserva = Convert.ToDateTime(txtDataReserva.Text);

                        ControleReserva.Adicionar(reserva);

                        Utils.Limpar(this);
                    }
                }
                catch (Exception ex)
                {
                    Utils.Display(ex.Message);
                }
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {

        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void ddlClientes_DataBinding(object sender, EventArgs e)
        {
            ddlClientes.Items.Clear();
            ddlClientes.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void ddlQuartos_DataBinding(object sender, EventArgs e)
        {
            ddlQuartos.Items.Clear();
            ddlQuartos.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void ddlHoteis_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlQuartos.DataSource = ControleQuartos.ConsultarQuartos(Convert.ToInt32(ddlHoteis.SelectedValue));
            ddlQuartos.DataBind();
        }
    }
}