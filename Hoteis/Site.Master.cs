using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoteis
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public string Usuario
        {
            get { return Session["usuario"].ToString(); }
            set { Session["usuario"] = value; }
        }

        public string UsuarioLogado
        {
            get { return lblUsuario.Text; }
            set { lblUsuario.Text = string.Format("Bem vindo(a), {0}", value); }
        }

        public string MensagemSessao
        {
            get
            {
                if (Session["Mensagem"] != null)
                {
                    return Session["Mensagem"].ToString();
                }
                else
                {
                    DivMensagemVisible(false);
                    return string.Empty;
                }
            }
            set { Session["Mensagem"] = value; }
        }


        public String Mensagem
        {
            get { return lblMensagem.Text; }
            set { lblMensagem.Text = value; }
        }

        public void DivMensagemVisible(bool param)
        {
            mensagem.Visible = param;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioLogado = Usuario;
                Mensagem = MensagemSessao;
            }
        }
    }
}