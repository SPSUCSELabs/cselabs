<%@ page title="" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="Default2, App_Web_ntmfcjcj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DefaultContent" Runat="Server">
<form id="waitlist" runat="server">

<h2>CSE Waitlist</h2>

<p>Complete the following fields to be placed on a waiting list for a Computer Science, Game Design,<br /> 
Information Technology or Software Engineering (Drop Down List) class which is currently full.</p>

<p>Make sure you provide appropriate justification (missing your turn because of holds is not always adequate).<br /> 
If the course becomes available, we will make an attempt to register you unless one of the following (or other)<br />
problems arises: (i) A prerequisite is missing; or (ii) There is a time conflict with another course;<br />
or (iii) The maximum number of hours you are permitted are exceeded, etc. MAKE SURE to indicate how you<br />
want each of the problems addressed, e.g., I have all the prerequisites; please drop me from course X if<br />
I get into this one; etc. If not, the seat may be given to the next person on the wait list. Make sure<br />
to provide accurate contact information and to check messages frequently.

</p>
<br /><br />

<asp:Label ID="Label2" runat="server" Text="***Click here"></asp:Label>&nbsp;&nbsp;<asp:Button ID="delete" runat="server" Text="DELETE" OnClick="delete_Click" />&nbsp;&nbsp;<asp:Label
    ID="Label3" runat="server" Text="to delete your waitlist request***"></asp:Label><br /><br /><br />

