<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InclusaoCliente.aspx.cs" Inherits="ClienteVeiculo.InclusaoCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
          body{
            background-color: #ebebed;
            font-size: 20px;
            font-family: Bahnschrift;
        }
        .form{           
            background-color: white;
            width: 30%;
            padding: 3%;
            height: 300px;
            margin:auto;
            box-shadow: 20px 19px 14px 0px rgba(0,0,0,0.41);
        }
        .auto-style1 {
            width: 235px;
        }
        .auto-style2 {
            width: 1320px;
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <asp:Label ID="Label1" runat="server" Text="Inclusão de Cliente" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                    </td>
                    <td class="auto-style1">
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
                    <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="CPF"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="TextBoxCPF" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="Button2" runat="server" Text="Cancelar" PostBackUrl="~/ConsultaClientes.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Salvar" OnClick="Button1_Click" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
