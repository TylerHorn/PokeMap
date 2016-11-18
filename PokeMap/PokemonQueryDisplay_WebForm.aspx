<%@ Page Title="" Language="C#" MasterPageFile="~/PokeMap.Master" AutoEventWireup="true" CodeBehind="PokemonQueryDisplay_WebForm.aspx.cs" Inherits="PokeMap.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    #form1 {
        height: 176px;
        width: 1264px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:Table ID="Table1" runat="server">
    </asp:Table>
</form>
    </asp:Content>
