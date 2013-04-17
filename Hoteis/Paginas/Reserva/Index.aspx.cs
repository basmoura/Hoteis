using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;

namespace Hoteis.Paginas.Reserva
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();

                gvwReservas.DataSource = ControleReserva.ConsultarReservas(0, "", DateTime.MinValue);
                gvwReservas.DataBind();
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            DateTime dataReserva = DateTime.MinValue.Date;
            int codigo = Convert.ToInt32(ddlHoteis.SelectedValue);

            if (txtDataReserva.Text != "__/__/____")
                dataReserva = Convert.ToDateTime(txtDataReserva.Text);

            gvwReservas.DataSource = ControleReserva.ConsultarReservas(codigo, txtCliente.Text, dataReserva);
            gvwReservas.DataBind();
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastrar.aspx");
        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }
    }
}