<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><br /><asp:TextBox ID="fname" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label><br /><asp:TextBox ID="lname" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label5" runat="server" Text="Student ID"></asp:Label><br /><asp:TextBox ID="studid" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label><br /><asp:TextBox ID="phone" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label7" runat="server" Text="Email *** Must be SPSU email***"></asp:Label><br /><asp:TextBox ID="email" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label9" runat="server" Text="Major"></asp:Label><br />
<asp:DropDownList ID="major" runat="server">
<asp:ListItem>Select One...</asp:ListItem>
<asp:ListItem>Accounting</asp:ListItem>
<asp:ListItem>Aerospace Engineering</asp:ListItem>
<asp:ListItem>Apparel Textile Architecture</asp:ListItem>
<asp:ListItem>Biology</asp:ListItem>
<asp:ListItem>Biology Education</asp:ListItem>
<asp:ListItem>Business Administration</asp:ListItem>
<asp:ListItem>Chemistry</asp:ListItem>
<asp:ListItem>Chemistry Education</asp:ListItem>
<asp:ListItem>Civil Engineering</asp:ListItem>
<asp:ListItem>Civil Engineering Technology</asp:ListItem>
<asp:ListItem>Communications Management</asp:ListItem>
<asp:ListItem>Computer Engineering Technology</asp:ListItem>
<asp:ListItem>Computer Game Design and Development</asp:ListItem>
<asp:ListItem>Computer Science</asp:ListItem>
<asp:ListItem>Computer Science Graduate Transition Certificate</asp:ListItem>
<asp:ListItem>Construction Engineering</asp:ListItem>
<asp:ListItem>Construction Management</asp:ListItem>
<asp:ListItem>Construction Project Management Certificate</asp:ListItem>
<asp:ListItem>Content Strategy</asp:ListItem>
<asp:ListItem>Education</asp:ListItem>
<asp:ListItem>Electrical Engineering</asp:ListItem>
<asp:ListItem>Electrical Engineering Technology</asp:ListItem>
<asp:ListItem>Engineering Design Graphics</asp:ListItem>
<asp:ListItem>Engineering Technology--Electrical</asp:ListItem>
<asp:ListItem>English & Professional Communication</asp:ListItem>
<asp:ListItem>Entrepreneurship</asp:ListItem>
<asp:ListItem>Environmental Engineering Technology</asp:ListItem>
<asp:ListItem>Environmental Science</asp:ListItem>
<asp:ListItem>Fashion Design & Product Development</asp:ListItem>
<asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Geographical Information Systems Certificate</asp:ListItem>
<asp:ListItem>Global Communication</asp:ListItem>
<asp:ListItem>Health Information Technology Graduate Certificate</asp:ListItem>
<asp:ListItem>Information Technology Fundamentals Graduate Certificate</asp:ListItem>
<asp:ListItem>Information Technology Graduate Certificate</asp:ListItem>
<asp:ListItem>Information Technology, Master of Science</asp:ListItem>
<asp:ListItem>Industrial Engineering Technology</asp:ListItem>
<asp:ListItem>Highway Project Management Certificate</asp:ListItem>
<asp:ListItem>History</asp:ListItem>
<asp:ListItem>Information & Instructional Design</asp:ListItem>
<asp:ListItem>Information Design & Communication</asp:ListItem>
<asp:ListItem>Information Technology</asp:ListItem>
<asp:ListItem>Information & Instructional Design</asp:ListItem>
<asp:ListItem>Information Security & Assurance Graduate Certificate</asp:ListItem>
<asp:ListItem>Instructional Design</asp:ListItem>
<asp:ListItem>International Business</asp:ListItem>
<asp:ListItem>International Studies</asp:ListItem>
<asp:ListItem>Land Development Certificate</asp:ListItem>
<asp:ListItem>Land Surveying Certificate</asp:ListItem>
<asp:ListItem>Latin American Studies</asp:ListItem>
<asp:ListItem>Leadership & Organizational Communication</asp:ListItem>
<asp:ListItem>Logistics Management</asp:ListItem>
<asp:ListItem>Management Information Systems</asp:ListItem>
<asp:ListItem>Management of Operations & Technology</asp:ListItem>
<asp:ListItem>Manufacturing Engineering Technology</asp:ListItem>
<asp:ListItem>Manufacturing Operations</asp:ListItem>
<asp:ListItem>Marketing</asp:ListItem>
<asp:ListItem>Mathematics</asp:ListItem>
<asp:ListItem>Mathematics Education</asp:ListItem>
<asp:ListItem>Mechanical Engineering</asp:ListItem>
<asp:ListItem>Mechanical Engineering Technology</asp:ListItem>
<asp:ListItem>Mechatronics Engineering</asp:ListItem>
<asp:ListItem>New Media Arts</asp:ListItem>
<asp:ListItem>Nuclear Engineering</asp:ListItem>
<asp:ListItem>Physics</asp:ListItem>
<asp:ListItem>Physics, Education Concentration</asp:ListItem>
<asp:ListItem>Physics, Electrical Engineering Concentration</asp:ListItem>
<asp:ListItem>Physics, Mechanical Engineering Concentration</asp:ListItem>
<asp:ListItem>Political Science</asp:ListItem>
<asp:ListItem>Pre-Law</asp:ListItem>
<asp:ListItem>Production Design Certificate</asp:ListItem>
<asp:ListItem>Professional Writing</asp:ListItem>
<asp:ListItem>Psychology</asp:ListItem>
<asp:ListItem>Public Policy</asp:ListItem>
<asp:ListItem>Quality Assurance</asp:ListItem>
<asp:ListItem>Quality Principles</asp:ListItem>
<asp:ListItem>Software Engineering</asp:ListItem>
<asp:ListItem>Software Engineering Graduate Certificate</asp:ListItem>
<asp:ListItem>Spanish</asp:ListItem>
<asp:ListItem>Structural Engineering Technology</asp:ListItem>
<asp:ListItem>Supply Chain Logistics</asp:ListItem>
<asp:ListItem>Surveying and Mapping</asp:ListItem>
<asp:ListItem>Systems Engineering Graduate Certificate</asp:ListItem>
<asp:ListItem>Systems Engineering</asp:ListItem>
<asp:ListItem>Teacher Education</asp:ListItem>
<asp:ListItem>Technical Communication Graduate Certificate</asp:ListItem>
<asp:ListItem>Technical Communication</asp:ListItem>
<asp:ListItem>Telecommunications Engineering Technology</asp:ListItem>
<asp:ListItem>Undecided/General Studies</asp:ListItem>
<asp:ListItem>User Experience</asp:ListItem>
<asp:ListItem>Visual Communication</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Label ID="Label10" runat="server" Text="Subject Number"></asp:Label><br />
<asp:TextBox ID="subjects" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label11" runat="server" Text="CRN"></asp:Label><br />
<asp:TextBox ID="crn" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label12" runat="server" Text="Section Number"></asp:Label><br />
<asp:TextBox ID="section" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label13" runat="server" Text="Semester"></asp:Label><br />
<asp:DropDownList ID="semester" runat="server">
<asp:ListItem>Select One...</asp:ListItem>
<asp:ListItem>Summer 2014</asp:ListItem>
<asp:ListItem>Fall 2014</asp:ListItem>
<asp:ListItem>Spring 2015</asp:ListItem>
<asp:ListItem>Summer 2015</asp:ListItem>
<asp:ListItem>Fall 2015</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Label ID="Label8" runat="server" Text="Justification ***300 Character Max ***"></asp:Label><br />
<asp:TextBox ID="why" runat="server" Rows="5" TextMode="MultiLine" Columns="60"></asp:TextBox>
<br />
<br />
<asp:Button ID="submit" runat="server" Text="SUBMIT" OnClick="submit_Click"/>
<br />
<br />
</form>




</asp:Content>


