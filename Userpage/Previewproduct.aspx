<%@ Page Title="" Language="C#" MasterPageFile="~/Userpage/Default.Master" Async="true" AutoEventWireup="true" CodeBehind="Previewproduct.aspx.cs" Inherits="Amonica.Userpage.Previewproduct" %>

<%@ Import Namespace="Amonica.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../CSSForm/amncHVROJCT.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




    <asp:HiddenField ID="useridss" runat="server" />

    <asp:HiddenField ID="userID" runat="server" />

    <div class="container pt-4">
        <div clasq="row pt-4">
            <div class="card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;">
                <div class="card-body">
                    <asp:Repeater ID="Rpreviewproducts" runat="server">
                        <ItemTemplate>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-sm-12 p-0">
                                        <img src="<%# Utils.GetImageUrl(Eval("pimge")) %>" style="min-width: 520px; max-width: 520px; min-height: 520px; max-height: 520px;" class="img-fluid" alt="Alternate Text" />
                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-12">
                                        <div class="text-dark">
                                            <h1><%# Eval("pname") %></h1>
                                        </div>
                                        <div>
                                            <small>
                                                <span style="color: #ff3838;">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                </span>
                                            </small>
                                        </div>
                                        <div>
                                            <span>
                                                <i class="fa-sharp fa-solid fa-store" style="color: #686de0;"></i>
                                            </span>
                                            <span><b><%# Eval("brandName") %></b></span>
                                        </div>

                                        <div>
                                            <span><i class="fa-sharp fa-solid fa-location-dot text-danger"></i><%# Eval("companyAddress") %></span>
                                        </div>
                                        <asp:Label ID="lblPrice" Visible="false" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>

                                        <div class="text-secondary">
                                            Category <b><span><%# Eval("pcategory") %></span></b>
                                        </div>
                                        <div class="card p-0" style="background-color: #f1f2f6; border: none;">
                                            <div class="card-body p-1">
                                                <div style="color: #686de0;">
                                                    <h2>₱ <%# Eval("pprice", "{0:N2}") %></h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pb-2">
                                            Shipping <span>
                                                <img src="https://lzd-img-global.slatic.net/g/tps/imgextra/i1/O1CN010988Cf1yvAZ2S2CJG_!!6000000006640-2-tps-51-26.png_2200x2200q75.jpg_.webp" width="30" />
                                                <span style="color: #686de0; font-weight: bold;">Amo<span style="color: #f0932b;">nica</span></span>
                                            </span>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-5 col-sm-12">

                                                <asp:TextBox ID="txtQty" TextMode="Number" min="1" CssClass="form-control" placeholder="Enter Quantity" runat="server"></asp:TextBox>

                                                <div>
                                                    <small>
                                                        <asp:RequiredFieldValidator ControlToValidate="txtQty" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </small>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-12">
                                                <asp:LinkButton ID="LnkAddtocard" OnClick="LnkAddtocard_Click" CommandArgument='<%# Eval("tblId") %>' CssClass="btn" Style="color: white; background-color: #686de0;" runat="server">
                                                    <span>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-check-fill" viewBox="0 0 16 16">
                                                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708z" />
                                                        </svg>
                                                    </span>Add to Cart</asp:LinkButton>
                                            </div>
                                        </div>

                                        <div class="text-secondary">
                                            <h6>
                                                <%# Eval("pdescription") %>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 p-1">
                <div class="card">
                    <div class="card-body" style="border-bottom: 3px solid #686de0;">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <center>
                                            <span style="color: #686de0; font-size: 30px;"><b>Related Items</b></span>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="row">
            <asp:Repeater ID="RSuggestedItem" runat="server">
                <ItemTemplate>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-6 p-1">
                        <a href="Previewproduct.aspx?pid=<%# Eval("tblId") %>" style="text-decoration: none;" class="text-secondary">
                            <div class="card " style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;" id="amncitms">
                                <asp:Image ID="Image1" ImageUrl='<%# Utils.GetImageUrl(Eval("pimge")) %>' Style="min-height: 200px; max-height: 200px;" class="card-img-top" runat="server" />
                                <div class="card-body p-2">
                                    <div class="container-fluid pr-1 pl-1">
                                        <div class="row">
                                            <div class="p-0">
                                                <span class="text-dark"><%# Eval("pname") %></span>
                                            </div>
                                            <div class="p-0">
                                                <span style="color: #e67e22;">₱ <%# Eval("pprice", "{0:N2}") %></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>








</asp:Content>

