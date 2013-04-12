using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;

namespace Hoteis.Paginas.Cliente
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvwClientes.DataSource = ControleClientes.ListarClientes();
                gvwClientes.DataBind();
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastrar.aspx");
        }

        protected void gvwClientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblCpf = (Label)e.Row.FindControl("lblCpf");
                Label lblIdade = (Label)e.Row.FindControl("lblIdade");
                Label lblEstado = (Label)e.Row.FindControl("lblEstado");

                Modelo.Cliente cliente = ControleClientes.BuscarCliente(lblCpf.Text);

                lblIdade.Text = ControleClientes.CalcularIdade(Convert.ToDateTime(cliente.DataNascimento)).ToString();

                switch (lblEstado.Text)
                {
                    case "A":
                        lblEstado.Text = "Alagoas";
                        break;
                    case "B":
                        lblEstado.Text = "Bahia";
                        break;
                    case "S":
                        lblEstado.Text = "Sergipe";
                        break;
                }
            }
        }
    }
}