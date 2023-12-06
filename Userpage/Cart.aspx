<%@ Page Title="Amonica | Cart" Language="C#" Async="true" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Amonica.Userpage.Cart" %>

<%@ Import Namespace="Amonica.Models" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container pt-5">

        <div>
            <span style="font-weight: bolder; font-size: 30px; color: #686de0;">
                <i class="fa-solid fa-cart-shopping"></i><span>Amo<span style="color: #f39c12;">nica</span></span> |
            Shopping Cart
            </span>
        </div>
        <hr />

        <div class="row mt-5">
            <div class="col-lg-8 col-md-8 col-sm-12">
                <asp:Repeater ID="RCart" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-12 col-md-12 col-sm-12 mb-2">
                            <div class="card" style="border: 1px solid #5352ed;">
                                <div class="card-header" style="background-color: white;">
                                    <div class="row p-0 m-0">
                                        <div class="col-lg-12 col-md-12 col-sm-12 p-0 m-0">
                                            <i class="fa-solid fa-store"></i>
                                            <span style="color: #57606f; font-size: 15px; font-weight: bold;"><%# Eval("brandName") %>
                                     
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-1" style="background-color: #686de030;">
                                    <div class="container-fluid">

                                        <div class="row">
                                            <div class="col-lg-2 col-md-2 p-0">


                                              

                                                <img src="<%# Utils.GetImageUrl(Eval("pimge")) %>" style="max-width: 80px; min-width: 80px; max-height: 80px; min-height: 80px;" />
                                            </div>
                                            <div class="col-lg-7 col-md-7 col-sm-7 m-0 p-0">
                                                <div>
                                                    <small><span>
                                                        <%--this is for product Pname--%>
                                                        <b>
                                                            <asp:Label Text="Name :" runat="server" /></b>
                                                        <span><%# Eval("pname") %></span>
                                                    </span></small>
                                                </div>
                                                <div>

                                                    <div class="row">
                                                        <div class="col-12">
                                                            <small>
                                                                <b>
                                                                    <asp:Label Text="Category :" runat="server" /></b>
                                                                <span><%# Eval("pcategory") %></span>
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="row">

                                                        <div class="col-lg-5 co-md-5 col-sm-6">
                                                            <small>
                                                                <span>
                                                                    <b>

                                                                        <%--this is for the Gender--%>
                                                                        <asp:Label Text="Delivery :" Style="font-size: 12px;" runat="server" /></b>
                                                                    <span>
                                                                        <img src="https://lzd-img-global.slatic.net/g/tps/imgextra/i1/O1CN010988Cf1yvAZ2S2CJG_!!6000000006640-2-tps-51-26.png_2200x2200q75.jpg_.webp" width="30" />
                                                                        <span style="color: #686de0; font-weight: bold;">Amo<span style="color: #f0932b;">nica</span></span>
                                                                    </span>

                                                                </span>
                                                            </small>
                                                        </div>

                                                        <div class="col-lg-4 co-md-5 col-sm-6">
                                                            <div class="input-group input-group-sm mb-3">
                                                                <asp:HiddenField ID="cartID" Value='<%# Eval("CrtId") %>' runat="server" />
                                                                <asp:HiddenField ID="userID" Value='<%# Eval("userIDFk") %>' runat="server" />

                                                                <asp:Label ID="lblPrice" Visible="false" Text='<%# Eval("pprice") %>' runat="server" />
                                                                <b><span class=" text-dark p-1" id="inputGroup-sizing-sm" style="font-size: 12px;">Qty  </span></b>
                                                                <asp:TextBox ID="txtQty" TextMode="Number" Text='<%# Eval("cqty", "{0:N0}") %>' Style="font-weight: bold; color: black;" min="1" class=" form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" runat="server"></asp:TextBox>
                                                                <asp:LinkButton ID="LnkUpdate" OnClick="LnkUpdate_Click" CommandArgument='<%# Eval("CrtId") %>' Style="color: white; background-color: #686de0;" CssClass="btn btn-sm pr-1 pl-1 " runat="server">
                                                            <small>
                                                                <span>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                                                                      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                                                                    </svg>
                                                                </span>
                                                            </small>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-12">

                                                            <small>
                                                                <asp:LinkButton ID="Btn" CausesValidation="false" CommandArgument='<%# Eval("CrtId") %>' OnClick="Btn_Click" CssClass="btn btn-outline-danger btn-sm pr-1 pl-1 " runat="server" OnClientClick="return confirm('Are you sure do you want to Delete?')">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                                                      <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                                                      <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                                                    </svg> Remove
                                                                </asp:LinkButton>
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
                                                            <asp:Label ID="LblPrices" runat="server" Text='<%# Eval("ctotalprice", "{0:N2}") %>'></asp:Label>
                                                        </span>

                                                    </div>

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


            <div class="col-lg-4 col-md-4 col-sm-12">

                <asp:Repeater ID="RtotalSummary" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="card" style="border: 1px solid #5352ed;">
                                <div class="card-header">
                                    <div>
                                        <b>Shipping Summary</b>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <asp:Label ID="Label6" Style="font-size: 14px; font-weight: bold;" runat="server" Text="Sub-Total"></asp:Label>
                                                <div class="fa-pull-right">
                                                    <asp:Label ID="Label8" Style="font-size: 15px; font-weight: 400; color: black;" runat="server" Text="₱"></asp:Label>
                                                    <asp:Label ID="Label7" Style="font-size: 15px; font-weight: 400; color: black;" runat="server" Text="232,424"></asp:Label>
                                                </div>

                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <asp:Label ID="Label1" Style="font-size: 14px; font-weight: bold;" runat="server" Text="Shipping Fee"></asp:Label>
                                                <div class="fa-pull-right">

                                                    <asp:Label ID="Label3" Style="font-size: 15px; font-weight: 400; color: black;" runat="server" Text="Free Delivery"></asp:Label>
                                                </div>

                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                <asp:Label ID="Label4" Style="font-size: 14px; font-weight: bold;" runat="server" Text="Total Amount"></asp:Label>
                                                <div class="fa-pull-right">
                                                    <asp:Label ID="Label5" Style="font-size: 18px; font-weight: 500; color: #2ecc71;" runat="server" Text="₱"></asp:Label>
                                                    <asp:Label ID="Label9" Style="font-size: 18px; font-weight: 500; color: #2ecc71;" runat="server" Text='<%# Eval("totalPaying", "{0:N2}") %>'></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 ">
                                                <div class="fa-pull-right pt-2">
                                                    <asp:LinkButton ID="LnkPlaceOrder" OnClick="LnkPlaceOrder_Click" CssClass="btn btn-block btn-md btn-primary" runat="server">
                                                        Place Order
                                                    </asp:LinkButton>

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

</asp:Content>

