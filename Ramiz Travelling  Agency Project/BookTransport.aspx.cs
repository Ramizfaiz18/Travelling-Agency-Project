using System;
using System.Web.UI;

public partial class BookTransport : Page
{
    protected void Page_Load(object sender, EventArgs e) { }

    protected void btnBook_Click(object sender, EventArgs e)
    {
        string type = ddlVehicleType.SelectedValue;
        string pickup = txtPickup.Text;
        string destination = txtDestination.Text;
        string date = txtDate.Text;
        string time = txtTime.Text;
        string passengers = ddlPassengers.SelectedValue;

        lblMessage.Text = string.Format("{0} booking confirmed from {1} to {2} on {3} at {4} for {5} passenger(s).",
    type, pickup, destination, date, time, passengers);

    }
}
