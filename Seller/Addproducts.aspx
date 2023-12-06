<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Seller.Master" AutoEventWireup="true" Async="true" CodeBehind="Addproducts.aspx.cs" Inherits="Amonica.Seller.Addproducts" %>
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

    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

        function readURL2(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview2').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

        function readURL3(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview3').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="container-fluid">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb pb-0 mb-0">
                <li class="breadcrumb-item active text-secondary"><a href="Dash01.aspx">
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
                    Add Product Form
                </span>
            </div>
        </nav>
        <div class="row">


            <div class="col-lg-4 col-md-4 registration-form">

                <div class="card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px; border: none;">
                    <div class="card-body p-3">
                        <div class="col-lg-12 col-sm-12 col-md-12">
                            <span><b>Add Product</b></span>
                        </div>
                        <hr />
                        <div class="container-fluid ">
                            <div class="row p-0">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <center>
                                        <img id="imgview3" style="max-height: 200px; max-width: 200px; min-height: 200px; min-width: 200px;" src="../Amonica/Icon/no-picture-taking.png" /><br />
                                        <asp:FileUpload onchange="readURL3(this);" ID="FileUpload3" runat="server" />
                                        <div>
                                            <small>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Image is Required" ForeColor="Red" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>
                                            </small>
                                        </div>
                                    </center>
                                </div>

                            </div>
                            <div class="row p-0">

                                <div class="col-lg-6 col-md-12 col-sm-12 pb-0">
                                    <asp:HiddenField ID="hndValID" runat="server" />
                                    <asp:HiddenField ID="SellerID" runat="server" />
                                    <span>Name<span style="color: red;"><b>*</b></span></span>
                                    <div class="input-group">

                                        <span class="input-group-text" id="basic-addon2" style="background-color: white;">#</span>
                                        <asp:TextBox ID="txtBrandname" class="form-control" placeholder="Brandname" aria-label="Username" aria-describedby="basic-addon2" runat="server"></asp:TextBox>
                                    </div>

                                    <small>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is Required" ForeColor="Red" ControlToValidate="txtBrandname"></asp:RequiredFieldValidator>
                                    </small>

                                </div>

                                <div class="col-lg-6 col-md-12 col-sm-12 pb-0">
                                    <span>Price <span style="color: red;"><b>*</b></span></span>
                                    <div class="input-group">
                                        <span class="input-group-text text-secondary" id="basic-addon12" style="background-color: white;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tag" viewBox="0 0 16 16">
                                                <path d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z" />
                                                <path d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z" />
                                            </svg>
                                        </span>
                                        <asp:TextBox ID="txtPrice" min="1" TextMode="Number" class="form-control" placeholder="Price" aria-label="Username" aria-describedby="basic-addon2" runat="server"></asp:TextBox>

                                    </div>

                                    <small>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Complete name is required" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                                    </small>

                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 pb-0">
                                    <span>Category <span style="color: red;"><b>*</b></span></span>
                                    <asp:DropDownList ID="ddlCategory" CssClass="form-select" runat="server">
                                        <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                        <asp:ListItem Text="Mens Appeal" Value="Mens Appeal"></asp:ListItem>
                                        <asp:ListItem Text="Womens Appeal" Value="Womens Appeal"></asp:ListItem>
                                        <asp:ListItem Text="Womens Bag" Value="Womens Bag"></asp:ListItem>
                                        <asp:ListItem Text="Womens Accessories" Value="Womens Accessories"></asp:ListItem>
                                        <asp:ListItem Text="Gloceries" Value="Gloceries"></asp:ListItem>
                                        <asp:ListItem Text="Baby & Kids" Value="Baby & Kids"></asp:ListItem>
                                        <asp:ListItem Text="Home & Living" Value="Home & Living"></asp:ListItem>
                                        <asp:ListItem Text="Home & Entertainment" Value="Home & Entertainment"></asp:ListItem>
                                        <asp:ListItem Text="Mobile & Gadget" Value="Mobile & Gadget"></asp:ListItem>
                                        <asp:ListItem Text="Mobile Accesories" Value="Mobile Accesories"></asp:ListItem>
                                        <asp:ListItem Text="Toy & Kids" Value="Toy & Kids"></asp:ListItem>
                                        <asp:ListItem Text="Mens Shoes" Value="Mens Shoes"></asp:ListItem>
                                        <asp:ListItem Text="Makeup" Value="Makeup"></asp:ListItem>
                                        <asp:ListItem Text="Laptop & Computer" Value="Laptop & Computer"></asp:ListItem>
                                    </asp:DropDownList>
                                    <small>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="--Select--" runat="server" ErrorMessage="This is Required" ForeColor="Red" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                                    </small>

                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 pb-0">
                                <span>Description <span style="color: red;"><b>*</b></span></span>
                                <div class="input-group">
                                    <span class="input-group-text text-secondary" id="basic-addon1" style="background-color: white;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
                                            <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                                            <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z" />
                                        </svg>
                                    </span>
                                    <asp:TextBox ID="txxDecription" TextMode="MultiLine" class="form-control" placeholder="Description" aria-label="Username" aria-describedby="basic-addon2" runat="server"></asp:TextBox>

                                </div>

                                <small>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Complete name is required" ForeColor="Red" ControlToValidate="txxDecription"></asp:RequiredFieldValidator>
                                </small>

                            </div>
                            <div class="bx-pull-right mt-2 mb-4">

                                <asp:LinkButton ID="LnkAdd" OnClick="LnkAdd_Click" Style="background-color: #686de0; color: white;" Visible="true" CssClass="btn" runat="server">
                                    <i class='bx bxs-save'></i>
                                    Save
                                </asp:LinkButton>

                                <asp:LinkButton ID="LnkUpdate" Visible="false" CssClass="btn btn-primary" runat="server" OnClientClick="return confirm('Are you sure do you want to Update?')">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                      <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                      <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                    </svg>
                                    Update
                                </asp:LinkButton>
                            </div>
                            <div class="bx-pull-right mt-2">
                                <asp:LinkButton ID="LnkCancel" CausesValidation="false" Visible="false" CssClass="btn text-secondary" Style="background-color: #f0f2f5;" runat="server" OnClientClick="return confirm('Are you sure do want to Cancel?')">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
                                         <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                         <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                    </svg>
                                 Cancel</asp:LinkButton>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-lg-8 col-md-8 col-sm-12 p-0">
                <div class="card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px; border: none;">
                    <div class="card-body">
                        <div class="col-lg-12 col-sm-12 col-md-12">
                            <span><b>Product Record</b></span>
                        </div>
                        <hr />

                        <div class="container-fluid p-0">

                            <div class="row p-0">

                                <div class="col-lg-12 col-md-1 col-sm-12 p-0">
                                    <table class="table p-0 m-0 table-responsive table-stripe table-hover table-bordered table-sm" id="example">

                                        <thead>
                                            <tr class="text-white" style="background-color: #686de0;">
                                                <th scope="col" class="text-center  pt-3 pb-3">Img</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Name</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Decription</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Category</th>
                                                <th scope="col" class="text-center  pt-3 pb-3">Price</th>
                                                <%-- <th scope="col" class="text-center  pt-3 pb-3">Action</th>--%>
                                            </tr>
                                        </thead>


                                        <tbody class="p-0">

                                            <asp:Repeater ID="L_ValidationRegistrations" runat="server">
                                                <ItemTemplate>
                                                    <tr class="p-0">
                                                        <td class="text-center text-secondary">
                                                            <asp:HiddenField ID="HiddenField1" Value='<%# Eval("tblId") %>' runat="server" />
                                                            <asp:Image ID="Image1" ImageUrl='<%# Utils.GetImageUrl(Eval("pimge")) %>' Style="max-height: 50px; max-width: 50px; min-width: 50px;" CssClass="img-thumbnail" runat="server" />
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="lblID" CssClass="text-muted" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="lblDepartment" runat="server" CssClass="text-muted" Text='<%# Eval("pdescription") %>'></asp:Label>
                                                            </small>
                                                        </td>
                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label2" runat="server" CssClass="text-muted" Text='<%# Eval("pcategory") %>'></asp:Label>
                                                            </small>
                                                        </td>

                                                        <td class="text-center text-secondary">
                                                            <small>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>

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


    <br />


</asp:Content>
