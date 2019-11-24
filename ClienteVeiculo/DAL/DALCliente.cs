using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ClienteVeiculo.DAL
{
    public class DALCliente
    {
        string connectionString = "";

        public DALCliente()
        {
            connectionString = ConfigurationManager.ConnectionStrings["ClienteVeiculoConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Models.Cliente> SelectAll()
        {
            List<Models.Cliente> clientes = new List<Models.Cliente>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "exec sp_ConsultarCliente";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Models.Cliente cliente = new Models.Cliente(
                        (int)dr["id"],
                        dr["nome"].ToString(),
                        (DateTime)dr["data_nascimento"],
                        dr["cpf"].ToString()
                        );
                    clientes.Add(cliente);
                }
            }
            dr.Close();
            conn.Close();
            return clientes;
        }

        public void Insert(Models.Cliente obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_IncluirCliente @nome, @data_nascimento, @cpf", conn);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@data_nascimento", obj.dataNascimento);
            cmd.Parameters.AddWithValue("@cpf", obj.cpf);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        
        public List<Models.Cliente> Select(int id)
        {
            List<Models.Cliente> clientes = new List<Models.Cliente>();
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "exec sp_ConsultarClienteId @id";
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Models.Cliente cliente = new Models.Cliente(
                        (int)dr["id"],
                        dr["nome"].ToString(),
                        (DateTime)dr["data_nascimento"],
                        dr["cpf"].ToString()
                        );
                    clientes.Add(cliente);
                }
            }
            dr.Close();
            conn.Close();
            return clientes;
        }

        public void Update(Models.Cliente obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_EditarCliente @id, @nome, @data_nascimento, @cpf", conn);
            cmd.Parameters.AddWithValue("@id", obj.id);
            cmd.Parameters.AddWithValue("@nome", obj.nome);
            cmd.Parameters.AddWithValue("@data_nascimento", obj.dataNascimento);
            cmd.Parameters.AddWithValue("@cpf", obj.cpf);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        
        public void Delete(int id)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand com = conn.CreateCommand();
            SqlCommand cmd = new SqlCommand("exec sp_ExcluirCliente @id", conn);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}