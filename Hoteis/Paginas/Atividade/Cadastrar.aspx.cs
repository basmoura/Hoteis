using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;

namespace Hoteis.Paginas.Atividade
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        List<Modelo.Cliente> clientes = ControleClientes.ListarClientes();
        List<Modelo.Cliente> clientes2 = new List<Modelo.Cliente>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();

                lbxClientes.DataSource = clientes;
                lbxClientes.DataBind();

                lbxClientes2.DataSource = clientes2;
                lbxClientes2.DataBind();
            }
        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void ddlHoteis_SelectedIndexChanged(object sender, EventArgs e)
        {
            Modelo.Hotel hotel = ControleHoteis.BuscarHotel(Convert.ToInt32(ddlHoteis.SelectedValue));

            if (hotel != null)
            {
                ddlAreaLazer.DataSource = ControleAreaLazer.ConsultarPorHotel(hotel);
                ddlAreaLazer.DataBind();
            }
        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lbxClientes.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lbxClientes2.Items.Add(item);
                }
            }
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lbxClientes2.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    lbxClientes2.Items.Remove(item);
                    lbxClientes.Items.Add(item);
                }
            }
        }
    }
}