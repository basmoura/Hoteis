﻿using System;
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

        protected void ddlHoteis_SelectedIndexChanged(object sender, EventArgs e)
        {
            Modelo.Hotel hotel = ControleHoteis.BuscarHotel(Convert.ToInt32(ddlHoteis.SelectedValue));

            if (hotel != null)
            {
                ddlAreaLazer.DataSource = ControleAreaLazer.ConsultarPorHotel(hotel);
                ddlAreaLazer.DataBind();
            }
        }
    }
}