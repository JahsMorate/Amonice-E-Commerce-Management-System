<%@ Page Title="Amonica | Place Order" Language="C#" Async="true" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Placedorder.aspx.cs" Inherits="Amonica.Userpage.Placedorder" %>

<%@ Import Namespace="Amonica.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <br />
    <div class="container">
        <span style="font-weight: bold; color: #686de0; font-size: 40px;">Check Out</span>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 m-0 pr-4 pl-4">
                <div class="card p-0 m-1">
                    <div style="height: 3px; width: 100%; background-position-x: -30px; background-size: 116px 3px; background-image: repeating-linear-gradient(45deg,#f0932b,#f0932b 33px,transparent 0,transparent 41px,#686de0 0,#686de0 74px,transparent 0,transparent 82px); }">
                    </div>
                    <div class="card-body " style="">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <span>

                                        <span style="display: flex; align-items: center; font-size: 1.125rem; color: #686de0; margin-bottom: 20px; text-transform: capitalize; flex: 1 1 auto;">
                                            <i class="fa-solid fa-location-dot pr-2"></i>Delivery Address

                                        </span>
                                    </span>
                                </div>
                                <div class="row">
                                    <asp:Repeater ID="Rprofile" runat="server">
                                        <ItemTemplate>
                                            <div class="col-lg-3 col-md-4 col-sm-6">
                                                <span style="color: #686de0;">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                                                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                                                    </svg>
                                                </span>

                                                <%# Eval("completename") %>
                                            </div>
                                            <div class="col-lg-5 col-md-5 col-sm-4">
                                                <span style="color: #686de0;">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-at-fill" viewBox="0 0 16 16">
                                                        <path d="M2 2A2 2 0 0 0 .05 3.555L8 8.414l7.95-4.859A2 2 0 0 0 14 2H2Zm-2 9.8V4.698l5.803 3.546L0 11.801Zm6.761-2.97-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 9.671V4.697l-5.803 3.546.338.208A4.482 4.482 0 0 1 12.5 8c1.414 0 2.675.652 3.5 1.671Z" />
                                                        <path d="M15.834 12.244c0 1.168-.577 2.025-1.587 2.025-.503 0-1.002-.228-1.12-.648h-.043c-.118.416-.543.643-1.015.643-.77 0-1.259-.542-1.259-1.434v-.529c0-.844.481-1.4 1.26-1.4.585 0 .87.333.953.63h.03v-.568h.905v2.19c0 .272.18.42.411.42.315 0 .639-.415.639-1.39v-.118c0-1.277-.95-2.326-2.484-2.326h-.04c-1.582 0-2.64 1.067-2.64 2.724v.157c0 1.867 1.237 2.654 2.57 2.654h.045c.507 0 .935-.07 1.18-.18v.731c-.219.1-.643.175-1.237.175h-.044C10.438 16 9 14.82 9 12.646v-.214C9 10.36 10.421 9 12.485 9h.035c2.12 0 3.314 1.43 3.314 3.034v.21Zm-4.04.21v.227c0 .586.227.8.581.8.31 0 .564-.17.564-.743v-.367c0-.516-.275-.708-.572-.708-.346 0-.573.245-.573.791Z" />
                                                    </svg>
                                                </span>

                                                <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <span style="display: flex; align-items: center; font-size: 1.125rem; color: black; margin-bottom: 20px; text-transform: capitalize; flex: 1 1 auto;">Products Purchase
                    </span>
                    <div class="container-fluid">

                        <asp:Repeater ID="ROrderSummary" runat="server">

                            <ItemTemplate>
                                <div class="card mb-1" style="border: 1px solid #5352ed;">
                                    <div class="card-header p-0 m-0" style="background-color: white;">
                                        <div class="row p-0 m-0">
                                            <div class="col-lg-12 col-md-12 col-sm-12 p-0 m-0">
                                                <i class="fa-solid fa-store"></i>
                                                <span style="color: #57606f; font-size: 13px; font-weight: bold;">
                                                    <asp:Label ID="LblBrand" runat="server" Text='<%# Eval("brandName") %>'></asp:Label>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-body p-1" style="background-color: #686de030;">
                                        <div class="container-fluid">

                                            <div class="row">
                                                <div class="col-lg-2 col-md-2 p-0">



                                                    <img src="<%# Utils.GetImageUrl(Eval("pimge")) %>" width="50" style="max-width: 50px; min-width: 50px; max-height: 50px; min-height: 50px;" />
                                                </div>
                                                <div class="col-lg-7 col-md-7 col-sm-7 m-0 p-0">
                                                    <div>
                                                        <small><span>
                                                            <%--this is for product Pname--%>
                                                            <b>
                                                                <asp:Label Text="Name :" runat="server" /></b>
                                                            <asp:Label ID="LblPname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                                        </span></small>
                                                    </div>
                                                    <div>

                                                        <div class="row">
                                                            <div class="col-lg-3 co-md-6 col-sm-6">
                                                                <small>
                                                                    <span>
                                                                        <b>
                                                                            <%--this is for the size--%>
                                                                            <asp:Label Text="Category :" Style="font-size: 12px;" runat="server" /></b>
                                                                        <asp:Label ID="LblSize" Style="font-size: 12px;" runat="server" Text='<%# Eval("pcategory") %>'></asp:Label>
                                                                    </span>
                                                                </small>
                                                            </div>
                                                            <div class="col-lg-6 co-md-6 col-sm-6">
                                                                <small>
                                                                    <span>
                                                                        <b>

                                                                            <%--this is for the Gender--%>
                                                                            <asp:Label Text="Courier :" Style="font-size: 12px;" runat="server" /></b>
                                                                        <span>
                                                                            <img src="https://lzd-img-global.slatic.net/g/tps/imgextra/i1/O1CN010988Cf1yvAZ2S2CJG_!!6000000006640-2-tps-51-26.png_2200x2200q75.jpg_.webp" width="30" />
                                                                            <span style="color: #686de0; font-weight: bold;">Amo<span style="color: #f0932b;">nica</span></span>
                                                                        </span>

                                                                    </span>
                                                                </small>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-4">
                                                    <div class=" fa-pull-right">
                                                        <div>
                                                            <span style="font-weight: bolder; font-size: 20px; color: #d35400;">
                                                                <%--this is for the prize--%>
                                                                <asp:Label Text="₱" runat="server" />
                                                                <asp:Label ID="LblPrice" runat="server" Text='<%# Eval("ctotalprice", "{0:N2}") %>'></asp:Label>
                                                            </span>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-12 col-md-12 col-sm-12 mt-1">
            <asp:Repeater ID="RTotalPrice" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <div class="card-header" style="background-color: white;">
                            <div class="pt-2 pb-2">
                                <span style="font-size: 18px;">Payment Method
                                </span>
                                <span class="fa-pull-right" style="font-size: 15px;">Cash on Delivery
                                </span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Complete name" runat="server" required></asp:TextBox>
                                            <label for="floatingInput">Address</label>
                                        </div>
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" ErrorMessage="Address is required" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fa-pull-right">
                                <%--<asp:HiddenField ID="userID" Value='<%# Eval("userIDFk") %>' runat="server" />--%>
                                <%--this is for total payment--%>
                                <asp:Label Style="grid-row-start: 19; grid-row-end: 20;" CssClass="pr-4" Text="Total Payment : " runat="server" />
                                <asp:Label Style="height: 50px; font-size: 28px; color: #27ae60;" Text='<%# Eval("totalPaying", "{0:N2}") %>' runat="server" />
                            </div>
                        </div>

                        <div class="card-footer" style="background-color: white;">
                            <div class="fa-pull-right">
                                <asp:Button ID="BtnPlaceOrder" OnClick="BtnPlaceOrder_Click" OnClientClick="return confirm('Are you sure you do you want to place order?')" CssClass="btn btn-md" Style="background-color: #27ae60; font-weight: 500; color: white;" runat="server" Text="Place Order" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </div>




</asp:Content>

