using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClienteVeiculo.Models
{
    public class Veiculo
    {
        public int id { get; set; }
        public string fabricante { get; set; }
        public string modelo { get; set; }
        public int anoFabricacao { get; set; }
        public string placa { get; set; }
        public string uf { get; set; }

        public Veiculo(int id, string fabricante, string modelo, int anoFabricacao, string placa, string uf)
        {
            this.id = id;
            this.fabricante = fabricante;
            this.modelo = modelo;
            this.anoFabricacao = anoFabricacao;
            this.placa = placa;
            this.uf = uf;
        }
    }
}