<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Login - NAAZ TRAVELLING AGENCY</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/full-shot-travel-concept-with-landmarks.jpg') no-repeat center center fixed;
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
        }

        .brand-title {
            color: white;
            font-size: 32px;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
            margin-top: 50px;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.2);
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
        .form-group input[type="email"] {
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

        @media (max-width: 500px) {
            .form-container {
                padding: 30px 20px;
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
                <h2>Login</h2>

                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
            </div>
        </div>
    </form>
</body>
</html>
