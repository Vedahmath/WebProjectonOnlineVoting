<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CastVote.aspx.cs" Inherits="OnlineVotingSystem.CastVote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" >
      <div class="row">
         <div class="col-md-12">

            <div class="card"  >

               <div class="card-body">
                   <div class="row" style="background-color:antiquewhite">
                       
                       <div class="col-md-6">
                           <center>
                               <h4 >ACADEMICS DEPARTMENT</h4>
                           <img src="images/academics.jpg" width="150px"/>
                           <div>
                            <asp:LinkButton class="btn btn-block btn-lg btn-success" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">VOTE</asp:LinkButton>                                                    
                           </div>
                               </center>
                       </div>

                        <div class="col-md-6">
                          <center>
                               <h4 >SPORTS DEPARTMENT</h4>
                               <img src="images/sport.jpg" width="250px" />
                           <div>
                            <asp:LinkButton class="btn btn-block btn-lg btn-success" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">VOTE</asp:LinkButton>                                                    
                           </div>
                             </center> 
                       </div>
 
</div>


                   <div class="row">
                       <div class="col">
                           <hr />
                       </div>
                   </div>

                    <div class="row "  style="background-color:antiquewhite" >
                       
                       <div class="col-md-6">
                           <center>
                                <h4>CULTURAL DEPARTMENT</h4>
                               <img src="images/th.jpg"width="200px" />
                           
                           <div>
                            <asp:LinkButton class="btn btn-block btn-lg btn-success" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">VOTE</asp:LinkButton>                                                    
                           </div>
                               </center>
                       </div>

                        <div class="col-md-6">
                          <center>
                               <h4>ANTI-RAGING DEPARTMENT</h4>
                              <img src="images/anti.jpg"  width="100px" />
                               
                           <div>
                            <asp:LinkButton class="btn btn-block btn-lg btn-success" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">VOTE</asp:LinkButton>                                                    
                           </div>
                             </center> 
                       </div>
 
                        <br />

</div>        


                                </div>
                </div>
             </div>
          </div>
        </div>
    <br />   
                      <br />   
                      <br />   
                      <br />   

    <br />   





</asp:Content>
