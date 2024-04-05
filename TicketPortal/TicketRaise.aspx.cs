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
    public partial class TicketRaise : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data source=(localdb)\MSSQLLocalDB; Initial catalog=Ticket_db; Integrated security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["Nameee"].ToString();
            if (Session["Nameee"].ToString()== "")
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO ticket_raise VALUES('" + txtusername.Text + "','" + txtemail.Text + "','" + txtExt.Text + "','" + txtDescp.Text + "','','" + deptdroplist.SelectedItem.Text + "','" + txtPriority.SelectedItem.Text +"','','','','"+ System.DateTime.Now +"','')", connect);
            cmd.ExecuteNonQuery();
            connect.Close();

            Response.Redirect("TicketShow.aspx?username=" + txtusername.Text + "&email="+txtemail.Text+"&Ext="+ txtExt.Text +"&Descp="+ txtDescp.Text+ "&Request="+ txtTicket.SelectedItem.Text +"&Dept="+deptdroplist.SelectedItem.Text+"&priority="+txtPriority.Text);
            Session["ID"] = txtTicketId.Text;
            Session["Name"] = txtusername.Text;
            Session["Email"] = txtemail.Text;
            Session["Ext"] = txtExt.Text;
            Session["Desc"] = txtDescp.Text;
            Session["Request"] = txtTicket.Text;
            Session["Department"] = deptdroplist.SelectedItem.Text;
            Session["Priority"] = txtPriority.Text;

        }

        protected void deptdroplist_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void checkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HelpdeskPortal.aspx");
        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session["Nameee"] = "";
            Response.Redirect("LoginPage.aspx");
        }
    }
}