using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();

        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM Users WHERE LOWER(Email) = LOWER(@Email) AND LOWER(PasswordHash) = LOWER(@Password)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // Plain text

                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                conn.Close();

                if (count == 1)
                {
                    Session["UserEmail"] = email;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Show input values for debug only when login fails
                    lblMessage.Text = "Invalid email or password. You entered: " + email + " / " + password;

                }
            }
        }
        catch (SqlException ex)
        {
            lblMessage.Text = "Database error: " + ex.Message;
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Unexpected error: " + ex.Message;
        }
    }
}
