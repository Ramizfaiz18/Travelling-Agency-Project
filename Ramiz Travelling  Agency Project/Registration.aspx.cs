using System;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim(); // plain text
        string phone = txtPhone.Text.Trim();

        string connStr = "Data Source=A2NWPLSK14SQL-v01.shr.prod.iad2.secureserver.net;Initial Catalog=WinfoInternDB7;User ID=WinfoIntern;Password=aitaurangabad@2025";

        try
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Users (FullName, Email, PasswordHash, PhoneNumber) VALUES (@Name, @Email, @Password, @Phone)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // goes into PasswordHash column
                cmd.Parameters.AddWithValue("@Phone", phone);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            lblMessage.Text = "Registration successful!";
            Response.Redirect("Login.aspx");
        }
        catch (SqlException ex)
        {
            lblMessage.Text = "Registration failed: " + ex.Message;
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Unexpected error: " + ex.Message;
        }
    }

    protected void btnLoginRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
