using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteVeiculo
{
    public partial class AlteracaoCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL.DALCliente dalcliente = new DAL.DALCliente();
            Models.Cliente cliente = dalcliente.Select(int.Parse(Request.QueryString["i"]))[0];
            TextBoxNome.Text = cliente.nome;
            TextBoxNascimento.Text = cliente.dataNascimento.ToShortDateString();
            TextBoxCPF.Text = cliente.cpf;
        }

        protected void Page_PreInit(Object sender, EventArgs e)
        {
            if (Request.QueryString["i"] != null)
            {
                DAL.DALCliente dalcliente = new DAL.DALCliente();
                int id;
                if (int.TryParse(Request.QueryString["i"], out id))
                {
                    List<Models.Cliente> clientes = dalcliente.Select(id);
                    if (clientes.Count == 0) Response.Redirect("~\\ConsultaClientes.aspx");
                }
                else
                {
                    Response.Redirect("~\\ConsultaClientes.aspx");
                }
            }
            else
            {
                Response.Redirect($"~\\ConsultaClientes.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.DALCliente dalcliente = new DAL.DALCliente();
            Models.Cliente cliente = new Models.Cliente(int.Parse(Request.QueryString["id"]), TextBoxNome.Text, DateTime.Parse(TextBoxNascimento.Text), TextBoxCPF.Text);
            dalcliente.Update(cliente);
        }
    }
}