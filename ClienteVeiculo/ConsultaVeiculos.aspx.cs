using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteVeiculo
{
    public partial class ConsultaVeiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect($"~\\AlteracaoVeiculo.aspx?i={(sender as LinkButton).CommandArgument}");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect($"~\\ExclusaoVeiculo.aspx?i={(sender as LinkButton).CommandArgument}");
        }
    }
}