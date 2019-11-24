using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteVeiculo
{
    public partial class ExclusaoVeiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DAL.DALVeiculo dalveiculo = new DAL.DALVeiculo();
            Models.Veiculo veiculo = dalveiculo.Select(int.Parse(Request.QueryString["id"]))[0];
            LabelFabricante.Text = veiculo.fabricante;
            LabelModelo.Text = veiculo.modelo;
            LabelFabricacao.Text = veiculo.anoFabricacao.ToString();
            LabelPlaca.Text = veiculo.placa;
            LabelUF.Text = veiculo.uf;
        }

        protected void Page_PreInit(Object sender, EventArgs e)
        {
            if (Request.QueryString["i"] != null)
            {
                DAL.DALVeiculo dalveiculo = new DAL.DALVeiculo();
                int id;
                if (int.TryParse(Request.QueryString["i"], out id))
                {
                    List<Models.Veiculo> veiculos = dalveiculo.Select(id);
                    if (veiculos.Count == 0) Response.Redirect("~\\ConsultaVeiculos.aspx");
                }
                else
                {
                    Response.Redirect("~\\ConsultaVeiculos.aspx");
                }
            }
            else
            {
                Response.Redirect($"~\\ConsultaVeiculos.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL.DALVeiculo dalveiculo = new DAL.DALVeiculo();
            dalveiculo.Delete(int.Parse(Request.QueryString["id"]));
        }
    }
}