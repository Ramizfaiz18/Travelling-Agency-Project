using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SearchFlights : System.Web.UI.Page
{
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string from = txtFrom.Text.Trim();
        string to = txtTo.Text.Trim();
        string date = txtDate.Text.Trim();

        string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "SELECT * FROM Flights WHERE FromCity = @From AND ToCity = @To AND DepartureDate = @Date";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@From", from);
            cmd.Parameters.AddWithValue("@To", to);
            cmd.Parameters.AddWithValue("@Date", date);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvFlights.DataSource = dt;
            gvFlights.DataBind();
        }
    }

    protected void gvFlights_SelectedIndexChanged(object sender, EventArgs e)
    {
        int flightId = Convert.ToInt32(gvFlights.SelectedDataKey.Value);
        Response.Redirect("BookFlight.aspx?flightId=" + flightId);
    }
}
