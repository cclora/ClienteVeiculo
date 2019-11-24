using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteVeiculo
{
    public partial class InclusaoVeiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.DALVeiculo dalveiculo = new DAL.DALVeiculo();
            Models.Veiculo veiculo = new Models.Veiculo(0, TextBoxFabricante.Text, TextBoxModelo.Text, int.Parse(TextBoxFabricacao.Text), TextBoxPlaca.Text, TextBoxUF.Text);
            dalveiculo.Insert(veiculo);
            TextBoxFabricante.Text = "";
            TextBoxModelo.Text = "";
            TextBoxFabricacao.Text = "";
            TextBoxPlaca.Text = "";
            TextBoxUF.Text = "";
        }
    }
}