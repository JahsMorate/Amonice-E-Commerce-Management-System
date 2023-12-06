<%@ Page Title="" Language="C#" MasterPageFile="~/Userpage/Default.Master" Async="true" AutoEventWireup="true" CodeBehind="Sellerregistrationform.aspx.cs" Inherits="Amonica.Userpage.Sellerregistrationform" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <nav class="navbar" style="background-color: #ffffff;">
        <div class="container  mt-0 mb-0">
            <a class="navbar-brand" href="#">
                <span style="color: #686de0; font-size: 30px;"><i class="fa-solid fa-cart-shopping"></i><b>Amonica </b><span style="color: #2c3e50;">Become a Seller</span></span>
            </a>
            <ul class="navbar nav p-3">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link" style="color: #686de0; font-size: 1.2rem; margin-right: 14px;">Need help?</a>
                </li>

            </ul>
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

                                        <asp:HiddenField ID="hndID" runat="server" />
                                        <span style="font-size: 30px; color: #2c3e50;">Sign Up</span>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtCompanyname" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Company Name</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Username is required" ControlToValidate="txtCompanyname"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtCompanyAddress" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Company Address</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" ErrorMessage="Username is required" ControlToValidate="txtCompanyAddress"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtFName" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Complete Name</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Complete name is required" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtContact" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Contact Number</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtCurrentAddress" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Current Address</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="Current Address is required" ControlToValidate="txtCurrentAddress"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Complete name" runat="server"></asp:TextBox>
                                            <label for="floatingInput">Active Email</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                               

                                    <div class="d-grid gap-2">
                                        <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn pt-2 pb-2" Style="background-color: #686de0; color: white; font-size: 15px; font-weight: 400;" runat="server" Text="Save Changes" />
                                    </div>
                                    <center>
                                        <div>
                                            <a href="Userregistrationform.aspx" class="nav-link text-secondary">I don't have any Accounnt? <span style="color: #686de0;">Create new account</span></a>
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

