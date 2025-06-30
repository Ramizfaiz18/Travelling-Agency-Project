<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTransport.aspx.cs" Inherits="BookTransport" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Car or Bus</title>
    <style>
        .search-form {
            background-color: rgba(255, 255, 255, 0.60);
            border-radius: 20px;
            padding: 40px 35px;
            max-width: 450px;
            width: 100%;
            margin: auto;
            color: #111; /* darker default text */
            font-size: 18px; /* base font size increased */
        }

        .search-form h2 {
            color: #003049; /* darker blue */
            text-align: center;
            margin-bottom: 30px;
            font-size: 26px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 700;
            color: #111;
            font-size: 18px;
        }

        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="time"],
        .form-group select {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            border: 1px solid #999;
            border-radius: 6px;
            background-color: transparent;
            color: #111;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="date"]:focus,
        .form-group input[type="time"]:focus,
        .form-group select:focus {
            border-color: #005f73;
            box-shadow: 0 0 6px rgba(0, 95, 115, 0.6);
            outline: none;
        }

        .search-button {
            display: block;
            width: 100%;
            background-color: #0077b6;
            color: white;
            padding: 14px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-button:hover {
            background-color: #00b4d8;
        }

        #lblMessage {
            display: block;
            text-align: center;
            margin-top: 18px;
            font-weight: bold;
            font-size: 18px;
            color: green;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/21253461_2107.i518.015.S.m005.c12.public%20transport%20illustration.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="search-form">
            <h1>Book Your Transport</h1>

            <div class="form-group">
                <asp:Label Text="Vehicle Type:" runat="server" AssociatedControlID="ddlVehicleType" />
                <asp:DropDownList ID="ddlVehicleType" runat="server" />
            </div>

            <div class="form-group">
                <asp:Label Text="Pickup Location:" runat="server" AssociatedControlID="txtPickup" />
                <asp:TextBox ID="txtPickup" runat="server" />
            </div>

            <div class="form-group">
                <asp:Label Text="Destination:" runat="server" AssociatedControlID="txtDestination" />
                <asp:TextBox ID="txtDestination" runat="server" />
            </div>

            <div class="form-group">
                <asp:Label Text="Date:" runat="server" AssociatedControlID="txtDate" />
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" />
            </div>

            <div class="form-group">
                <asp:Label Text="Pickup Time:" runat="server" AssociatedControlID="txtTime" />
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" />
            </div>

            <div class="form-group">
                <asp:Label Text="Passengers:" runat="server" AssociatedControlID="ddlPassengers" />
                <asp:DropDownList ID="ddlPassengers" runat="server">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5+" Value="5" />
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnBook" runat="server" Text="Book Transport" CssClass="search-button" OnClick="btnBook_Click" />
            <asp:Label ID="lblMessage" runat="server" />
        </div>
    </form>
</body>
</html>
