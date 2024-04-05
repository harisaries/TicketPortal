using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace TicketPortal
{
    public partial class LoginTest : System.Web.UI.Page
    {
        StringBuilder CacheTable = new StringBuilder();
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            cachename.Text = Session["cache"].ToString();
            if (Session["cache"].ToString() == "") {
                
            }
            else {
                usrname.Visible = false;
                username.Visible = false;
                CacheTabl(); }
        }
        protected void CacheTabl()
        {
            CacheTable.Append("<table>");
            CacheTable.Append("");
            CacheTable.Append("</tr>");
            CacheTable.Append("<tr>");
            CacheTable.Append("<td style='background-image:url(usercache.png); border:1px; width: 80px; height: 80px; '></td>");
            CacheTable.Append("<td style='font-size:16px;font-family:Century Gothic;font-bold:true'>"+cachename.Text+"</td>");
            CacheTable.Append("</tr>");
            CacheTable.Append("</table>");
            usershow.Controls.Add(new Literal { Text = CacheTable.ToString() });

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("select * from user_management where usr_dept='IT' and usr_namelog='" + Session["cache"].ToString() + "' and usr_password='" + password.Text.Trim() + "'", connect);
            SqlDataReader readerr = cmd.ExecuteReader();

            if (readerr.Read())
            {
                if(Session["cache"].ToString() == readerr.GetString(2) && password.Text == readerr.GetString(3))
                {
                    Session["Name"] = Session["cache"].ToString();

                    Response.Redirect("HelpdeskPortal.aspx");
                }

            }
            lblError.Visible = true;
            connect.Close();
        }
    }
}