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
    public partial class LoginPage : System.Web.UI.Page
    {
        StringBuilder CacheTable = new StringBuilder();
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"].ToString() == Session["Name"].ToString())
            {
                Response.Redirect("HelpdeskPortal.aspx");
            }
                    datetime.Text = System.DateTime.Now.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("select * from user_management where usr_dept='IT' and usr_namelog='" + txtUsername.Text.Trim() + "' and usr_password='" + txtPassword.Text.Trim() + "'", connect);
            SqlDataReader Reader = cmd.ExecuteReader();


            if (Reader.Read())
            {
                if (txtUsername.Text == Reader.GetString(2) && txtPassword.Text == Reader.GetString(3))
                {
                    Session["Name"] = txtUsername.Text;
                    
                    Response.Redirect("HelpdeskPortal.aspx");
                }
                
            }

            else
            {
                connect.Close();
                connect.Open();
                cmd.CommandText = "select * from user_management where usr_namelog='" + txtUsername.Text + "' and usr_password='" + txtPassword.Text + "'";
                SqlDataReader readd = cmd.ExecuteReader();

                if (readd.Read())
                {
                    if (txtUsername.Text == readd.GetString(2) && txtPassword.Text == readd.GetString(3))
                    {
                        Session["Nameee"] = txtUsername.Text;
                        Response.Redirect("TicketRaise.aspx");
                    }
                }
            }
            



            lblError.Visible = true;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            connect.Open();
            SqlCommand cmd = new SqlCommand("select * from user_management where usr_dept='IT' and usr_namelog='" + txtUsername.Text.Trim() + "' and usr_password='" + txtPassword.Text.Trim() + "'", connect);
            SqlDataReader Reader = cmd.ExecuteReader();
        }
    }
}
