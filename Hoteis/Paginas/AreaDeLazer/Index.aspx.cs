﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hoteis.Controle;

namespace Hoteis.Paginas.AreaDeLazer
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvwAreasLazer.DataSource = ControleAreaLazer.ListarAreasLazer();
                gvwAreasLazer.DataBind();
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastrar.aspx");
        }
    }
}