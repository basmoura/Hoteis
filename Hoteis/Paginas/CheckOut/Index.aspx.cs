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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvwCheckouts.DataSource = ControleCheckout.Listar();
                gvwCheckouts.DataBind();

                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            try
            {
                int codigo = Convert.ToInt32(ddlHoteis.SelectedValue);
                DateTime dataInicio = Convert.ToDateTime(txtDataInicio.Text);
                DateTime dataFim = Convert.ToDateTime(txtDataFim.Text);

                gvwCheckouts.DataSource = ControleCheckout.ConsultarCheckouts(codigo, dataInicio, dataFim);
                gvwCheckouts.DataBind();
            }
            catch (Exception ex)
            {
                Utils.Display(ex.Message);
            }
        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }
    }
}