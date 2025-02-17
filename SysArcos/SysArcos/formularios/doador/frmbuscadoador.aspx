﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscadoador.aspx.cs" Inherits="ProjetoArcos.frmbusca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Doadores
    </div>
    <asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>
    <asp:TextBox ID="txtbusca" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" class="btn btn-success" Text="Buscar" OnClick="btnbuscar_Click" />
    <br />
    <div>
        <asp:RadioButton ID="rdnome" runat="server" Text="Nome" GroupName="filtro" />
        <asp:RadioButton ID="rdcidade" runat="server" Text="Cidade" GroupName="filtro" />
        <asp:RadioButton ID="rdtipodoaçao" runat="server" Text="Tipo de doação" GroupName="filtro" />
    </div>
    <br />
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NOME" HeaderText="Nome" />
            <asp:BoundField DataField="CIDADE" HeaderText="Cidade" />
            <asp:BoundField DataField="TIPO_DOACAO" HeaderText="Tipo de Doação" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:Button ID="btncancelar" class ="btn btn-primary" runat="server" Text="Cancelar" OnClick="btncancelar_Click" />
    &nbsp;<asp:Button ID="btnselecionar" class ="btn btn-primary" runat="server" Text="Editar" OnClick="btnselecionar_Click" />
    &nbsp;<asp:Button ID="btnremover" class ="btn btn-primary" runat="server" Text="Remover" OnClick="btnremover_Click" />
</asp:Content>
