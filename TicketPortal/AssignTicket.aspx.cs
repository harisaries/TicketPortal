using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace TicketPortal
{
    public partial class AssignTicket : System.Web.UI.Page
    { 

    SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=true;");
    StringBuilder table = new StringBuilder();
    StringBuilder tblInfo = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"].ToString() == "")
            {

                Response.Redirect("LoginPage.aspx");
            }

            else
            {
                name.Text = Session["Name"].ToString();

                //name.Text = Request.QueryString[0];
                if (Session["Name"].ToString() == "administrator")
                {
                    HeaderTable();
                    User_dataTableAdmin();
                }

                ClientScript.RegisterStartupScript(GetType(), "str", "<script language='javascript' src='JavaScript.js'></script>");

            }
        }
        protected void HeaderTable()
        {
            tblInfo.Append("<table style='font-size:11px;font-family:Century Gothic;' class=table table-dark>");
            tblInfo.Append("");
            tblInfo.Append("</tr>");
            tblInfo.Append("<tr>");
            tblInfo.Append("<td>ID</td>");
            tblInfo.Append("<td>Status</td>");
            tblInfo.Append("<td>Username</td>");
            tblInfo.Append("<td>Description</td>");
            tblInfo.Append("<td>Ext</td>");
            tblInfo.Append("<td>mail</td>");
            tblInfo.Append("<td>Asignee</td>");
            tblInfo.Append("<td>Priority</td>");
            tblInfo.Append("</tr>");
            tblInfo.Append("</table>");
            placeholder2.Controls.Add(new Literal { Text = tblInfo.ToString() });

            table.Append("<table style='font-size:11px;font-family:Century Gothic;' class='table table-dark dataTable table-hover'  id='table'>");
            table.Append("");
            table.Append("</tr>");

        }
        protected void User_dataTableAdmin()
        {
            SqlCommand cmdall = new SqlCommand("Select * from ticket_assign ", connect);
            connect.Open();
            SqlDataReader rdall = cmdall.ExecuteReader();

            while (rdall.Read())
            {

                table.Append("<tr class='even selected'>");

                table.Append("<td>" + rdall[0] + "</td>");

                table.Append("<td>" + rdall[1] + "</td>");

                table.Append("<td>" + rdall[4] + "</td>");

                table.Append("<td>" + rdall[3] + "</td>");

                table.Append("<td>" + rdall[2] + "</td>");

                table.Append("<td>" + rdall[7] + "</td>");

                table.Append("<td>" + rdall[6] + "</td>");

                table.Append("</tr>");

            }
            //}
            table.Append("</table>");


            placeholder1.Controls.Add(new Literal { Text = table.ToString() });

            connect.Close();
        }
    }
}