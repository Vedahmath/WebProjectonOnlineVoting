<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCandidates.aspx.cs" Inherits="OnlineVotingSystem.ManageCandidates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
     </script>
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
        <img src="images/VOTE%20(1).jpg" width="100px" />
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
                        
                       <asp:Label ID="Label1" runat="server" Text="Enter The Candidate ID"></asp:Label>
                        
                       </div>
                       </div>

                   <div class="row">
                     <div class="col">
                          <div class="form-group">
                              <div class="input-group">
                       <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                         </div>
                              </div>
                         </div>
                      </div>

                   <div class="row">
                     <div class="col-md-4">
                       <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />
                          </div>

                       <div class="col-md-4">
                           <asp:Button ID="Button2" CssClass="btn btn-warning btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />
                        
                          </div>

                       <div class="col-md-4">
                           <asp:Button ID="Button3" CssClass="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />
                        
                          </div>
                      </div>

                   <div class="row">
                       <asp:Label ID="lblMessage" runat="server" visible="false"></asp:Label>
                   </div>

                   </div>
                </div>
             </div>



          <div class="col-md-7">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [Candidate_details]"></asp:SqlDataSource>

             <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Candidate_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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


</asp:Content>
