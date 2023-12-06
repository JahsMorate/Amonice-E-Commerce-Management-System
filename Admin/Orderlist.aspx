<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Orderlist.aspx.cs" Inherits="Amonica.Admin.Orderlist" %>

<%@ Import Namespace="Amonica.Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <style>
        table {
            width: 100%;
        }

        #example_filter {
            float: right;
        }

        #example_paginate {
            float: right;
        }

        label {
            display: inline-flex;
            margin-bottom: .5rem;
            margin-top: .5rem;
        }

        .dataTables_info {
            font-size: 14px;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button {
            font-size: 12px;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button {
            padding: 0;
        }

        .page-item.active .page-link {
            z-index: 3;
            color: #fff;
            background-color: #f39c12;
            border-color: #f39c12;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable({
                "lengthMenu": [[5, 10], [5, 10]],
                "pageLength": 5,
                "language": {
                    "search": "",
                    "searchPlaceholder": "Search records",
                    "info": "Displaying _START_ to _END_ of _TOTAL_ records"
                },
                "dom": '<"row"<"col-sm-12 col-md-6"l><"col-sm-12 col-md-6"f>>' +
                    '<"row"<"col-sm-12"tr>>' +
                    '<"row"<"col-sm-12 col-md-5"i><"col-sm-12 col-md-7"p>>',
                "drawCallback": function () {
                    $('.dataTables_paginate .paginate_button').addClass('btn btn-sm');
                }

            });
        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb pb-0 mb-0">
                <li class="breadcrumb-item active text-secondary"><a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                        <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                    </svg>
                    Home</a></li>

                <li class="breadcrumb-item active text-secondary" aria-current="page">Product
                </li>
            </ol>

            <div>
                <span style="font-weight: 500; font-size: 25px" class="pt-0 mt-0">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-return-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1.5 1.5A.5.5 0 0 0 1 2v4.8a2.5 2.5 0 0 0 2.5 2.5h9.793l-3.347 3.346a.5.5 0 0 0 .708.708l4.2-4.2a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8.3H3.5A1.5 1.5 0 0 1 2 6.8V2a.5.5 0 0 0-.5-.5z" />
                    </svg>
                    Order List
                </span>
            </div>
        </nav>
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 p-0">
                <div class="card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px; border: none;">
                    <div class="card-body">
                        <div class="col-lg-12 col-sm-12 col-md-12">
                            <span><b>Record</b></span>
                        </div>
                        <hr />

                        <div class="container-fluid p-0">

                            <div class="row p-2">

                                <div class="col-lg-12 col-md-1 col-sm-12 p-0">
                                    <table class="table p-0 m-0 table-responsive table-stripe table-hover table-bordered table-sm" id="example">

                                        <thead>
                                            <tr class="text-white" style="background-color: #686de0;">
                                                <th scope="col" class="text-center  pt-3 pb-3">Name</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Email</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Address</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Img</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Name</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Qty</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Total Price</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Date</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Action</th>
                                                <%-- <th scope="col" class="text-center  pt-3 pb-3">Action</th>--%>
                                            </tr>
                                        </thead>


                                        <tbody class="p-0">

                                            <asp:Repeater ID="L_ValidationRegistrations" runat="server">
                                                <ItemTemplate>
                                                    <tr class="p-0">
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label3" runat="server" CssClass="text-muted" Text='<%# Eval("completename") %>'></asp:Label>
                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label4" runat="server" CssClass="text-muted" Text='<%# Eval("email") %>'></asp:Label>
                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label5" runat="server" CssClass="text-muted" Text='<%# Eval("address") %>'></asp:Label>
                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <asp:HiddenField ID="crtID" Value='<%# Eval("CrtId") %>' runat="server" />
                                                            <asp:Image ID="Image1" ImageUrl='<%# Utils.GetImageUrl(Eval("pimge")) %>' Style="max-height: 50px; max-width: 50px; min-width: 50px;" CssClass="img-thumbnail" runat="server" />
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="lblID" CssClass="text-muted" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                                            </small>
                                                        </td>

                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label2" runat="server" CssClass="text-muted" Text='<%# Eval("cqty") %>'></asp:Label>
                                                            </small>
                                                        </td>

                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ctotalprice") %>'></asp:Label>

                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("dateapproved") %>'></asp:Label>

                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:LinkButton ID="LnkToShip" OnClick="LnkToShip_Click" CommandArgument='<%# Eval("CrtId") %>' CssClass="btn btn-sm btn-primary" runat="server" OnClientClick="return confirm('Are you do you want to Accept Order?')">Accept</asp:LinkButton>

                                                            </small>
                                                        </td>
                                                    </tr>

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


</asp:Content>
