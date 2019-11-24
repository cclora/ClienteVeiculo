<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExclusaoCliente.aspx.cs" Inherits="ClienteVeiculo.ExclusaoCliente" %>

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
        .botaotd{
            padding-top: 5%;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Exclusão de Cliente" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelNome" runat="server" Text=""></asp:Label>
                    </td>
                  
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label3" runat="server" Text="Data de nascimento:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelNascimento" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label4" runat="server" Text="CPF:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelCPF" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>
                <tr >
                  
                    <td class="botaotd">
            <asp:Button ID="Button2" runat="server" Text="Cancelar" PostBackUrl="~/ConsultaClientes.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
                    </td>
                    <td class="botaotd">
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Excluir" OnClick="Button1_Click" PostBackUrl="~/ConsultaClientes.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
