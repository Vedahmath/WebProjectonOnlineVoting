<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AcademicDept.aspx.cs" Inherits="OnlineVotingSystem.AcademicDept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br />
    <div class="container">
      <div class="row">
         <div class="col-md-12">

            <div class="card">

               <div class="card-body">
                   <div class="row">
                       <div class="col">
                           <center>
                           <h3 style="background-color:dimgray;color:white;font-family:'Times New Roman', Times, serif">
Candidates from Academic Department

                           </h3></center>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col">
                           <hr />
                           </div>
                       </div>
                   <div class="row">
                       <div class="col">
                           <center>
                           <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                               <AlternatingRowStyle BackColor="White" />
                               <EditRowStyle BackColor="#7C6F57" />
                               <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#E3EAEB" />
                               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                               <SortedAscendingCellStyle BackColor="#F8FAFA" />
                               <SortedAscendingHeaderStyle BackColor="#246B61" />
                               <SortedDescendingCellStyle BackColor="#D4DFE1" />
                               <SortedDescendingHeaderStyle BackColor="#15524A" />
                           </asp:GridView>
                               </center>
                           </div>
                       </div>


                          <div class="row">
                       <div class="col">
                           <hr />
                           </div>
                       </div>
                   </div>
                <div class="row">
                    <div class="col">
                           <center>
                               <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                   <asp:ListItem Selected="True">Blue</asp:ListItem>
                                   <asp:ListItem Selected="False">Green</asp:ListItem>
                                   <asp:ListItem Selected="False">Red</asp:ListItem>
                                   <asp:ListItem Selected="False">Yellow</asp:ListItem>
                               </asp:RadioButtonList>
                               <br />
                           <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#3399FF" BorderColor="#3399FF" BorderStyle="Solid" OnClick="Button1_Click" />
                                </center>
                           </div>
                       </div>
                <br />
                <asp:Label ID="lblmessage" Cssclass="message-label" runat="server" Visible="false"></asp:Label>
                   </div>
               
               <br />
               <br />
               <br />
             <br />
               <br />
              <a href="CastVote.aspx"><< Back to Cast Vote Page</a>
         </div>

      </div>

     </div>

   



</asp:Content>
