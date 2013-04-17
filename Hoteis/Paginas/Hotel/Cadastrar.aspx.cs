using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;
using Hoteis.Modelo;

namespace Hoteis.Paginas.Hotel
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
                Modelo.Hotel hotel = new Modelo.Hotel();

                hotel.Codigo = Int32.Parse(txtCodigo.Text);

                if (ControleHoteis.BuscarHotel(hotel.Codigo) != null)
                    throw new Exception("Hotel já cadastrado");

                hotel.Nome = txtNome.Text;
                hotel.Endereco = txtEndereco.Text;
                hotel.Telefone = txtTelefone.Text;
                hotel.Cidade = txtCidade.Text;
                hotel.Estado = txtEstado.Text;

                ControleHoteis.Adicionar(hotel);

                Master.DivMensagemVisible(true);
                mensagem.Text = "Hotel cadastrado com sucesso";
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