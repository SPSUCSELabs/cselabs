<%@ Page language="c#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Security.Principal" %>
<html>
<head><title></title></head>
  <body>
    <form id="Form1" method="post" runat="server">
      <asp:Label ID="lblName" Runat="server" /></br>
      <asp:Label ID="lblAuthType" Runat="server" />
    </form>
  </body>
</html>
<script runat="server">
void Page_Load(object sender, EventArgs e)
{
  lblName.Text = "Hello " + Context.User.Identity.Name + ".";
  lblAuthType.Text = "Welcome to Waitlist";
}
</script>
