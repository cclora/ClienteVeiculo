using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ClienteVeiculo.DAL
{
    public class DALVeiculo
    {
        string connectionString = "";

        public DALVeiculo()
        {
            connectionString = ConfigurationManager.ConnectionStrings["ClienteVeiculoConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Models.Veiculo> SelectAll()
        {
            List<Models.Veiculo> veiculos = new List<Models.Veiculo>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "exec sp_ConsultarVeiculo";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Models.Veiculo veiculo = new Models.Veiculo(
                        (int)dr["id"],
                        dr["fabricante"].ToString(),
                        dr["modelo"].ToString(),
                        (int)dr["ano_fabricacao"],
                        dr["placa"].ToString(),
                        dr["uf"].ToString()
                        );
                    veiculos.Add(veiculo);
                }
            }
            dr.Close();
            conn.Close();
            return veiculos;
        }

        public void Insert(Models.Veiculo obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_IncluirVeiculo @fabricante, @modelo, @ano_fabricacao, @placa, @uf", conn);
            cmd.Parameters.AddWithValue("@fabricante", obj.fabricante);
            cmd.Parameters.AddWithValue("@modelo", obj.modelo);
            cmd.Parameters.AddWithValue("@ano_fabricacao", obj.anoFabricacao);
            cmd.Parameters.AddWithValue("@placa", obj.placa);
            cmd.Parameters.AddWithValue("@uf", obj.uf);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public List<Models.Veiculo> Select(int id)
        {
            List<Models.Veiculo> veiculos = new List<Models.Veiculo>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "exec sp_ConsultarVeiculoId @id";
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Models.Veiculo veiculo = new Models.Veiculo(
                        (int)dr["id"],
                        dr["fabricante"].ToString(),
                        dr["modelo"].ToString(),
                        (int)dr["ano_fabricacao"],
                        dr["placa"].ToString(),
                        dr["uf"].ToString()
                        );
                    veiculos.Add(veiculo);
                }
            }
            dr.Close();
            conn.Close();
            return veiculos;
        }

        public void Update(Models.Veiculo obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_EditarVeiculo @id, @fabricante, @modelo, @ano_fabricacao, @placa, @uf", conn);
            cmd.Parameters.AddWithValue("@id", obj.id);
            cmd.Parameters.AddWithValue("@fabricante", obj.fabricante);
            cmd.Parameters.AddWithValue("@modelo", obj.modelo);
            cmd.Parameters.AddWithValue("@ano_fabricacao", obj.anoFabricacao);
            cmd.Parameters.AddWithValue("@placa", obj.placa);
            cmd.Parameters.AddWithValue("@uf", obj.uf);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void Delete(int id)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_ExcluirVeiculo @id", conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}