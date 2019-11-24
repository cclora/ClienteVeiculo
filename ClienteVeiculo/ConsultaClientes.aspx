<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaClientes.aspx.cs" Inherits="ClienteVeiculo.ConsultaClientes" %>

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
            width: 55%;
            padding: 3%;
            height: 300px;
            margin:auto;
            box-shadow: 20px 19px 14px 0px rgba(110,97,255,0.26);
            margin-top: 10%;
        }


    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <asp:Label ID="Label1" runat="server" Text="Cadastro de Clientes" Font-Size="Larger" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Incluir" PostBackUrl="~/InclusaoCliente.aspx" BackColor="#6e61ff" Font-Bold="True" ForeColor="White" Height="33px" Width="92px" BorderStyle="None" Font-Strikeout="False"/>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" AutoGenerateColumns="False" Width="1000px">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                    <asp:BoundField DataField="dataNascimento" DataFormatString="{0:d}" HeaderText="Nascimento" SortExpression="dataNascimento" />
                    <asp:BoundField DataField="cpf" HeaderText="CPF" SortExpression="cpf" />
                    <asp:TemplateField HeaderText="[ Edição ]">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="LinkButton1_Click">Alterar</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="LinkButton2_Click">Excluir</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll" TypeName="ClienteVeiculo.DAL.DALCliente"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
