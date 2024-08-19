<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="votersprofile.aspx.cs" Inherits="OnlineVotingSystem.votersprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <section>
 <div class="container">
      <div class="row">
          <div class="col">
               <div class="card">
               <div class="card-body">
                   <div class="row">
                       <div class="col-md-12">
                           <center>
                               <img src="images/register.png" style="width:100px;height:50px" />
                           </center>
                       </div>
                   </div>

          </div>
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Vote Matters</h4>
                         
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
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [stdname], [stdid], [course], [sem] FROM [std_reg]"></asp:SqlDataSource>

                         <asp:GridView class="table table-hover table-bordered"   ID ="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                             <Columns>
                                 <asp:BoundField DataField="stdname" HeaderText="Student Name" SortExpression="stdname" />
                                 <asp:BoundField DataField="stdid" HeaderText="Student ID" SortExpression="stdid" />
                                 <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                                 <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
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
                 <br />
        <br />
     
                   

           <a href="homepage.aspx"><< Back to Home</a>
            
                   </div>
                </div>
            

          </div>

          </div>
   </section>
        

</asp:Content>
