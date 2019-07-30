<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="remoteDebugging.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>This is changes done and this should automatically updated to production once the pull request is approved</p>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="buttonTable" runat="server" >
            <asp:TableRow>
                <asp:TableCell><asp:Button runat="server" ID="buttonHandledCrash" Text="Handled Exception" OnClick="buttonHandledCrash_Click" /></asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="labelHandledCrash" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button runat="server" ID="buttonUnHandledCrash" Text="Unhandled Exception" OnClick="buttonUnHandledCrash_Click" /></asp:TableCell>
                <asp:TableCell><asp:Label runat="server" ID="labelUnHandledCrash" /></asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Button runat="server" ID="buttonSlow" Text="Slow" OnClick="buttonSlow_Click" /></asp:TableCell>
                <asp:TableCell>Start: <asp:Label runat="server" ID="labelSlowStart" /></asp:TableCell>
                <asp:TableCell>Stop:  <asp:Label runat="server" ID="labelSlowStop" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table> 
        <input type="Submit" Name="Click" />
    </div>
    </form>
</body>
</html>

