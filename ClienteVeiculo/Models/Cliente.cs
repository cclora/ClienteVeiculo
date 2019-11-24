using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteVeiculo.Models
{
    public class Cliente
    {
        public int id { get; set; }
        public string nome { get; set; }
        public DateTime dataNascimento { get; set; }
        public string cpf { get; set; }

        public Cliente(int id, string nome, DateTime dataNascimento, string cpf)
        {
            this.id = id;
            this.nome = nome;
            this.dataNascimento = dataNascimento;
            this.cpf = cpf;
        }
    }
}