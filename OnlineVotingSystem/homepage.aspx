<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnlineVotingSystem.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <section>
       <center>
<img src="images/home.jpg" style="width:1470px;height:400px" />
 
           </center>
        </section>

    <section style="background-color:aqua">
        <div class="container">
            <div class="row">
                 <div class="col-md-12">
                     <center>

                     <h2 style="font-family:'Monotype Corsiva';font-size:35px"><u>Our Features</u></h2>
                     <p><b><u>What is the purpose of our website</u></b></p>   
                         
<img src="images/Women-Vote.jpg" />
                        
                         <p><b>To keep a track on the votes casted by the Students of our College.</b></p>
                     </center>
            </div>
            </div>

             <div class="row">
                 <div class="col-md-12">
                     <center>
                     <h2 style="font-family:Calibri;font-size:35px"><b><u>How our website works</u></b></h2>                     
                     </center>
            </div>
                </div>


             <div class="row">

                 <div class="col-md-4">
                     <center>
                         <br />
<img src="images/register.png" width="300px" />
                      <br />
                     <h4 style="font-family:Algerian;color:darkblue">Regiter into the website</h4>
                     <p class="text-center">Students should register into the website using their unique student ID</p>
                        </center>
                     </div>


                 <div class="col-md-4">
                     <center>
                       <br />
                     <img src="images/cast.jpeg" width="300px" />
                          <br />
                     <h4 style="font-family:Algerian;color:darkblue">Cast Vote</h4>
                     <p class="text-center">Students can cast their vote to their selected candidates of different department.</p>
                        </center>
                     </div>

                 

                 <div class="col-md-4">
                     <center>
                    <br />
<img src="images/logout.jpg" width="300px"/>
                          <br />
                     <h4 style="font-family:Algerian;color:darkblue">Log Out</h4>
                     <p class="text-center">After casting their vote,Students should log out from our website.For more information they can click on AboutUs. </p>
                        </center>
                     </div>


            </div>


        </div>
    </section>

</asp:Content>
