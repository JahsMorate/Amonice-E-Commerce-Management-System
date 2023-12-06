<%@ Page Title="" Language="C#" MasterPageFile="~/Userpage/Default.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Amonica.Userpage.Profile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br />
    <br />
    <asp:HiddenField ID="userID" runat="server" />

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-1 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-12">
                                    <asp:Repeater ID="RProfile" runat="server">

                                        <ItemTemplate>
                                            <center>
                                                <span style="color: #686de0;">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                                                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                                                    </svg>
                                                </span>
                                                <div>
                                                    Username
                                                </div>
                                                <div>
                                                    <span>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-badge" viewBox="0 0 16 16">
                                                            <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                                                            <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z" />
                                                        </svg>
                                                    </span><%# Eval("completename") %>
                                                </div>
                                                <div>
                                                    <span>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-at" viewBox="0 0 16 16">
                                                            <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z" />
                                                            <path d="M14.247 14.269c1.01 0 1.587-.857 1.587-2.025v-.21C15.834 10.43 14.64 9 12.52 9h-.035C10.42 9 9 10.36 9 12.432v.214C9 14.82 10.438 16 12.358 16h.044c.594 0 1.018-.074 1.237-.175v-.73c-.245.11-.673.18-1.18.18h-.044c-1.334 0-2.571-.788-2.571-2.655v-.157c0-1.657 1.058-2.724 2.64-2.724h.04c1.535 0 2.484 1.05 2.484 2.326v.118c0 .975-.324 1.39-.639 1.39-.232 0-.41-.148-.41-.42v-2.19h-.906v.569h-.03c-.084-.298-.368-.63-.954-.63-.778 0-1.259.555-1.259 1.4v.528c0 .892.49 1.434 1.26 1.434.471 0 .896-.227 1.014-.643h.043c.118.42.617.648 1.12.648Zm-2.453-1.588v-.227c0-.546.227-.791.573-.791.297 0 .572.192.572.708v.367c0 .573-.253.744-.564.744-.354 0-.581-.215-.581-.8Z" />
                                                        </svg>
                                                    </span><%# Eval("email") %>
                                                </div>
                                            </center>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="container-fluid">
                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                    <span>

                                                        <span style="display: flex; align-items: center; font-size: 1.125rem; color: #686de0; margin-bottom: 20px; text-transform: capitalize; flex: 1 1 auto;">
                                                            <i class="fa-solid fa-circle-info pr-2"></i>Order Status
                                                        </span>
                                                    </span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                        <div>
                                                            <a href="#" class="nav-link text-secondary">
                                                                <center>
                                                                    <div>
                                                                        <span>
                                                                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAD/ElEQVR4nO2W3U9bdRjH60wWY7zw0hvjH+DlbrwwKfT0nB6WrGOEUiMkAiFoMrcIo7ZMoFsCCsQylbVAIVtGEzMqCdHNGSIMQ8t56SizSCADxosyaOaA9Z0i9Gt+p87RUUbbwd2e5Juc9Pzy/eR5zvM8v8pkL2OPMNonjurMTm21VfhJ38kv69pGokR6K79c3Sn8eK7NUUDOyA4yPm8bydd3cN4vezw+m+DFrdkwhpa2JJFnG+/FVz94fIYObuWc2ZH3wkCN3f6qvp1vrb3qCvZN+DDsxZ5aDAKBzRia7J6Q3sp9azTiSMZgfTvfWn/9bnDwr3+eC3V6gc1tYC0KzAcBy8/3wgYr903G5a296toXSjQfADa2gcVQXHMBoOH7sVCleTg3LajRPnFU3855+/54vC+UKLIFPAjHoQshwP0I6Jt4DNIXaTWczuzUNlz3+FOBzvqB1WgcOu0H+IdP3zX0/O7TWRyalMFkZEj3JgP9thKDuf8+qq08DJ08HNPrWAgC4+uA45mz3fxy7LyV79sXOCSXv8YpFJo68+0NMibJwJb+OVRZnAnqGlxMepZ41LUObAoUVT4kl7+xCyhmZ7/LUVQjr1Cs8hQFg3kYt5e2kpqRLAnsZkEJbhSUSM/kt2RniQfxIp48Rfk5haKDVyrf/x/M0/STl0gVTKA3tKXpgEEk0DSegikKk6WlEBkGLpaFuaYdt6aDSc1IWZ8ttbl/Lnmpp/ywnTbCpVJJ3lNFRRI8ARyx2RC8cgUPLlzA3cIi8CdPgWv6Do47cVPSOKSBSCORhiJZEpFvThouYaEMuCF8WgGRZTGWm4s/z5xBsKkJkUuXkoN3av3yZcxWVsKlPgmxpAzjvTex8CgkjQ4ZoV0Zzvrg/NoCV+4pKbt7xcVYu3hRgu3UvuAnCnd342FzMyY//gTi8eOYqq2DY8CN4f+ydPb+CqHoI+nbjWs0WNHpEDaZdgEj6YJ3KmC1YtFgwKj2A4jaDyGoWIyeOCGVMtDYuCfshcE7tdrSIpmkAjtQMNFLcCSTUoevXTv0UodNpkSwoFLdd7FseObs2SiZ34MGr9fXY6a8HGJ8g20kXBQuhnlbZJgvRIb5eywvz7dUUxMjmyxTcMhkkmbak58fExgmJjKMeyQri9rzaoTReISjKOWdnJxfBIaJTJaVRcgCSRW8ZjRihux9kp1KFRhRKFpGjx17XZZOiHL5WwJFVYgMM+9Wq30LVVXbga6uXeBAczOWKiowplaT7LYFmnY4lMr30oIlC8hkr/AUlSWybK/IMOHJ4uIAqYJ0qxUWSrtZZNllTqn8DDJZ5n9rZc+JIbn8TYGmT4s5OTM8TUcFmu4ZzM5+51BghxH/AmlUFvMbHORhAAAAAElFTkSuQmCC">
                                                                        </span>
                                                                    </div>
                                                                    <div>
                                                                        To Pay <span style="color: #4834d4; font-weight: 600;">(<%=totaltopay %>)</span>
                                                                    </div>
                                                                </center>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                        <a href="#" class="nav-link text-secondary">
                                                            <center>
                                                                <div>
                                                                    <span>
                                                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAABsUlEQVR4nMWWv0tcQRDHn5CgaUwl5s8wpZZGi+jfcJ7GN3MaOEEQ38zz4FkkcB6XnfcsDJITn6UoqEdSWGjjjyZgY2EZUoWAYnWYIrBhL41ENN6p4we+zc4yH3aL3fG8x8RPZ8rDleA3mHcWWH4imaURTjoeXJxdCn6tHK3a4QpdvJ0qvQCWj0DyNYqiJw8qHk255ORvUpr7u2JbkM0ekOm7vG8h7LP3Ee8mkGQCWGb/FdeO3t8pC/8Vc/wKSNbUxaMcdyLJyW3Exxv5K9d5vDnRnNgBLD8mJz88Uz2xA0l2/VC69MVsEiCT0ReTQWBTVBfDTNKDJJ/VxfkoaQc239TFDmTzHYPic3UxsPmCJN3qYiSZ81lAXZwLZQhJYnXxWFB+iSw76uJsFLW5p1PtW7yMXyjXsotkhyrTd07m0/R5Psm3ercB2az7gen1tAGWWTcYqItzHPcjy7a6GHHxqRv+gEzJDQiq8hFOOoBMpT7+sthG490H46EZHC8kZy65QjzQaL1pXMO0emjTrQM7Vpg/bbTeNK7xSvXALlf3rxXfVPeaxV2fa1hPKK8brT8qfwAdtoU4bLZ0UAAAAABJRU5ErkJggg==">
                                                                    </span>
                                                                </div>
                                                                <div>
                                                                    To Ship <span style="color: #4834d4; font-weight: 600;">(<%=totaltoShip %>)</span>
                                                                </div>
                                                            </center>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                        <a href="#" class="nav-link text-secondary">
                                                            <center>
                                                                <div>
                                                                    <span>
                                                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAChklEQVR4nO2W3U9SYRzHue4f6F/ovv8gEmY2u+2um4ZLrJuyKQTCsuXCeA3YUVyKWxc43WqyOrAwEWMJaLWhWBnrbXHhTHkZL0O+7XkUO8BZHl50rfnbvnvO83vO9/n8zu/sOTsi0UkcV3Qq3GiFGgLrnm83pROwoOhUuPFsJXMgZi7ZUKsZlWTLpjgPfolLI2rp8mj/udMVYBKheA5vNnIYD6QaAse9t5FZvserVGQQLx1X8g6NdLIGbGD/bEQKmAql8XQlA5N3B4sfswjHc2Be7XWjOkf24IJc+su8T25XSsAMSM5UgN9/y+Pd1zzsviSdBzdycC6m8CFRgG8ti+lwGj9+FSm4OlcNJhB/AjV6MnEfjLLdVwGefbv3jsnTkDB6diikUCxRUOxnAelciTcnFOyNxmFXd5QY2dlTvK0mUb7ezuzi8f57N+wXU50TCvYngHGTvGRVtlkomGyk54DJvHxN2rmZ2sX3rSL861neXD3g2YAfjOZSpmVfLqHguS9J2O9IcexgfwJ0/UjAUwb+42Tj6EjAh8lWBrdCdYN1vRP4FE02JbKHEGA5KDgoFoPonwC/8EShHnZCrrLQkfVE6wIvuYeg1ZnQozLSMeQeOrzVBHpzcAQzniAWIjHMsEE6/xucCybQW3etFX4y58J5wSqdk5rml1bhcLGYD61Ss2p4UhBY+8DM69fqzHT9s6cXIyrJJgVzdU1pRiASw5iLhazfQM0L4TWar76Xq/L57FYaeP3dSgNdJ1Cboq295o+kR/1onVRIKh1zeQ4qlqstMSF/NA37r/YZL94YsKbJzaTyafY1rmus6a6+hxeEgJvyyxT6DlJhl8KYo6NAaKv8ov8yfgOxz8ddzku1xQAAAABJRU5ErkJggg==">
                                                                    </span>
                                                                </div>
                                                                <div>
                                                                    To Delivery <span style="color: #4834d4; font-weight: 600;">(<%=todelivery %>)</span>
                                                                </div>
                                                            </center>
                                                        </a>
                                                    </div>
                                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                                        <a href="#" class="nav-link text-secondary">
                                                            <center>
                                                                <div>
                                                                    <span>
                                                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAADKklEQVR4nM2WW08TQRTHywfxEt8V9VHiR9B4edPSdrs1NJHwoG23u1ID1ADPYGug3Z2lbcRAecFIwtYaQ9HEKIXElJuSbA3FB21J1wS6LWbMqfZCL3RblsST/JPtdGZ+mTNnzjkazf9unV7qkoGjnph4JkryTMLgpWQQfJsmHi3pWZsT5qhDw5q2To/tlpG3fzMHHOnhkEv2RadwcHUWz20JeQVjsxjGhgW33OV3SEbExHWs5WbLTD2izpI8vdIzOZD2r0xjQQwrkn85iLsn+9MkoqOdY9TppqB3x61XCY5OPo3w2XnxtWJoQbBmdBHljByd0nssHYqhJM9IgeVg08BKBVaCmECM1BB+x/vwDMHRKb8K0BJ8BhMcvUuw9nO1qVjTBnfqWkQ5taAFjUZQjuTppZpcvddyG4KilTutVEh8U3XnPS8G0lqv9UbVaeHJNBO99RSOv8XJ/RSO/VyriPZpbOSY+OGA4qyXzYHHaTWgqf1dDJY5kPO/y/83+xySlqXai2DISMMht6zGScHkgyx+n/hQNWco5JIJZHcWwZAGIfucJFQQw3hiaQrfm2A+FcEkx3yfWX15olBBDOdTrYlnEuWuzrz6KtScHNl+hz//iDW80zx0pz5UEMMYGMAqPSWWysxtzdfceC+3l994Nbl+LKgA4K15bPDa90uu5umdYB1Xw7Mo2Fpyo7Z7FUAFcHVsFpM8nVAcXOvJzSJ8I7VZPGn2t3Ko8C+4TL7ej2WutjmHQs8yRy1aT5XgzZ60oEHBldGzVF8JPG65CEW80cKN1JeWoYIYxl3+XsnAUecPZS+SY+JKqhLAW4H6olOYQLRYVSSgXbmvUpGoFOzZ/bxP0nqoazUrFLQr0DmoDR5Z4LIkoktBVWnQI/1tBI5fpQ41AohOGrgHp+qC84HmsXQYkf2XGiUSYobkaUk7ZrtyJLQcTiB7cmQBtdzsjUS4fLOnGFref0G7AgHXjOshemEN3GlD9x5l0K5A52D2O6RBwSVD9oHUBwkfBN8wNii4M/BO4cnovNbrGrVMy1LtBGt3Qj2FfAtVBkQiehvGdJytX+exXFANeFL2B175/59lwW+mAAAAAElFTkSuQmCC">
                                                                    </span>
                                                                </div>
                                                                <div>
                                                                    Completed <span style="color: #4834d4; font-weight: 600;">(<%= totaltoComplete %>)</span>
                                                                </div>
                                                            </center>
                                                        </a>
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

</asp:Content>

