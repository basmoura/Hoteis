using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.Quarto
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlHoteis.DataSource = ControleHoteis.ListarHoteis();
                ddlHoteis.DataBind();

                ddlTipo.DataSource = ControleTiposQuarto.ListarTipos();
                ddlTipo.DataBind();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Label mensagem = (Label)Master.FindControl("lblMensagem");

            try
            {
                Modelo.Hotel hotel = ControleHoteis.BuscarHotel(Convert.ToInt32(ddlHoteis.SelectedValue));
                Modelo.TipoQuarto tipo = ControleTiposQuarto.BuscarTipo(Convert.ToInt32(ddlTipo.SelectedValue));

                Modelo.Quarto quarto = new Modelo.Quarto();

                quarto.Hotel = hotel;
                quarto.TipoQuarto = tipo;
                quarto.NrQuarto = string.IsNullOrEmpty(txtNrQuarto.Text) ? 0 : Convert.ToInt32(txtNrQuarto.Text);
                quarto.QtdCamas = string.IsNullOrEmpty(txtCamas.Text) ? 0 : Convert.ToInt32(txtCamas.Text);
                quarto.Tamanho = string.IsNullOrEmpty(txtTamanho.Text) ? 0 : Convert.ToDouble(txtTamanho.Text);
                quarto.VlDiaria = string.IsNullOrEmpty(txtValorDiaria.Text) ? 0 : Convert.ToDecimal(txtValorDiaria.Text);
                quarto.Disponivel = true;

                ControleQuartos.Adicionar(quarto);

                Master.DivMensagemVisible(true);

                mensagem.Text = "Quarto cadastrado com sucesso";
                Utils.Limpar(this);
            }
            catch (Exception ex)
            {
                Master.DivMensagemVisible(false);
                Utils.Display(ex.Message);
            }
        }

        protected void ddlHoteis_DataBinding(object sender, EventArgs e)
        {
            ddlHoteis.Items.Clear();
            ddlHoteis.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void ddlTipos_DataBinding(object sender, EventArgs e)
        {
            ddlTipo.Items.Clear();
            ddlTipo.Items.Add(new ListItem("Selecione", "0"));
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}