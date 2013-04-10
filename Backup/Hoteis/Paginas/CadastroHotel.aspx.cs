using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Classes.Modelo;
using Hoteis.Classes.Negocio;

namespace Hoteis.Paginas
{
    public partial class CadastroHotel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                Hotel hotel = new Hotel();

                hotel.Codigo = Int32.Parse(txtCodigo.Text);
                hotel.Nome = txtEstado.Text;
                hotel.Endereco = txtEndereco.Text;
                hotel.Telefone = txtTelefone.Text;
                hotel.Cidade = txtCidade.Text;
                hotel.Estado = txtEstado.Text;

                ControleHoteis controle = new ControleHoteis();
                controle.Adicionar(hotel);
            }
            catch (Exception ex)
            {
            }
        }
    }
}