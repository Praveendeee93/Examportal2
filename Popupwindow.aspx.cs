using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Text;

namespace Examportal2
{
    public partial class Popupwindow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Criteria"].ToString();
            TextBox4.Text = Session["Subject"].ToString();
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-UTP1O95\SQLEXPRESS;Initial Catalog=Examportal2;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Internal] values('" + Session["Degree"].ToString() + "','" + Session["Branch"].ToString() + "','" + Session["Batch"].ToString() + "','" + Session["Sem"].ToString() + "','" + Session["Type"].ToString() + "','" + Session["Criteria"].ToString() + "','" + Session["Subject"].ToString() + "','" + "A" + "',  '" + CheckBox4.Checked+"','" +CheckBox2.Checked+"', '" + TextBox3.Text + "', '" +TextBox4.Text+"','" + TextBox5.Text+ "', '" + TextBox6.Text+ "', '" +TextBox8.Text+"','" + TextBox7.Text+ "', '" +CheckBox1.Checked+ "', '" +CheckBox5.Checked+"','" + TextBox11.Text+ "', '" +TextBox1.Text+ "', '" +TextBox2.Text+"','" + CheckBox3.Checked+ "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string strPopup = "<script language='javascript' ID='script1'>" + "window.close()"+ "</script>"; 
            ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);
           
            SiteMaster site =(SiteMaster)Page.LoadControl("Site.Master");
            site.Page.LoadTemplate("Site.Master");
            site.Page_Load(this, null);


        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-UTP1O95\SQLEXPRESS;Initial Catalog=Examportal2;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@" DELETE FROM[dbo].[Internal]
            WHERE [SUBJECT_CODE]='" + TextBox3.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string strPopup = "<script language='javascript' ID='script1'>" + "window.close()" + "</script>";
            ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);

            SiteMaster site = (SiteMaster)Page.LoadControl("Site.Master");
            site.Page.LoadTemplate("Site.Master");
            site.Page_Load(this, null);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           string strPopup = "<script language='javascript' ID='script1'>" + "window.close()" + "</script>";
           ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);

        }
    }
}


