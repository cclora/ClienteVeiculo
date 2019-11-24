using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteVeiculo
{
    public partial class InclusaoCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.DALCliente dalcliente = new DAL.DALCliente();
            Models.Cliente cliente = new Models.Cliente(0, TextBoxNome.Text, DateTime.Parse(TextBoxNascimento.Text), TextBoxCPF.Text);
            dalcliente.Insert(cliente);
            TextBoxNome.Text = "";
            TextBoxNascimento.Text = "";
            TextBoxCPF.Text = "";
        }
    }
}