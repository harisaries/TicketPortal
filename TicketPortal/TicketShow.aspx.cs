using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TicketPortal
{
    public partial class TicketShow : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            //lblTicketId.Text = Session["ID"].ToString();
            lbluser.Text = Request.QueryString[0];
            lblemail.Text = Request.QueryString[1];
            lblExt.Text = Request.QueryString[2];
            lbldecp.Text = Request.QueryString[3];
            lblrequestto.Text = Request.QueryString[4];
            lbldept.Text = Request.QueryString[5];
            lblpriority.Text = Request.QueryString[6];
        }
    }
}