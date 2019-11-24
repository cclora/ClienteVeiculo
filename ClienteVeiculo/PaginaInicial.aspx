<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicial.aspx.cs" Inherits="ClienteVeiculo.PaginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            background-color:#ebebed;
            text-align: center;
            width: 90%;
        }
        .div{
           font-size: 40px;
           width: 500px;
           height: 300px;
           font-family: Bahnschrift;
           box-shadow: 20px 19px 14px 0px rgba(110,97,255,0.26);
           text-align: center;
        }
        a, a:visited, a:hover{
            color: #6e61ff;
        }      
        .clicavel{
            text-shadow: 4px 4px 5px rgba(150, 150, 150, 0.5);
            text-align: center;
            margin: auto;
            width: auto;
            margin-top: 50px;
            font-size: 35px;
        }
        .pseudotabela{
           margin: auto; margin-top: 10%; text-align: center;
        }
        .esquerda{
            float:left;
            width: 450px;
            margin-right: 2%;
        }
        .direita{
            width:450px;
            float: right;
            margin-left: 2%;           
           
        }
        .auto-style1 {
            float: left;
        }
        .titulo{          
            background-color: #fafafa;
            padding-left: 70px;
            padding-right: 70px;
            padding-top: 15px;
            padding-bottom: 15px;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            }
        .nome{
            font-size: 55px;
            text-align: center;
        }
        .consultar{
            float:right;
        }
        li{
            padding-bottom:25px;
        }
        .oipapaiz{
            margin: 15%;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="oipapaiz">
        <div class="esquerda">
                     <div class="div titulo">
                        <asp:Label ID="Label1" runat="server"  Font-Underline="False" ForeColor="#5E55C9" Text="Veículos" CssClass="nome"></asp:Label>                       
                         <ul class="clicavel lista" style="list-style-type:none;">
                            <li>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/InclusaoVeiculo.aspx" Font-Underline="False">Cadastrar</asp:HyperLink>
                            </li>
                            <li>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ConsultaVeiculos.aspx" Font-Underline="False">Consultar</asp:HyperLink>
                            </li>
                        </ul>                          
                         </div>  
                        </div>                           
        <div class="direita">
            <div class="div titulo">
                <asp:Label ID="Label2" runat="server" Font-Underline="False" ForeColor="#5E55C9" Text="Clientes" CssClass="nome"></asp:Label>                
                    <ul class="clicavel lista" style="list-style-type:none;">
                        <li>
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InclusaoCliente.aspx" Font-Underline="False">Cadastrar</asp:HyperLink>
                        </li>
                        <li>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultaClientes.aspx" Font-Underline="False">Consultar</asp:HyperLink>
                        </li>
                        </ul>     
            </div>
         </div>  
        </div>
    </form>
</body>
</html>
