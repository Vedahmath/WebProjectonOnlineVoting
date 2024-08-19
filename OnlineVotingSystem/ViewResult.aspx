<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="OnlineVotingSystem.ViewResult" %>
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
                            <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Cultural" Value="Cultural" />
                              <asp:ListItem Text="Academics" Value="Academic" />
                              <asp:ListItem Text="Sports" Value="Sports" />
                                 <asp:ListItem Text="Anti-Rag" Value="Antirag" />                  
                            </asp:DropDownList>

                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Click here to View results" OnClick="Button1_Click" />
                            </center>
                         </div>
                      </div>
                   
                           <center>
                            <asp:Chart ID="Chart1" runat="server">
                                <Series>
                                    <asp:Series Name="Series1"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                                <Titles>
                                    <asp:Title Name="results" Text="RESULTS" >
                                    </asp:Title>
                                </Titles>
                            </asp:Chart>
                        </center>


                         </div>

        </div>
                </div>
              <a href="homepage.aspx"><< Back to Home</a><br>
            </div>
    </div>






</asp:Content>
