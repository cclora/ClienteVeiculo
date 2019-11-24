<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExclusaoVeiculo.aspx.cs" Inherits="ClienteVeiculo.ExclusaoVeiculo" %>

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
        .botaotd {
            padding-top: 5%;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Exclusão de Veículo" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:Label ID="Label2" runat="server" Text="Fabricante:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelFabricante" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label3" runat="server" Text="Modelo:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelModelo" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label4" runat="server" Text="Fabricação:"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="LabelFabricacao" runat="server" Text=""></asp:Label>
                    </td>
                  
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label5" runat="server" Text="Placa:"></asp:Label>
                    </td>
                    <td>

            <asp:Label ID="LabelPlaca" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label6" runat="server" Text="UF:"></asp:Label>
                    </td>
                    <td>

            <asp:Label ID="LabelUF" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="botaotd">

            <asp:Button ID="Button2" runat="server" Text="Cancelar" PostBackUrl="~/ConsultaVeiculos.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
                    </td>
                    <td class="botaotd">

            &nbsp;<asp:Button ID="Button1" runat="server" Text="Excluir" OnClick="Button1_Click" PostBackUrl="~/ConsultaVeiculos.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>

                    </td>
                </tr>
                </table>
            <br />
        </div>
    </form>
</body>
</html>
