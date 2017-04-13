<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseRegistration.aspx.cs" Inherits="CourseRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Registration</title>

    <link href="StyleSheet.css" rel="stylesheet" />



</head>
<body>
    <header>
        <div class="container">
              <img class="auto-style1" src="Images/logo.png" />
            <h1> ASU Course Registration </h1>
        </div>
    </header>


    <main>
        <h4>Student Info: </h4>

        <h5>Fill in all fields, then click the Register button.</h5>
    <p>&nbsp;</p>
        
    <form id="form1" runat="server">
        <div class="container">
            <section class="student-input">
                <p>First Name:</p>
                <asp:TextBox runat="server" Height="48px" Width="100%" ID="firstName" BorderStyle="Solid" TabIndex="0" BorderColor="#999999"></asp:TextBox>

                <p>Last Name:</p>
                <asp:TextBox runat="server" Height="48px" Width="100%" ID="lastName" BorderStyle="Solid" TabIndex="1" BorderColor="#999999"></asp:TextBox>

                <p>ASU ID:</p>
                <asp:TextBox runat="server"  Height="48px" Width="100%" ID="asuID" BorderStyle="Solid" TabIndex="2" BorderColor="#999999"></asp:TextBox>

                <p>Barret College:<asp:CheckBox ID="chkbx_barretCollege" runat="server" Heigh="20px" Height="24px" Text=" " Width="36px"/>
  
                
                </p>
                <p>&nbsp;</p>

  
                
        <h4>Select desired semester and year:</h4>

                
                <span id="semester-year">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    Semester:
                    <asp:DropDownList ID="ddl_semester" runat="server" AutoPostBack="true" Height="38px" Width="30%" OnSelectedIndexChanged="ddl_semester_SelectedIndexChanged" style="margin-bottom: 0px">
                        <asp:ListItem>Selet Semester</asp:ListItem>
                    <asp:ListItem>Spring - A</asp:ListItem>
                    <asp:ListItem>Spring - B</asp:ListItem>
                    <asp:ListItem>Spring - C</asp:ListItem>
                    <asp:ListItem>Summer -1st 6-Weeks</asp:ListItem>
                    <asp:ListItem>Summer -2nd 6-Weeks</asp:ListItem>
                    <asp:ListItem>Fall - A</asp:ListItem>
                    <asp:ListItem>Fall - B</asp:ListItem>
                    <asp:ListItem>Fall - C</asp:ListItem>
                    </asp:DropDownList>


                            Year:
                    <asp:DropDownList ID="ddl_year" runat="server" Height="38px" Width="30%" style="margin-left: 4px">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                    </asp:DropDownList>

                </span>

               
                
                <p>&nbsp;</p>
                <p>&nbsp;</p> 
  
                                <p>  
                <img src="Images/catalog-search.png" alt="Alternate Text" /></p> 

                <p> 
                  Click <a href="https://webapp4.asu.edu/catalog/?t=2171">here</a> to visit ASU's course catalog.</p>
                <p> 
                    Please select the desired course:</p>
                <asp:Panel ID="Panel1" runat="server">
                    <br />
                    <asp:CheckBox ID="cb_cis105" runat="server" Text="CIS 105 - Computer Applications and Information Systems Technology" />
                    <br />
                    <asp:CheckBox ID="cb_cis235" runat="server" Text="CIS 235 - Introduction to Information Systems (Fall Only)" />
                    <br />
                    <asp:CheckBox ID="cb_cis340" runat="server" Text="CIS 340 - Business Info Systems Development I" />
                    <br />
                    <asp:CheckBox ID="cb_cis345" runat="server" Text="CIS 345 - Business Info Systems Development II" />
                    <br />
                    <asp:CheckBox ID="cb_cis360" runat="server" Text="CIS 360 - Business Database Concepts" />
                    <br />
                    <asp:CheckBox ID="cb_cis365" runat="server" Text="CIS 365 - Business Database Concepts" />
                    <br />
                    <asp:CheckBox ID="cb_cis415" runat="server" Text="CIS 415 - Big Data in Business" />
                    <br />
                    <asp:CheckBox ID="cb_cis425" runat="server" Text="CIS 425 - E-Commerce Strategy (Spring Only)" />
                    <br />
                    <asp:CheckBox ID="cb_cis430" runat="server" Text="CIS 430 - Mobile Platforms for Business"  />
                    <br />
                </asp:Panel>
                <p> 
                    &nbsp;</p>
                <p> 
                    </p>
                <asp:Panel ID="Panel2" runat="server">
                    Student Name:
                    <asp:Label ID="output_StudentName" runat="server" Text="."></asp:Label>
                    <br />
                    ASU ID:
                    <asp:Label ID="output_asuID" runat="server" Text="."></asp:Label>
                    <br />
                    Barret College Status:
                    <asp:Label ID="output_gradStatus" runat="server" Text="."></asp:Label>
                    <br />
                    Semester:<asp:Label ID="lbl_semester" runat="server" Text="."></asp:Label>
                    <br />
                    Year:<asp:Label ID="lbl_year" runat="server" Text="."></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Courses:"></asp:Label>
                    <br />
                    <asp:ListBox ID="ListBox_Courses" runat="server" Height="158px" Width="100%">
                    </asp:ListBox>
                </asp:Panel>
                <p> 
                    &nbsp;</p>


            </section>
            <asp:Button ID="btnRegister" runat="server" BackColor="Maroon" Font-Names="Verdana" ForeColor="White" Height="56px" Text="Register" Width="100%" OnClick="btnRegister_Click" />
        </div>

    </form>

    </main>

      



</body>
</html>
