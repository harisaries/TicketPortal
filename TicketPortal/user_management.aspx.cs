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
    public partial class user_management : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblsignin.Text = Request.QueryString[0];
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO user_management VALUES('" + usr_id.Text + "','"+txtname.Text+"','" + usr_name.Text + "','"+usr_password.Text+"','" + usr_dept.Text + "','" + usr_fullrights.Text + "','" + usr_medrights.Text + "','" + usr_norights.Text + "')", connect);
            cmd.ExecuteNonQuery();

            //Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "<script>$(document).ready(function () {$('myAlert').show();$('myAlert').html('Success Fully');});});");
            connect.Close();
        }


    }
}