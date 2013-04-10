using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.Tipo
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Label mensagem = (Label)Master.FindControl("lblMensagem");

            try
            {
                Modelo.TipoQuarto tipo = new Modelo.TipoQuarto();

                tipo.Id = Convert.ToInt32(txtIdTipo.Text);
                tipo.Descricao = txtDescricao.Text;

                ControleTiposQuarto.Adicionar(tipo);

                Master.DivMensagemVisible(true);
                mensagem.Text = "Tipo cadastrado com sucesso";
                Utils.Limpar(this);
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