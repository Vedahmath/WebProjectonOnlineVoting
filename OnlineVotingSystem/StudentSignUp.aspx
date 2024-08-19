<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentSignUp.aspx.cs" Inherits="OnlineVotingSystem.StudentSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
    </head>
    <body>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="images/register.png" style="width:100px;height:70px" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Student Registration</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Student Full Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" pattern="[A-Za-z ]+" title="Name should only contain alphabets." required></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Student ID</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" pattern="[A-Za-z0-9]+" title="Student ID should contain only alphanumeric values." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Course</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" required>
                                            <asp:ListItem Text="Select" Value="" />
                                            <asp:ListItem Text="BCA" Value="BCA" />
                                            <asp:ListItem Text="BCom" Value="BCom" />
                                            <asp:ListItem Text="BSc" Value="BSc" />
                                            <asp:ListItem Text="BA" Value="BA" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Semester</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" required>
                                            <asp:ListItem Text="Select" Value="" />
                                            <asp:ListItem Text="I" Value="I" />
                                            <asp:ListItem Text="II" Value="II" />
                                            <asp:ListItem Text="III" Value="III" />
                                            <asp:ListItem Text="IV" Value="IV" />
                                            <asp:ListItem Text="V" Value="V" />
                                            <asp:ListItem Text="VI" Value="VI" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
        <label>E-mail Id</label>
        <div class="form-group">
            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="Email" pattern="[A-Za-z0-9._%+-]+@gmail\.com$" title="Please enter a valid Gmail address ending with '@gmail.com'." required></asp:TextBox>
        </div>
    </div>

                                <div class="col-md-6">
                                    <label>Contact Number</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" input-type="tel"  pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Please enter a valid 10 digit phone number." required></asp:TextBox>
                               </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <label>Full Address</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" Textmode="Multiline" Rows="2" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <span class="badge badge-pill badge-info">Login Credentials</span>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    
                                    <label>User ID</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="User ID" pattern="[A-Za-z]+" title="User ID should only contain letters." required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Password</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="static" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$" title="Password must be at least 8 characters long, contain one lowercase letter, one uppercase letter, and one digit." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                   
                    <a href="homepage.aspx">&lt;&lt; Back to Home</a>
                   
                </div>

            </div>

        </div>

        <script>
            // Add any additional JavaScript here if required
        </script>

    </body>
</asp:Content>

