<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PokemonTemplatePage.aspx.cs" Inherits="PokeMap.PokemonTemplatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        <div>
                Name:
                <asp:Label ID="l_PokemonName" runat="server" Text="Label"></asp:Label>
           </div>
        <div>
                ID #:
            <asp:Label ID="l_PokemonID" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
                Type:
            <asp:Label ID="l_PokemonType" runat="server" Text="Label"></asp:Label>
        </div>
     
        </form>
    </div>
</body>
</html>
