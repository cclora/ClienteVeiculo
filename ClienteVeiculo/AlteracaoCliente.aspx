<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlteracaoCliente.aspx.cs" Inherits="ClienteVeiculo.AlteracaoCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 569px;
        }
        .auto-style2 {
            width: 3288px;
        }
        body{
            background-color: #ebebed;
            font-size: 20px;
            font-family: Bahnschrift;
        }
        .auto-style3 {
            width: 3288px;
            height: 29px;
        }
        .auto-style4 {
            width: 569px;
            height: 29px;
        }
        .form{           
            background-color: white;
            width: 30%;
            padding: 3%;
            height: 300px;
            margin:auto;
            box-shadow: 20px 19px 14px 0px rgba(0,0,0,0.41);
        }
        .textbox{
         
        }
        .auto-style5 {
            width: 3288px;
            height: 31px;
        }
        .auto-style6 {
            width: 569px;
            height: 31px;
        }
        .botaotd{
            padding-top: 5%;
        }
        .auto-style7 {
            width: 100%;
        }
        .header{
           color: white;
           background-color:#6e61ff;
           padding: 5px;
        }
        a, a:visited, a:hover{
            color: white;
        } 
        .auto-style8 {
            width: 283px;
        }
        .auto-style10 {
            width: 187px;
        }
        .auto-style11 {
            width: 175px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header"> <table class="auto-style7">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaginaInicial.aspx" Font-Underline="False">Menu</asp:HyperLink>
                    </td>
                    <td class="auto-style11"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/InclusaoCliente.aspx" Font-Underline="False">Cadastrar Cliente</asp:HyperLink></td><td> <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ConsultaClientes.aspx" Font-Underline="False">Consultar Cliente</asp:HyperLink></td>
                    <td class="auto-style10"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/InclusaoVeiculo.aspx" Font-Underline="False">Cadastrar Veículo</asp:HyperLink></td><td><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ConsultaVeiculos.aspx" Font-Underline="False">Consultar Veículo</asp:HyperLink></td>
                </tr>
             
            </table>
        </div>
        <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Alteração de Cliente" Font-Size="Larger" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                    </td>
                    <td class="auto-style6">
            <asp:TextBox ID="TextBoxNome" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Data de nascimento"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="TextBoxNascimento" runat="server" TextMode="Date" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="CPF"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="TextBoxCPF" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>                 
                </tr>
                <tr>
                    <td class="auto-style2 botaotd">
                         <asp:Button ID="Button2" runat="server" Text="Cancelar" PostBackUrl="~/ConsultaClientes.aspx"  BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False" />
                    </td>
                    <td class="auto-style8 botaotd">
                        <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False" />   
                         </td>                 
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
