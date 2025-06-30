<%@ Page Title="Search Flights" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="SearchFlights" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .search-form {
            background-color: #f1f9ff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            max-width: 700px;
            margin: auto;
        }

        .search-form h2 {
            color: #0077b6;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="date"] {
            width: 100%;
            padding: 10px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .search-button {
            display: block;
            width: 100%;
            background-color: #0077b6;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-button:hover {
            background-color: #00b4d8;
        }

        .flight-results {
            margin-top: 40px;
        }

        .flight-results .aspNetGridView {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .aspNetGridView th, .aspNetGridView td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .aspNetGridView th {
            background-color: #0077b6;
            color: white;
        }

        .aspNetGridView tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .aspNetGridView .aspNetGridViewSelectButton {
            background-color: #023e8a;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .aspNetGridView .aspNetGridViewSelectButton:hover {
            background-color: #00b4d8;
        }
    </style>

    <div class="search-form">
        <h2>Search Flights</h2>

        <div class="form-group">
            <asp:Label Text="From:" runat="server" AssociatedControlID="txtFrom" />
            <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <asp:Label Text="To:" runat="server" AssociatedControlID="txtTo" />
            <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <asp:Label Text="Departure Date:" runat="server" AssociatedControlID="txtDate" />
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" />
        </div>

        <asp:Button ID="btnSearch" runat="server" Text="Search Flights" CssClass="search-button" OnClick="btnSearch_Click" />
    </div>

    <div class="flight-results">
        <asp:GridView ID="gvFlights" runat="server" AutoGenerateColumns="False" DataKeyNames="FlightID" OnSelectedIndexChanged="gvFlights_SelectedIndexChanged" CssClass="aspNetGridView">
            <Columns>
                <asp:BoundField DataField="Airline" HeaderText="Airline" />
                <asp:BoundField DataField="FromCity" HeaderText="From" />
                <asp:BoundField DataField="ToCity" HeaderText="To" />
                <asp:BoundField DataField="DepartureDate" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Price" HeaderText="Price ($)" />
                <asp:CommandField ShowSelectButton="True" SelectText="Book" ButtonType="Button" ControlStyle-CssClass="aspNetGridViewSelectButton" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
