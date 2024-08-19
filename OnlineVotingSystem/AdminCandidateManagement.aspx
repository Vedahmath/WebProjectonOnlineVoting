<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminCandidateManagement.aspx.cs" Inherits="OnlineVotingSystem.AdminCandidateManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <div class="container">
      <div class="row">
         
         <div class="col-md-5">
         <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Candidate details
                           </h4>
                                        <img src="images/candidate.jpg"  width="100px"/>
                              </center>
                     </div>
                  </div>
       <div class="row">
                     <div class="col">
                        <hr>
                     </div>
              </div>
       <div class="row">
                     <div class="col-md-12">
                        <label>Candidate Dept</label>
                        <div class="form-group">
                            <div class="input-group">
                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Cultural" Value="Cultural" />
                              <asp:ListItem Text="Academics" Value="Academic" />
                              <asp:ListItem Text="Sports" Value="Sports" />
                                 <asp:ListItem Text="Anti-Rag" Value="Antirag" />
                             
                            </asp:DropDownList>
                           <asp:Button CssClass="btn btn-primary" ID ="Button2" runat="server" Text="Go" OnClick="Button2_Click" />

                        </div>
                            </div>
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
                           <h4>Candidate details</h4>
                          

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
                         <asp:GridView class="table  table-hover table-bordered"   ID ="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Candidate_ID" CellPadding="4" ForeColor="#333333" GridLines="None" >
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                             <Columns>
                                 <asp:BoundField DataField="Full_name" HeaderText="Full_name" SortExpression="Full_name" />
                                 <asp:BoundField DataField="Candidate_ID" HeaderText="Candidate_ID" ReadOnly="True" SortExpression="Candidate_ID" />
                                 <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                 <asp:BoundField DataField="House" HeaderText="House" SortExpression="House" />
                             </Columns>
                             <EditRowStyle BackColor="#999999" />
                             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#E9E7E2" />
                             <SortedAscendingHeaderStyle BackColor="#506C8C" />
                             <SortedDescendingCellStyle BackColor="#FFFDF8" />
                             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         </asp:GridView>
                     </div>
              </div>
                   </div>
                </div>
         </div>
          
    </div>
        </div>
   
</asp:Content>
