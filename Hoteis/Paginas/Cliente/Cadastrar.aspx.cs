using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.Cliente
{
    public partial class Cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Label lblMensagem = (Label)Master.FindControl("lblMensagem");

            try
            {
                Modelo.Cliente cliente = new Modelo.Cliente();

                cliente.CPF = txtCPF.Text;
                cliente.DataNascimento = txtDataNascimento.Text;
                cliente.Nome = txtNome.Text;
                cliente.Email = txtEmail.Text;
                cliente.Endereco = txtEndereco.Text;
                cliente.Telefone = txtTelefone.Text;
                cliente.Sexo = rbtSexo.SelectedValue;
                cliente.Estado = ddlEstado.SelectedValue;

                ControleClientes.Adicionar(cliente);

                Master.DivMensagemVisible(true);
                Master.Mensagem = "Cliente cadastrado com sucesso";
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