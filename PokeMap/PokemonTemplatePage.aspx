﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokemonTemplatePage.aspx.cs" Inherits="PokeMap.PokemonTemplatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <title></title>
</head>
    <div class ="head">
         <img src="images/PokeMapLogo.png" width="300" />
    </div>
<body>   
    <div class="container">
        <form id="form1" runat="server"> 
            <div class="navbar-header">
            <div>
                <asp:Label ID="l_PokemonName" runat="server" Text="Name: " BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
                <asp:Label ID="l_PokemonNameLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
           </div>
        <div>
            <asp:Label ID="l_PokemonID" runat="server" Text="ID#: " BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
            <asp:Label ID="l_PokemonIDLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </div>
        <div>
            <asp:Label ID="l_PokemonType" runat="server" Text="Type: " BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
            <asp:Label ID="l_PokemonTypeLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </div>
        <div>
            <asp:Label ID="l_PokemonDescription" runat="server" Text="Description: " BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
            <asp:Label ID="l_PokemonDescriptionLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </div>
        <div>
            <asp:Label ID="l_PokemonCatchable" runat="server" Text="Catchable? " BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
            <asp:Label ID="l_PokemonCatchableLabel" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </div>
                <asp:Repeater ID="r_PokemonDisplay" runat="server"></asp:Repeater>
        </div>
        </form>
    </div>
</body>
</html>
