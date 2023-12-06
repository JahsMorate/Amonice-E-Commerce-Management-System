<%@ Page Title="" Language="C#" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Amonica.Userpage.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



    <nav>
        <div class="container mt-4 mb-4">
            <a class="navbar-brand" href="#">
                <span style="color: #686de0; font-size: 30px;"><i class="fa-solid fa-cart-shopping"></i><b>Amonica </b><span style="color: #2c3e50;">Login Credential</span></span>
            </a>
        </div>
    </nav>
    <div style="width: 100%; background-color: #686de0;">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-12">
                    <center>
                        <div>
                            <img src="../AMNCIMG/Backgroundimage/undraw_Experts_re_i40h-removebg-preview.png" class="img-fluid" />
                        </div>
                        <div>
                            <span style="color: #ffffff; font-size: 30px; font-weight: 700;">"Connect with <span style="color: #f39c12; font-weight: bold;">Amonica</span> Commnunity"</span>
                        </div>

                    </center> 
                </div>
                <div class="col-lg-5 col-md-5 col-sm-12">
                    <div class="card" style="border: none; box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;">
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div>
                                        <span style="font-size: 30px; color: #2c3e50;">Login Credential</span>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Username</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Username is required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Password</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Password is required" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn pt-2 pb-2" Style="background-color: #686de0; color: white; font-size: 18px; font-weight: 500;" runat="server" Text="Login" />
                                    </div>
                                    
                                    <center>
                                        <div>
                                            <a href="Userregistrationform.aspx" class="nav-link text-secondary">I Don't have any account? <span style="color: #686de0;">Sign-Up</span></a>
                                        </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>






</asp:Content>

