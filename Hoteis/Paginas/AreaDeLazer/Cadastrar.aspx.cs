using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.AreaDeLazer
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();
            }
        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                Modelo.AreaLazer areaLazer = new Modelo.AreaLazer();

                Modelo.Hotel hotel = ControleHoteis.BuscarHotel(Convert.ToInt32(ddlHoteis.SelectedValue));

                if (hotel != null)
                {
                    areaLazer.Hotel = hotel;
                    areaLazer.Id = Convert.ToInt32(txtCodigo.Text);
                    areaLazer.Descricao = txtDescricao.Text;
                    areaLazer.CapacidadeMaxima = Convert.ToInt32(txtMaximoPessoas.Text);

                    ControleAreaLazer.Adicionar(areaLazer);
                    Utils.Limpar(this);
                }
                else
                {
                    throw new Exception("Hotel não encontrado");
                }
            }
            catch (Exception ex)
            {
                Master.DivMensagemVisible(false);
                Utils.Display(ex.Message);
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}