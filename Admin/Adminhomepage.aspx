<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" Async="true" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="Amonica.Admin.Adminhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <script src="../chartJS/chart.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <div class="container-fluid">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb pb-0 mb-0">
                <li class="breadcrumb-item active text-secondary"><a href="SecretaryHomepage.aspx">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                        <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                    </svg>
                    Home</a></li>
            </ol>

            <div>
                <span style="font-weight: 500; font-size: 25px" class="pt-0 mt-0">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-return-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1.5 1.5A.5.5 0 0 0 1 2v4.8a2.5 2.5 0 0 0 2.5 2.5h9.793l-3.347 3.346a.5.5 0 0 0 .708.708l4.2-4.2a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8.3H3.5A1.5 1.5 0 0 1 2 6.8V2a.5.5 0 0 0-.5-.5z" />
                    </svg>
                    Home Page
                </span>
            </div>
        </nav>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 pb-2">
                <div class="card" style="box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px; border: none; border-radius: 14px;">
                    <div class="card-body">
                        <div class="container-fluid p-0">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-12">

                                    <div class="row">
                                        <center>
                                            <h4><span style="font-weight: bold;">Overall Summary</span></h4>
                                        </center>
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <center>
                                                <canvas id="myChart4" width="400" height="120"></canvas>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 pt-4">
                                            <div class="card" style="box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 3px 0px, rgba(0, 0, 0, 0.06) 0px 1px 2px 0px; border: none; border-radius: 14px;">
                                                <div class="card-body">
                                                    <div class=" container-fluid p-0">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12">
                                                                <div class="row">
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>
                                                                                <span>
                                                                                    <img src="data:image/png;base64,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">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>To Pay</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: rgb(255, 99, 132); font-size: 25px;">
                                                                                    <%= Topay %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>
                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAC90lEQVR4nNWYXUhUQRTHpy/IiF59kt4iyMDXop7Mp4ig2h5E14/dOast4erS3jl30VugK+nuzGyKobsW9gWtD5WJQaAkhVSQvSj7WPTSJ0GB0aLbjXET0nZBZVenP/y5w1wu93fnnDMzdwj5H2RZ1taqAcNb2xN87mrvnKCMDwETRmMwXEJ0UJWCixsLvrsd6ZpYIE3busaB8Q/A+BywSN1m8xFn7ELcl2hfSMw+sJ3xgF0VC1TUWNZOykQvZWLejfzopgJWDxpHamKBlIKrHTSSjkRzUeaOvYUin6RMjKx8pi9Y4egzj9kF9PCyF9ZeaylRIwf91q6/+wEjlcD4p1yAsyO+vHs4fOpfwFwCDO8HFLYLZXE2wLnpjrx7rK9y9YAOR2IbRfEDUJZrCagEjL+myJvIGgGf3nBlza9boRP5BaSM3wTGB9YK+PFZa9Yce/M4kO8RFAZFPqVviE1+HFB8V9OOloD1we69qpLVVUtAoiZsxr+pkdQUkBCVgyoXtQUExgdUNWsLSJE3qflQW0BAWU6R/7Qsa7uWgC6UxaqS1dqsJaCS2tV4kJ/RGFBMUBQXtQWkTFyhTAxrCwiMAzCR1BaQBqOHAflCc3OkSEvA81Z0DyD/5TZF2Yb/k6xWNBj5Wtd96UVtv/+h56pvqlD29ni7yHrkautK1neGks54IFFQx4zGdQECE5eBiVGiqzymcAITb4mucpuiTBWKNuc2K6U2CxTFe2BCEl3lMfhJykQakPe4WXifOh0juoka8jRl4l1mh5MP80TeIQH6d2RyUpwCQ/qB8bGMoy3ApCOXqSEFRTEOyO9QFq3O9ItDeQdcEhiRgx6UKX8onvKHYinVbkBZSrKIMoGAIo3hoXlva2/KY8rppU1wwQTIowrs3pMZW1m1cxWRx5Rf+PVR+/7kjH370cvF8Ko1XhvABlN+3nDABpSlmRDHFg0oUu4AP5DjY9iyEAflq4KHmPyBVKOmnAtuSW7kZynjcZWP56ze3QWHK6R+A8mEMTihCMIjAAAAAElFTkSuQmCC">
                                                                                </span>

                                                                            </div>
                                                                            <div>
                                                                                <small>To Ship</small>
                                                                            </div>
                                                                            <span style="color: rgb(75, 192, 192); font-size: 25px;">
                                                                                <%= Toship %>
                                                                            </span>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>
                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEE0lEQVR4nO2Y7U9aZxTA+bbs5eP+gX1c/4Ul+1Bgph9ml8wuWbZsCSsXdDXTVoT7Asyi1vJyL+D1XgVFWGmW8BYVrK3SRmgFXGerro1zNm3qls3u1S1p0lT0LM/jYNpiAxaRLZ7klzyXe+7hxzncXB4kkoM4iIN4drxNxYJ7QS09elJSjqilRuHDM0lQsJmyUdc2AUiybILac3fAMrZaNhRs5kAQ/vcdrKWjIZGUvyHQ8mNFQR0+Yjklf7liggqKXxUoGZQELfulh5G9XhFBgnas/5Sg4eGNjqL4NWWEL83vrIm0/EpFBD8zCQVFFmLNMCZ+ABeE958izL6LOylS0qN7Lti0g6DLcAS83Y1w3nO6IC5THfRQ8sV9ExQoGUSvJSC5AgUZGh8BgZaDaDx8qCoFJ394BH2fHwVBJxuvSsHkCkAg5AKRqVkPGI+9UpWCl5cegEi/BT20vLsqBZMrAP5+PQh0zW9VKzg8EQWRrtmoWsHotQTOrbigyMghEOzFAs8C5eyL4ET/x1iy2OdzxQUfFsntkaZ/BffiJ3+DwVceQQUZAZUxBg2msbKhZIZBpx/YldijuxHM3avcpqBF44PE6ALcuf1X2TjPx6HPeHZXgrn488fZTcG0VAqImVP6/57gwvwfEB76CrrdMUx4+Dp+7XkFb451gd9jhl7RCmG/GZavdu484midAqbqW+Ab3r/tTTJT96Gl3Q31jBP0Nh8GrTXtbphOLe9KcPXrDuB5GxAkB7ouF5x2nIOmNh7qaTtcDp0tfJMU+g6iLiE5xuqFeGoeMnNLmHh6DmiLFzQdbvh27veSBb/ot8AJvRNCF6fyNaduLoLTOwIqioP5i13FCaKxom7l5EYTM3BhciYvic5Fhq6XJPgg3Qlqyg7ecBzXmZy+BeFLKUjPfgfp2SUwcj6wOdh8fsqvhF5G/jMW7DdHcdEcBpMPGJsXF0JiKsqOyUmicwaTd9s1W+GNAXCSHdv2G15WjUd7ZfoWrqHpdOFjwR/DxwPBcfiUZnHukP29rEDJNgRKppWYW3zBJ2nS8fdoq3fjKcHEpiBtHdxobuXvFboWYdVwc1xr66xASgM52nUfJbFg5h/BM24sKG4RrKfYLM6npB60V95xM0/oWEJN27NonDnJ/IhT86CmHFlCyx4v5Q8C4qT1VYLksoOhifyII5fS+REzrG9NTXHx4ooZ+15SU9z3pNmzlpPMyenMA2sqirvf3Gx7sRRBXJfkuhsYRza45SZJ3VgEx+Aw6uY6oeXeLLqYinQcUpHcMuoWbR3EoDWS+6SV2777LzIaGx0vECQbQaNt6XQ9bnP4108YePSBHyu1nEJSaqAuoVEqSc6DQOvddE7yRBCkXUroODtBcn4lyRmO087XnrfmvsXfSlij7QVpUmkAAAAASUVORK5CYII=">
                                                                                </span>

                                                                            </div>
                                                                            <div>

                                                                                <small>To Delivery 
                                                                                </small>
                                                                            </div>
                                                                            <span style="color: rgb(255, 205, 86); font-size: 25px;">
                                                                                <%= Todelivery %>
                                                                            </span>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEKUlEQVR4nN2Y3W/TVhjGe8m4YhfjY/9VNSFNW20X1i+upqnxcZJSuFm7i3C30jY7x7RJWqRE6cS0CcJpU25QSmEUNm1ju6AksLai46qFKTaNz/S46bedxo1jJo70SlZs5/z0vn4/ntPS8j6vz+PRMwoLfSJR0icxdVRm6iSseh3FPTwTKNR5pn6MzduvaX/JjAiZEatn4lJZnRo0Iz/EKjBcd6f6y7iHZ9p17YlMSQTvNg0MnmjT1e9kXTM7x6PG4O2rIrGQEbeeTgtezDsa7iUeZgSe/SIRNfEuvKuMhU77CicxtUdh2usLqX5jZC4pcs/cobiL4Z2RQlL0pPoNhWnrClW7Ggbril8+Luskq+ikcmU2buUWvYPx/V5dnBaxfNzCfypMTZ/NfPXBkeA+Gw5/qDDtfmeiz5j8ZaphML7PJh9nRWciCm/eU8a+POHZc4BDOL5/8pPvcLxq+G8kGCA9eRJhheeaCcd3QdqepGq67oSQGak0I6y8RrjxTcpU7aij8GqvkRBBwfGqxfJxgez+lEZOuQKizqGU+JGtvIZNF2cdsxvfo8TUYfcOoWsm6lwz4Uprz8XLN6uOkKiTMiOmY3tE+0KHOEoR5h7gttbztRcH7mPvjvGoITNVOwCI3oqWFAScZVni8eqvjs8N3B6y2q9pvx9IDjT15ELmncLxYl6MP0wLmRJrT7/GWITJo1bjDwKOF/Pi5lNuT0iyHmrd/f1dRAa9azheNXtUoySyA0jJCGa4/wMcL+ZFb3bA3FNuJEomMGge9uL8ys9iaX1ZTJdmmwbHi3kRvhGrSExNeQKcX3kg3lbe2pvadcwFstQgnCMgQhzKflMzxHf/nhPljfL25v/8+0rMlO74DucW4r56kuTuEiANR8iST3B2kiT7yxLVwkcqM4Wle8LYMLdhXr5ZFaW1F77BOZYZu1BTYkEE1fMnheV5YVZ2IP2Ccy3Um60u/KeXVje3D9LyAQ72dQ6tLvzbwWGBkgikoZdhYW75vg3pF1zu2Yw4Px412ygh7uNWwdu4Nb/ywBc42HAhKRRGDFfdDFENoYTh0Y8NuZfkWOTIXkNi6reOcHY2j4VOY+yGbg0aMJYfFYqurZ3TIx+5Am56kXRCwEDIBAU38WhLNJFzNeG2E0YnGUjBIGTn1B8/CkzyEiXXW+pdENEQ0+guzRbu3cmLRruuFTwfgeA4ApDQCM0I98SjrO05wHk++tjjSaqm8X1At/qR3TcXeTUhSAVhVcYuH2tpdEHxI7sRDtTJox2/zdh1DqUE2Vp3QtS7oPhlSq6imCPsUF+JhXTNA0w0fvTWgdyQhQ4BzYs6d2gpaWRtKkBVgzSUqX3Ea3WnLpVD2UEzcuNKBYbr7SNgSuzeivbl+8lqXV7VQ63o4xh6MZnDcG3/poda24Z7TwYKFfT6DwEHQ/dD6jNHAAAAAElFTkSuQmCC">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Completed Order</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: rgb(54, 162, 235); font-size: 25px;">
                                                                                    <%= Tocomplete %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,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">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Customer</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: #c0392b; font-size: 25px;">
                                                                                    <%= touser %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEwUlEQVR4nO2Yb0wbZRzHn0V6HSS+MP5ZNDHRF3SY+IbgEvWFc2qGk0KyTAEXfcFeDF0WX27GaOYd2ZapL8hUWozRRSM1KtviXMvGsvYYA7p1vbI/9Lgea4HMvRFhjH/ZH77muRtHe9fSayFtY/gl3/DknqfH53O/546jhKzWaq3WihVu7CtBlNuOGNuOGBdGlJ1CjIOWaNOrpFALw1wtotxoArAhrJcUYiHGHlgaPCGDiHKHMLR/HSmEQoz9NAP4+G5MIsZuyy98lH0JUe5udgL0nmDv4TpbmT+BGOfLGn6xEyO4uo/JPfwwV2EacvAT4GIjcLZW/amfv/55Xe4FohxrDvodwFOdmIs79euPFMb2ib/SemiDRFwnolwgDwLsSNornVZi54LEcO4FouyM8sszhdYnpjyNZnIvsND+lRCIcVgVyKTQVlqF/l2zK9aB/l2zcNm2kFwVXLZR/FoGCLsTYBwNpXA2lKaETTov7IZyrjbbSG4FXDYDIIVz7kgtkHLeZcu5wBZF4mTV/LK3kLvqPoVHm+3NnAloIm67uHwBu5hzcE3AY/9+2QIe+3f5E3DbN69ABzbnTUCVqPZmD1/dlVd4RaDDXgaPfTyLrTMOT816UgiFjppNcNsnMoLvqNlECqmUTpx4Iz28sqZArry+lD9Iv5cDx18B/qqkN6gaOqbH6JzLlvsXt4wETIT83wXwNXkKDvIFHCQMJ5lToo4PoZU8uaLQIUkqF0T5sCDKkcvXQtNDF37BTS+LW+73ceePF5XQMT1G5+gaupZ+JiRJ5QZ4B3kXDjINJ0HSOMgUnGT5XwIExaENwXCkSxBlpMrBb/1oau5LOS+IMug56LngK9qAU5ZOnGEAn1VNJwMcLwKOrNFLzKOF1GcFLkmSVRAjjmA4cj8d/MatJ5UsJdEvXsGY/+158FakDJWhIq0JEpNoIU9kBB8QxccEUfYtBb6QL1sXBQ5+05cSfrrnhdTg+rgteokm0/D+gYFHhXAkbAaepjckaQJ0nGzNv/5tiYDBl4EbzsREPkpcc6woXkAwBQ9gjRCOuM3C03i6BjQBDz9gmJeutAP82kQ46UNgbhiY7ANudasZ/crYiR+1e+K2KQFBlN7LBJ7G9We/JuA60W+YH/PXGsHo/8dU4PzjS2+low+64CATaeF/Ax4SwrKcqYDj50uaAB3r5+90P20E+7sVmJWBwUZg6GMg9FpygdPMQgfSf6N3SZRfzxRe/xSi4/i5kCgCfLER7J9jagfGzwBTIXUsNhjXea2qQCv5zMT2iTRnI7B3f7cmsPdAt05gEPNdJUawcw8D/jJ1fH4dMHUZmOgyrjtrpdtnDC3kERMCck82Ao17vJpA4x6fiS1UDAQqAP/6xWNjHcCMlGwLzcNB3koL/6ADN7MRqG3s1ATqPug03sQX6nVga4EpAbgdBPqeBQLlwEwEGPMYBU5Z2onZCobluWwEKus9mgAdGx+jR42P0atbVWi692mmw4CwUS9wFz7mOVIIBZ75yXB1e58BBrYD1+qAniRPKt7aTAqlECAl4Jle068SPHMaAWIhhVToIcXgmR/gsy71QncPPuZwwcHHF85ZKuBjHOAZGbx1Drx1Fj6rqIB7Lc+n+uB/AZzVj8bRkSQAAAAASUVORK5CYII=">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Seller</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: #c0392b; font-size: 25px;">
                                                                                    <%= tocseller %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,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">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Corier</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: #c0392b; font-size: 25px;">
                                                                                    <%=toCouter %>
                                                                                </span>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
    <script>

        const ctxs4 = document.getElementById('myChart4');

        new Chart(ctxs4, {
            type: 'bar',
            data: {
                labels: [
                    'To Pay',
                    'To Ship',
                    'To Delivery',
                    'To Complete',
                    'Total User',
                    'Total Seller',
                    'Courier'
                ],
                datasets: [{

                    data: [<%= Topay%>, <%= Toship%>, <%= Todelivery%>, <%= Tocomplete%>, <%= touser%>, <%= tocseller%>, <%= toCouter%>],
                    backgroundColor: [
                        'rgb(255, 99, 132)',
                        'rgb(75, 192, 192)',
                        'rgb(255, 205, 86)',
                        'rgb(201, 203, 207)',
                        'rgb(54, 162, 235)',
                        '#30336b',
                        '#be2edd'
                    ]
                }]
            },
            options: {
                animations: {
                    tension: {
                        duration: 1000,
                        easing: 'linear',
                        from: 1,
                        to: 0,
                        loop: true
                    }
                }
            }
        });
    </script>







</asp:Content>
