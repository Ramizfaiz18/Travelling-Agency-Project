<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Registration - NAAZ TRAVELLING AGENCY</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/top-view-travel-essentials-with-copy-space.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .main-wrapper {
            width: 100%;
            margin-top: 20px;
        }

    .brand-title {
            color: white;
            font-size: 32px;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
            margin-top: 400px;
            margin-bottom: 20px;
            text-align: center;
        }



        .form-container {
            background-color: rgba(255, 255, 255, 0.20); /* semi-transparent */
            border-radius: 20px;
            padding: 40px 35px;
            max-width: 450px;
            width: 100%;
            margin: auto;
        }

        h2 {
            color: #333;
            margin-bottom: 30px;
            font-size: 26px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 22px;
            text-align: left;
        }

        .form-group label {
            font-weight: 800;
            font-size: large;
            color: black;
            margin-bottom: 6px;
            display: block;
        }

        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="email"],
        .form-group input[type="tel"] {
            width: 100%;
            padding: 11px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s;
        }

        .form-group input:focus {
            border-color: #2575fc;
            box-shadow: 0 0 4px rgba(37, 117, 252, 0.4);
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 14px;
            background: #2575fc;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #1b5dd1;
        }

        #lblMessage {
            display: block;
            text-align: center;
            margin-top: 18px;
            font-weight: bold;
        }

        .button-wrapper {
            text-align: center;
        }

        .button-wrapper .btn {
            width: 400px;
            margin-top: 20px;
            font-weight: 300;
            font-size: large;
        }

        .footer {
            background-color: #3074e8;
            text-align: center;
            font-size:larger;
            padding: 20px;
            margin-top: 40px;
        }

        @@media (max-width: 500px) {
    .form-container {
        padding: 30px 20px; 
        width: 80vw;   
        box-sizing: border-box; 
        border-radius:8px;
    }

    .brand-title {
        font-size: 22px;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-wrapper">
            <div class="brand-title">NAAZ TRAVELLING AGENCY PVT LTD.</div>

            <div class="form-container">
                <h1>Register</h1>

                <div class="form-group">
                    <label for="txtName">Full Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtPhone">Phone</label>
                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-control" />
                </div>

                <div class="button-wrapper">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />
                </div>

                <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />

                <div class="button-wrapper">
                    <asp:Button ID="btnLoginRedirect" runat="server" Text="Login" CssClass="btn" OnClick="btnLoginRedirect_Click" />

                </div>
            </div>

            <!-- Footer -->
            <div class="footer">
                <p>Make your journey smoother, cheaper, and memorable with us. Explore flights, hotels, and car rentals now.</p>
                <p>© 2025 Travel Booking Inc. All rights reserved.</p>
            </div>
        </div>
    </form>
</body>
</html>
