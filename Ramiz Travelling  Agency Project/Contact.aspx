<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('images/burst-kUqqaRjJuw0-unsplash.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 40px;
        }

        .contact-container {
            background-color: rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            padding: 50px 40px;
            max-width: 700px;
            width: 100%;
            margin: auto;
            color: #000; /* Darker text */
            font-size: 20px; /* Larger text */
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        .contact-container h2 {
            text-align: center;
            color: #002244;
            margin-bottom: 35px;
            font-size: 32px;
        }

        .contact-info {
            line-height: 2;
            margin-bottom: 25px;
        }

        .contact-info strong {
            color: #000;
            font-size: 21px;
        }

        .contact-info a {
            color: #003366;
            font-weight: bold;
            font-size: 20px;
            text-decoration: none;
        }

        .contact-info a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contact-container">
            <h2>Contact Us</h2>

            <div class="contact-info">
                <p><strong>Address:</strong> University Road, Aurangabad, India</p>
                <p><strong>Phone:</strong> +91 7410757468, +91 9403607300</p>
                <p><strong>Email:</strong> <a href="mailto:ramizfaiz1445@gmail.com">ramizfaiz1445@gmail.com</a></p>
                <p><strong>Customer Service:</strong> Available 9:00 AM – 6:00 PM (Mon–Fri)</p>
            </div>

            <div class="contact-info">
                <p><strong>Follow us:</strong></p>
                <p>
                    <a href="https://www.facebook.com" target="_blank">Facebook</a> |
                    <a href="https://www.twitter.com" target="_blank">Twitter</a> |
                    <a href="https://www.instagram.com" target="_blank">Instagram</a>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
