<%@ page title="" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="Default2, App_Web_v1zg1b1g" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DefaultContent" Runat="Server">
<form id="waitlist" runat="server">
<br />
<asp:Label ID="Label3" runat="server" Text="**Please be advised you are about to cancel your Waitlist request**"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="Enter Your Student ID"></asp:Label><br />
<asp:TextBox ID="studid" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Enter the Subject Number"></asp:Label><br />
<asp:TextBox ID="subjects" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="delete" runat="server" Text="DELETE" OnClick="delete_Click"/>
<br />
<br />
</form>




</asp:Content>


