<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlteracaoVeiculo.aspx.cs" Inherits="ClienteVeiculo.AlteracaoVeiculo" %>

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
            height: 31px;
        }
        .auto-style2 {
            width: 275px;
        }
        .auto-style3 {
            height: 31px;
            width: 275px;
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
            <asp:Label ID="Label1" runat="server" Text="Alteração de Veículo" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Fabricante"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="TextBoxFabricante" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Modelo"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="TextBoxModelo" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Fabricação"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="TextBoxFabricacao" runat="server" TextMode="Number" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="Placa"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="TextBoxPlaca" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="UF"></asp:Label>
                    </td>
                    <td class="auto-style1">
            <asp:TextBox ID="TextBoxUF" runat="server" Height="23px" Width="190px" BackColor="#F7F7F7" BorderColor="#6e61ff" BorderStyle="Solid" BorderWidth="1px" style="box-shadow: 12px 12px 18px 0px rgba(0,0,0,0.20);" ForeColor="#333333"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style2 botaotd">
            <asp:Button ID="Button4" runat="server" Text="Cancelar" PostBackUrl="~/ConsultaVeiculos.aspx"  BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False" />
                    </td>
                    <td class="botaotd">
                        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Salvar"  BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False" />
                    </td>
                    
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
