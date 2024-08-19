<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCand.aspx.cs" Inherits="OnlineVotingSystem.AddCand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <head>
    </head>
    <body>
      <br />
    <div class="container-fluid">
      <div class="row">
         
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body"> 

                   <div class="row">
                     <div class="col">
                         <center>
                             <img src="images/candidate1.jpg" width="100px"/>                           
                             </center>
                         </div>
                       </div>

                    <div class="row">
                     <div class="col">
                         <hr />
                          </div>
                       </div>


                   <div class="row">
                     <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server" Text="Candidate name"></asp:Label>
                         <div class="form-group">
                       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="full name" pattern="[A-Za-z ]+" title="Name should only contain alphabets." required></asp:TextBox>
                         </div>
                          </div>

                           <div class="col-md-6">
                        <asp:Label ID="Label2" runat="server" Text="Candidate ID"></asp:Label>
                         <div class="form-group">
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="ID" pattern="[A-Za-z0-9]+" title="Candidate ID should contain only alphanumeric values." required></asp:TextBox>
                         </div>
                          </div>
                       </div>



                   <div class="row">
                     <div class="col-md-6">
<asp:Label ID="Label3" runat="server" Text="Select Department"></asp:Label>
                         <div class="form-group">
                              <div class="input-group">
<asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" required>
    <asp:ListItem Text="Select" Value="" />
                              <asp:ListItem Text="Cultural" Value="Cultural" />
                              <asp:ListItem Text="Academics" Value="Academic" />
                              <asp:ListItem Text="Sports" Value="Sports" />
                                 <asp:ListItem Text="Anti-Rag" Value="Antirag" />
</asp:DropDownList>
                                  </div>
                             </div>
                          </div>



                          <div class="col-md-6">
<asp:Label ID="Label4" runat="server" Text="Select Your House"></asp:Label>
                         <div class="form-group">
                              <div class="input-group">
<asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" required>
    <asp:ListItem Text="Select" Value="" />
                              <asp:ListItem Text="Blue" Value="Blue" />
                              <asp:ListItem Text="Green" Value="Green" />
                              <asp:ListItem Text="Red" Value="Red" />
                                 <asp:ListItem Text="Yellow" Value="Yellow" />
</asp:DropDownList>
                                  </div>
                             </div>
                          </div>
                       </div>



                   <div class="row">
                     <div class="col-md-6">
                         <center>
                     <asp:Button ID="Button1" CssClass="btn btn-lg btn-success" runat="server" Text="ADD" OnClick="Button1_Click" />    
                         </center>
                         </div>

                       <div class="col-md-6">
                           <center>
                     <asp:Button ID="Button2" CssClass="btn btn-lg btn-warning" runat="server" Text="UPDATE" OnClick="Button2_Click" />    
                         </center>
                               </div>
                       </div>
                    <br />

                    <marquee style="background-color:yellow;color:black">To Update:Type the Candidate ID you want to update and refill all the fields</marquee>
                    <br />


 <a href="ManageCandidates.aspx"><< Back to Candidate Management</a>
                   </div>
                </div>
             </div>
                </div> 

            </div>

    
        <script>
            // Add any additional JavaScript here if required
        </script>

    </body>

</asp:Content>
