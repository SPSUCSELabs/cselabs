<%@ Page language="c#" AutoEventWireup="true" %>
<%@ Import Namespace="FormsAuth" %>
<html>
<head><title>Login</title></head>
  <body> 
  <br />

       <br />
       Enter your CSENET username and password to gain access to the Waitlist Form. 

    <form id="Login" method="post" runat="server">
      <asp:Label ID="Label1" Runat="server" Visible="False" Font-Size="Small" >Domain:</asp:Label>
      <asp:TextBox ID="txtDomain" Runat="server" Text="csenet" Visible ="False"></asp:TextBox><br />    
      <asp:Label ID="Label2" Runat="server">USERNAME</asp:Label><br />
      <asp:TextBox ID="txtUsername" Runat="server"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label3" Runat="server" >PASSWORD</asp:Label><br />
      <asp:TextBox ID="txtPassword" Runat="server" TextMode="Password"></asp:TextBox>
      <br />
      <br />
      <br />
      <asp:Button ID="btnLogin" Runat="server" Text="Login" OnClick="Login_Click" 
          Font-Size="Large"></asp:Button><br />
      <asp:Label ID="errorLabel" Runat="server" ForeColor="#ff3300"></asp:Label><br />
      <asp:CheckBox ID="chkPersist" Runat="server" Text="Persist Cookie" Visible="False" />
      <br />
      <asp:Button ID="btnNonCSE" runat="server" Text="NON CSE Majors - Click Here" Font-Size="Large" OnClientClick = "return confirm('Username: waitlist -- Password:SPSU2014');"/>
    </form>

  </body>
</html>
<script runat="server">
void Login_Click(object sender, EventArgs e)
{
  string adPath = "LDAP://DC=csenet,DC=spsu,DC=edu"; //Path to your LDAP directory "server"
  LdapAuthentication adAuth = new LdapAuthentication(adPath);
  try
  {
    if(true == adAuth.IsAuthenticated(txtDomain.Text, txtUsername.Text, txtPassword.Text))
    {
      string groups = adAuth.GetGroups();

      //Create the ticket, and add the groups.
      bool isCookiePersistent = chkPersist.Checked;
      FormsAuthenticationTicket authTicket = new FormsAuthenticationTicket(1, 
                txtUsername.Text,DateTime.Now, DateTime.Now.AddMinutes(60), isCookiePersistent, groups);

      //Encrypt the ticket.
      string encryptedTicket = FormsAuthentication.Encrypt(authTicket);

      //Create a cookie, and then add the encrypted ticket to the cookie as data.
      HttpCookie authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);

      if(true == isCookiePersistent)
      authCookie.Expires = authTicket.Expiration;

      //Add the cookie to the outgoing cookies collection.
      Response.Cookies.Add(authCookie);

      //You can redirect now.
      Response.Redirect(FormsAuthentication.GetRedirectUrl(txtUsername.Text, false));
    }
    else
    {
      errorLabel.Text = "Authentication did not succeed. Check user name and password.";
    }
  }
  catch(Exception ex)
  {
    errorLabel.Text = "Error authenticating. " + ex.Message;
  }
}
</script>
