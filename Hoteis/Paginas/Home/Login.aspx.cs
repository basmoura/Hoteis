using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle.Exceptions;

namespace Hoteis.Paginas.Home
{
    public partial class Login : System.Web.UI.Page
    {
        
        Dictionary<string, int> login = new Dictionary<string, int>();


        protected void Page_Load(object sender, EventArgs e)
        {
            login.Add("basmoura", 123456);
            login.Add("thiers", 24); 
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                foreach (var item in login)
                {
                    if ((item.Key == txtUsuario.Text) && item.Value == Convert.ToInt32(txtSenha.Text))
                    {
                        Session["Usuario"] = item.Key;
                        Response.Redirect("Index.aspx");
                    }
                    else
                        throw new Exception("Usuário e/ou senha inválidos");
                }
            }
            catch (Exception ex)
            {
                Utils.Display(ex.Message);
                Utils.Limpar(this);
            }
        }
    }
}