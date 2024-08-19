<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminVotersManagement.aspx.cs" Inherits="OnlineVotingSystem.AdminVotersManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-5">
         <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student details
                           </h4>
<img src="images/vote.jpg"  width="100px" />
                           
                              </center>
                     </div>
                  </div>
       <div class="row">
                     <div class="col">
                        <hr>
                     </div>
              </div>
       <div class="row">
                     <div class="col-md-4">
                        <label>Student ID</label>
                        <div class="form-group">
                            <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                          <asp:Button CssClass="btn btn-primary  " ID ="Button2" runat="server" Text="Go" OnClick="Button2_Click" />

                        </div>
                            </div>
                     </div>              
                     <div class="col-md-8">
                     <label>Student Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Student Name"></asp:TextBox>
                        </div>
                     </div>
              </div>
                <div class="row">
                     <div class="col-4">
                         <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" runat ="server" Text="Add" OnClick="Button3_Click" />     
                     </div>
              
                     <div class="col-4">
                         <asp:Button ID="Button4" class="btn btn-lg btn-block btn-warning" runat ="server" Text="Update" OnClick="Button4_Click" />     
                     </div>
            
                     <div class="col-4">
                         <asp:Button ID="Button5" class="btn btn-lg btn-block btn-danger" runat ="server" Text="Delete" OnClick="Button5_Click" />     
                     </div>
              </div>

                   </div>
                </div>
              <a href="homepage.aspx"><< Back to Home</a><br /><br />
             </div>

          <div class="col-md-7">

              <div class="card">
               <div class="card-body">
                 
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student details</h4>
                         </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
              </div>

                           <div class="row">
                     <div class="col">
                         <asp:GridView class="table table-hover table-bordered"   ID ="GridView1" runat="server"></asp:GridView>
                     </div>
              </div>
                   </div>
                </div>
             
         </div>
    </div>
        </div>
</asp:Content>
