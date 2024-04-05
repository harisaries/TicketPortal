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

    public partial class HelpdeskPortal : System.Web.UI.Page
    {
       
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=true;");
        StringBuilder table = new StringBuilder();
        StringBuilder tblInfo = new StringBuilder();
        //StringBuilder tblassign = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Name"].ToString() == "")
            {

                Response.Redirect("LoginTest.aspx");
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
            else
            {
                HeaderTable();
                user_dataTable();                
            }
                
                ClientScript.RegisterStartupScript(GetType(), "str", "<script language='javascript' src='JavaScript.js'></script>");

            }
        }
        protected void drpuser_DropDownList(Object sender , EventArgs e)
        {
            SqlCommand usr = new SqlCommand("select usr_namelog from user_management where usr_dept='IT'", connect);
            connect.Open();
            drpuser.DataSource = usr.ExecuteReader();
            drpuser.DataTextField = "usr_namelog";
            drpuser.DataValueField = "usr_namelog";
            drpuser.DataBind();
            connect.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("update ticket_assign set ticket_comment='" + TxtComment.Text + "' where ticket_id='" + txtID.Text + "' ", connect);
            SqlDataAdapter sda = new SqlDataAdapter();
            
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptComment.DataSource = dt;
            rptComment.DataBind();

            connect.Close();
        }



        protected void drpuser_SelectedIndexChanged(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("insert into ticket_assign (ticket_id , ticket_user , ticket_email , ticket_ext , ticket_desp , ticket_priority , ticket_comment , ticket_assign, ticket_update, assign_date, assign_by) select ticket_id,ticket_user,ticket_email,ticket_ext,ticket_desp,ticket_priority,ticket_comment,'" + drpuser.SelectedItem.Text + "',ticket_update,'" + System.DateTime.Now + "',assign_by  from ticket_raise where ticket_id='" + txtID.Text + "' delete from ticket_raise where ticket_id='"+txtID.Text+"' ", connect);

            cmd.ExecuteNonQuery();

            connect.Close();
            txtID.Text = "";

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            //connect.Open();

            if(TreeView1.SelectedNode.Text == "Assign Ticket")
            {
                Response.Redirect("AssignTicket.aspx");
            }
        }
        protected void HeaderTable()
        {
            tblInfo.Append("<table style='font-size:11px;font-family:Century Gothic;' class=table table-dark>");
            tblInfo.Append("");
            tblInfo.Append("</tr>");
            tblInfo.Append("<tr>");
            tblInfo.Append("<td>No.</td>");
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
            SqlCommand cmdall = new SqlCommand("Select * from ticket_raise ", connect);
            connect.Open();
            SqlDataReader rdall = cmdall.ExecuteReader();
            
            while (rdall.Read())
            {
                
                table.Append("<tr class='box'>");

                table.Append("<td>" + rdall[0] + "</td>");

                table.Append("<td>" + rdall[1] + "</td>");

                table.Append("<td>" + rdall[4] + "</td>");

                table.Append("<td>" + rdall[3] + "</td>");

                table.Append("<td>" + rdall[2] + "</td>");

                table.Append("<td>" + rdall[6] + "</td>");

                table.Append("<td>" + rdall[7] + "</td>");

                table.Append("</tr>");
                
            }
            //}
            table.Append("</table>");


            placeholder1.Controls.Add(new Literal { Text = table.ToString() });

            connect.Close();
        }
        protected void user_dataTable()
        {
            SqlCommand cmd = new SqlCommand("Select * from ticket_assign where ticket_assign='" + Session["Name"].ToString() + "'", connect);
            connect.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {

                table.Append("<tr class='box'>");

                table.Append("<td width='30'>" + rd[0] + "</td>");

                //table.Append("<td align='center' style='text - align:center; font - size:150 %; font - weight:bold; color: green;'>&#10004</td>");

                table.Append("<td>" + rd[9] + "</td>");

                table.Append("<td width='150'>" + rd[1] + "</td>");

                table.Append("<td width='300'>" + rd[4] + "</td>");

                table.Append("<td width='10'>" + rd[3] + "</td>");

                table.Append("<td width='150'>" + rd[2] + "</td>");

                table.Append("<td>" + rd[7] + "</td>");

                table.Append("<td>" + rd[6] + "</td>");

                table.Append("</tr>");

            }
            //}
            table.Append("</table>");

            placeholder1.Controls.Add(new Literal { Text = table.ToString() });

            connect.Close();
        }
        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["cache"] = name.Text;
            Response.Redirect("LoginTest.aspx");
            

        }
        protected void ImageOnclick_click(object sender, EventArgs e)
        {
            Response.Redirect("HelpdeskPortal.aspx");
        }
    }
}