<%@ Page Title="" Language="C#" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Amonica.Userpage.Index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <link href="../CSSForm/amncHVROJCT.css" rel="stylesheet" />

    <link href="../AMNCBS5/bootstrap.min.css" rel="stylesheet" />
    <script src="../AMNCBS5/bootstrap.min.js"></script>
    <script src="../AMNCBS5/popper.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#search").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $(".col-lg-2.col-md-3.col-sm-4.col-6.p-1").filter(function () {
                    var match = $(this).text().toLowerCase().indexOf(value) > -1;
                    $(this).toggle(match);
                    return match;
                });

                // Show/hide "No search found" message
                if ($(".col-lg-2.col-md-3.col-sm-4.col-6.p-1:visible").length == 0) {
                    $("h2#no-search-found").show();
                    $("div#recent-files").hide();
                } else {
                    $("h2#no-search-found").hide();
                    $("div#recent-files").show();
                }
            });
        });
    </script>










</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <nav style="background-color: #5555dd;">
        <div class="container nav">
            <ul class="nav m-0">
                <li class="nav-item">
                    <a class="nav-link p-1 text-white" href="#">
                        <small>Seller Center</small>
                    </a>
                </li>
                <li class="nav-item">
                    <label class="nav-link p-1 text-white" href="#">
                        <small>|</small>
                    </label>
                </li>
                <li class="nav-item">
                    <a class="nav-link p-1 text-white" href="#">
                        <small>About Us</small>
                    </a>
                </li>
                <li class="nav-item">
                    <label class="nav-link p-1 text-white" href="#">
                        <small>|</small>
                    </label>
                </li>
                <li class="nav-item">
                    <a class="nav-link p-1 text-white" href="#">
                        <small>Help Center</small>
                    </a>
                </li>
                <li class="nav-item">
                    <label class="nav-link p-1 text-white" href="#">
                        <small>|</small>
                    </label>
                </li>
                <li class="nav-item">
                    <label class="nav-link p-1 text-white">
                        <small>Follow us on </small>
                        <a class=" text-white p-0" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                            </svg>
                        </a>
                    </label>
                </li>
            </ul>
        </div>
    </nav>
    <nav class="navbar navbar-expand-lg amnc-nav">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../AMNCIMG/AMNCDIMG/AMNCDWBIMG/mainLogo.png" />

            </a>
            <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-sliders" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z" />
                </svg>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="nav m-0">

                    <li class="nav-item">
                        <a class="nav-link p-1  text-white" href="#">
                            <small>Sell on <span style="color: #f39c12; font-weight: bolder;">Amonica</span></small>
                        </a>
                    </li>

                    <li class="nav-item">

                        <asp:LinkButton ID="LnkSingup" CssClass="nav-link p-1 text-white" runat="server">  <small>Sign Up</small></asp:LinkButton>
                    </li>

                    <li class="nav-item">

                        <asp:LinkButton ID="LnkLogin" CssClass="nav-link p-1 text-white" runat="server">   <small>Sign In</small></asp:LinkButton>

                    </li>

                </ul>

                <ul class="navbar-nav ms-auto justify-content-end">
                    <li class="nav-item">
                        <asp:LinkButton ID="lnkProfile" Visible="false" CssClass="nav-link" runat="server">
                           <span>
                               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                </svg>
                           </span> moretejahs@gmail.com
                        </asp:LinkButton>

                    </li>
                    <li class="nav-item">
                        <asp:LinkButton ID="LnkLogout" CssClass="nav-link" Visible="false" runat="server">
                            <i class="fa-solid fa-right-from-bracket"></i>
                        </asp:LinkButton>

                    </li>
                    <li class="nav-item">

                        <div class="pl-0 m-0" style="display: inline-block; height: 38px; width: 40px; position: relative; margin: 0 0 0 20px;">

                            <a href="#">
                                <asp:LinkButton ID="LnkCart" runat="server" Style="background-size: cover; width: 29px; height: 26px; left: 50%; top: 50%; margin: -12px 0 0 -14px; position: absolute;">
                                             <i class="fa-solid fa-cart-shopping text-white" ></i>
                                </asp:LinkButton>

                                <span style="position: absolute; background: #f36e36; color: #fff; top: -10px; font-weight: 400; right: -9px; text-align: center; border: 3px solid #f36e36; font-size: 13px; min-width: 14px; line-height: 14px; border-radius: 50%;">

                                    <%--This is for that cart --%>

                                    <asp:Label CssClass="badge m-0" Style="font-size: 12px;" Text="22" runat="server" />

                                    <%--This is for that cart --%>
                                </span>
                            </a>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="container pt-2">
        <div class="row p-1">


            <div class="col-lg-12 col-md-12 col-sm-12 p-1">
                <div class="card p-0" style="border: 0; box-shadow: rgba(33, 35, 38, 0.1) 0px 10px 10px -10px;">
                    <div class="card-body">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <span class=" text-black-50" style="font-weight: 500;">Categories
                                    </span>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move01">
                                        <asp:LinkButton ID="LnkAll" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                               <img src="../AMNCIMG/DummyImage/amncctgryimg/AllCAtegories.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    All 
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move02">
                                        <asp:LinkButton ID="LnkMeanappeal" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                               <img src="../AMNCIMG/DummyImage/amncctgryimg/meansappearal.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Men's Appeal
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>

                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move03">
                                        <asp:LinkButton ID="LnkWomernsAppeal" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/WomensApeals.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Women's Appeal
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move04">
                                        <asp:LinkButton ID="LnkWomenBag" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/womensBAg.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Women's Bag
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move05">
                                        <asp:LinkButton ID="LnkWomesnAccessroes" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/womensAccesories.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Women's Accessories
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move06">
                                        <asp:LinkButton ID="LnkGloceries" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/gloceries.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Gloceries
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move07">
                                        <asp:LinkButton ID="Lnkbabykids" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/babyKids.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Baby & Kids
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>

                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move09">
                                        <asp:LinkButton ID="lnkHomeandliving" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/homeandliving.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Home & Living
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move10">
                                        <asp:LinkButton ID="LnkHomeEntertainent" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/homeENtertainent.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                    Home & Entertainment
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move11">
                                        <asp:LinkButton ID="Lnkmobilegadget" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/mobileandGAdget.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Mobile & Gadget
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move12">
                                        <asp:LinkButton ID="lnkmobileAccessroies" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/mobleaccessories.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Mobile Accesories
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move13">
                                        <asp:LinkButton ID="Lnotoys" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/toy.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Toy & Kids
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move14">
                                        <asp:LinkButton ID="Lnmotorparts" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/motor.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Motor Parts
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move15">
                                        <asp:LinkButton ID="LnkmenShoes" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/mensohuse.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Men's Shoes
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move16">
                                        <asp:LinkButton ID="LnkMEnsAccesories" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/Menasbag.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                   Men's Accesories
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move17">
                                        <asp:LinkButton ID="LnkMakeup" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/makeup.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                  Makeup
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-2 col-sm-4 col-4 p-0">
                                    <div id="move18">
                                        <asp:LinkButton ID="Lnkltopcomputer" CssClass="nav-link p-0" runat="server">
                                        <div>
                                            <center>
                                             <img src="../AMNCIMG/DummyImage/amncctgryimg/laptopandComputer.png" width="90" />
                                            </center>
                                        </div>
                                        <div class="text-secondary">
                                            <small>
                                               <center>
                                                  Laptop & Computer
                                               </center>
                                            </small>
                                        </div>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h4><span><span class="text-secondary">Popular Product</span></span></h4>
            </div>
            <div class="col-lg-8 col-md-5 col-sm-12">
                <div class="form">
                    <label for="search">
                        <input type="text" placeholder="Search Item" id="search" style="width: 100%;" class="form-control" />

                        <div class="icon">
                            <svg stroke-width="2" stroke="currentColor" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="swap-on">
                                <path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" stroke-linejoin="round" stroke-linecap="round"></path>
                            </svg>
                            <svg stroke-width="2" stroke="currentColor" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="swap-off">
                                <path d="M10 19l-7-7m0 0l7-7m-7 7h18" stroke-linejoin="round" stroke-linecap="round"></path>
                            </svg>
                        </div>
                        <button type="reset" class="close-btn">
                            <svg viewBox="0 0 20 20" class="h-5 w-5" xmlns="http://www.w3.org/2000/svg">
                                <path clip-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" fill-rule="evenodd"></path>
                            </svg>
                        </button>
                    </label>
                </div>
            </div>
        </div>
        <div class="row">

            <center>
                <h2 id="no-search-found" style="display: none;"><span class="text-secondary">RECENT SUBMITTED FILES
                </span></h2>
            </center>

            <div class="col-lg-2 col-md-3 col-sm-4 col-6 p-1">
                <a href="#" style="text-decoration: none;" class="text-secondary">
                    <div class="card " style="border: none;" id="amncitms">
                        <div class="card-body p-2">
                            <img src="../AMNCIMG/Items/rogExample.jpg" class="card-img-top img-fluid" style="min-width: 100%; min-height: 180px;" />
                            <div class="container-fluid pr-1 pl-1">
                                <div class="row">
                                    <div class="p-0">
                                        <span class="text-dark">Asus ROG RTIX G15 G513RC-HN016W 15"</span>
                                    </div>
                                    <div class="p-0">
                                        <small><span style="color: #e67e22;">₱ 99,000.00</span></small>
                                    </div>

                                    <div class="p-0">
                                        <small>
                                            <span class="text-muted"><small>Sold out 4k</small></span>
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>


        </div>
    </div>
    <br />
    <br />





</asp:Content>

