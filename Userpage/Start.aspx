<%@ Page Title="" Language="C#" Async="true" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Amonica.Userpage.Start" %>

<%@ Import Namespace="Amonica.Models" %>
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
                                        <asp:LinkButton ID="LnkAll" OnClick="LnkAll_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkMeanappeal" OnClick="LnkMeanappeal_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkWomernsAppeal" OnClick="LnkWomernsAppeal_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkWomenBag" OnClick="LnkWomenBag_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkWomesnAccessroes" OnClick="LnkWomesnAccessroes_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkGloceries" OnClick="LnkGloceries_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="Lnkbabykids" OnClick="Lnkbabykids_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="lnkHomeandliving" OnClick="lnkHomeandliving_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkHomeEntertainent" OnClick="LnkHomeEntertainent_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="Lnkmobilegadget" OnClick="Lnkmobilegadget_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="lnkmobileAccessroies" OnClick="lnkmobileAccessroies_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="Lnotoys" OnClick="Lnotoys_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="Lnmotorparts" OnClick="Lnmotorparts_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkmenShoes" OnClick="LnkmenShoes_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkMEnsAccesories" OnClick="LnkMEnsAccesories_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="LnkMakeup" OnClick="LnkMakeup_Click" CssClass="nav-link p-0" runat="server">
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
                                        <asp:LinkButton ID="Lnkltopcomputer" OnClick="Lnkltopcomputer_Click" CssClass="nav-link p-0" runat="server">
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
                <div class="">
                    <label for="search">
                        <input type="text" placeholder="Search Item" id="search" style="width: 100%; border: 1px solid #4834d4;" class="form-control" />
                    </label>
                </div>
            </div>
        </div>
        <br />
        <div class="row">

            <center>
                <h2 id="no-search-found" style="display: none;"><span class="text-secondary">RECENT SUBMITTED FILES
                </span></h2>
            </center>
            <asp:Repeater ID="Rproduct" runat="server">
                <ItemTemplate>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-6 p-1">
                        <a href="Previewproduct.aspx?pid=<%# Eval("tblId") %>" style="text-decoration: none;" class="text-secondary">
                            <div class="card " style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;" id="amncitms">
                                <asp:Image ID="Image1" ImageUrl='<%# Utils.GetImageUrl(Eval("pimge")) %>' Style="min-height: 200px; max-height: 200px;" class="card-img-top" runat="server" />
                                <div class="card-body p-2">
                                    <div class="container-fluid pr-1 pl-1">
                                        <div class="row">
                                            <div class="p-0">
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
                                            <div class="p-0">
                                                <span class="text-dark">
                                                    <asp:Label ID="lbl" min="20" Text='<%# Eval("pname") %>' runat="server" /></span>
                                            </div>
                                            <div class="p-0">
                                                <span style="color: #4834d4; font-weight: 500;">₱ <%# Eval("pprice", "{0:N2}") %></span>
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
    <br />
    <br />







</asp:Content>

