<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/Seller.Master" AutoEventWireup="true" CodeBehind="Sellerpanel.aspx.cs" Inherits="Amonica.Seller.Sellerpanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <script src="../chartJS/chart.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <asp:HiddenField ID="SellerID" runat="server" />

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
                                                                                    <%= ToPay %>
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
                                                                                <%= ToShip %>
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
                                                                                <%= ToDelivery %>
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
                                                                                    <%= ToComplete %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEoUlEQVR4nOXY7U9TVxwH8LotW/a8bP/H3uyN8U3jPedee2slkVjUqqApBg0gwwc0IMFHsKkt2R+wd3vI/AP2lmVZ7r0tRRlPMsfcJM452eimFQKIv+V72lvv7eNtV+iS3eSEtveG8+nv4ZwDLtf/7fra43lNk6SPdca+0Bm7UcnQJClibN/+0YbhEpy/a3AeNxRlbSYQWL996BA5HdOBwPOEz7eiMfZcY6xzQ3A6Y6NxVV1NXr5My8PDlY9olH4+fpx0xtZ0SfqwpjiN8wRwf125Uh3Ogkzs3LmCdNcMZ3CeSFSIW7x0ieZaW8XAa+s9pFuXpK9qg5PlsUojB5DO+brB+ZQuy9MG5+tWJGoSTfOvcCNu93ulcH9fvUo/BoO0FInk3UPUAKOBgZcwDFmewWc1AzrBjfl8mIQWzp/fXKDAcX4z7vWWxMVVlSb27CmaYqQVsMx4lqxFisviBgdpbNcuunP4MDqRHvX1OWoSK65qYLYhykRutqWF5k+coMmmprxnnoRCBWsyd1QMROR0WS6b1tsHD1IqHBbR+6O/P3s/FQrRT21tFFMUMXlNgVlckYZ4PDSUxS1FozTf1UXT+/alYeGw2BniHg+Ner2oO/rtzJnaAQWOsVul1rmlSESkFLinkQglfD5a6O+nX9rbRaNgsnsdHRTfscMRzjHQCW45ZwAKCKKFSVD8QCG1TnGOgNXgloeH6c6RIzQLWOaw8ODUKVtaEeXFixdFTVYN1BTlfV2WJxJe7yqKv9QvSoVCYrnAxLn3RORkWSDx/vfeXhHZUVUVqf8183mhgaOaLkmfF8YxNukEd7etTUQHu8X47t2iIcx7C319tsg9PHtWpPl+d7d4j6ygcQpFEtGPKQqOW102XIyxDwzOHUUO3x6A+93d9OfAgKg7c3Kzccwt7sm1awJjq8FoVERz8cIFOy4NX9U5j0/5/a++iNzWra87xYkUHDiQXc9S4XAe0PZlTp7MW7TxGVJtXbRNnDiRezzv2FMrST0xRXGEM5vhVkMDPTh9mib9fhGNYoWPyOEZ872Z7ofnztlxqgpcLA+HS5ekT6f27l1z2q2PBwfFQcDgXEyeu5diS7OmG89i8Z4JBNLrYU+PreZM3Hfbtr1duHMZa8YBstTmXhQ7NCSigR0DAHPHeHr9ug2JSKIM8HwejjGjKA4XuVxb8GeiwfmzUkhEDpi7x47R9P79AoMu1jmnmw0Noi7nOzpEgxRaenK7NRO50jjzuuH3v6xz/lkhJJaNXMxsczPNd3YKjHWJcTIELt0QxdNaCRJpycXg5732dpoLBguemoviXnSrs8hVEklzoGNxMI2rKo03Noqawxa24TinyLmjRwUwlelWnGAQ4U3BOUGiQX5oaRGvcTBFbT7q7S2PK9ettUIiWkjrhN8vDgRiVynSteYirDOm1xRXDontaq61VewmdcOVQy6Xq7nNwFWDTGYWYeBG3O63NhxXCTJZL5wTZNLEca7VBWdFGox9aUVioY57PGu6LH87Lstv1g1nRerp/0Ovf9/YuAKswdg3CZ/vDdd/5SKXa4vGeZMmSZ9okhQccbtfqbdp069/AHryEJf3u1yOAAAAAElFTkSuQmCC">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Total Product</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: #c0392b; font-size: 25px;">
                                                                                    <%=ToProduct %>
                                                                                </span>
                                                                            </div>
                                                                        </center>
                                                                    </div>
                                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                                        <center>
                                                                            <div>

                                                                                <span>
                                                                                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAACuklEQVR4nO2XPWgUURCAV/EvCoIgChZiIYIKNjYWioIo2NjogfFuZoNosDBqLjezJwlZK2OhRdBE7maWaDQgOWySLqAoaCRREAULQcFC8AdBBbWIwZMXcuE8d4Pe7oUVbmBgee/tvG93/t6zrLr8h4J53gxKCT+14iDJ6y3LQekhKhcr1YqLpPrbltme8+DotfaJwvOhoowNxAvQCMipjbY6X49dbZ+8cCcfL0DwnO2o9A6Untme83ROXZwYbG0ApUu2OLv85lH4BChPoHC/WWvc3eQ5o3MCeERpDSiNo/AXFP6JSpcNgJlr6W5ZjMKegbOFT5a/Z9aA0L2awtmS3QrCb1D4bmMuvdJWSqLQRxB6ZWvmAAqPgvDbZJ52BGV3zeAwzwdB6RsKaWLQXVQaPyRnVqPSLeM+UHoMOWdt5JubL0PhK74xVbTmgVAnKv0Aj08HfoBm9hoXRw6HktmCSi/8Yiox2NqAyjdB6TN6vC/MPqaL/HPhTmmmCYW/o9LQ4d7sisqYAqVxUH6Z9No2hYErBzQF22jXSE8woN3nLgGlbhSeBKGzruvO948pvp/qbVsVFq4ccOT17SkN7Cwpya4H5Scg9MFW2h1kMCW8pznXvDAKuL8GRKX9IPwJhR/Zfc66qDYPDbjTdReA8HmTBKCcKy8T1Qgop0Gp8LtyumpAyGc3oPJ7zFNjGLCSGKDjNzqLHcMXp9Q8mzErjIubc+5SKyIBpYIBK21mnkMDRikwC6BfrSudpqsC/DOWqGDneVsYwK6Rnpl6FxrQLEoXzs3EU8lgGEAZG5iZiwTQz2DsAWGW3glxAhSf3hk5oAn6yvtpKRGqMQhRA5qXfVK/ECvAjggNQh1wuP4Hi/UYhHqSDNTLTDHSQh10RA86bpUMdkyPmzXlhTpKe7NecoIOrNP9u1CptbAXa/kFw7YNUEbbrfoAAAAASUVORK5CYII=">
                                                                                </span>
                                                                            </div>
                                                                            <div>
                                                                                <small>Net Sales</small>
                                                                            </div>
                                                                            <div>
                                                                                <span style="color: #c0392b; font-size: 25px;">
                                                                                    <%=NetSales %>
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
                    'Product',
                    'To Pay',
                    'To Ship',
                    'To Delivery',
                    'To Complete'
                   

                ],
                datasets: [{

                    data: [<%= ToProduct%>, <%= ToPay%>, <%= ToShip%>, <%= ToDelivery%>, <%= ToComplete%> ],
                    backgroundColor: [
                        'rgb(255, 99, 132)',
                        'rgb(75, 192, 192)',
                        'rgb(255, 205, 86)',
                        'rgb(201, 203, 207)',
                        'rgb(54, 162, 235)'
                        
                       
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
