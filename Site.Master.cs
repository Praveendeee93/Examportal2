using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Text;


namespace Examportal2
{
    public partial class SiteMaster : MasterPage
    {
        DataTable Table = new DataTable();
        public void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               Onlyread();
            }
            else if(Page.IsPostBack)
            {                
                Onlyread();
            }
            gridService.DataSource = null;

            gridService.DataBind();
            gridService.DataSource = Table;
            gridService.DataBind();
           
        }
        public void Onlyread()
        {
            string constr = @"Data Source=DESKTOP-UTP1O95\SQLEXPRESS; Initial Catalog=Examportal2;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            DataTable dt1 = new DataTable();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd1 = new SqlCommand("Select * from Internal"))

                {
                    using (SqlDataAdapter sda1 = new SqlDataAdapter())
                    {
                        cmd1.Connection = con;
                        sda1.SelectCommand = cmd1;
                        sda1.Fill(dt1);
                        Table = dt1; 
                    }
                }
            }
        }       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Batch"] = DropDownList1.SelectedValue.ToString();
            Session["Degree"] = TextBox1.Text;
            Session["Branch"] = TextBox2.Text;
            Session["Sem"] = DropDownList2.SelectedValue.ToString();
            Session["Type"] = TextBox3.Text;
            Session["Subject"] = TextBox4.Text;
            Session["Criteria"] = DropDownList3.SelectedValue.ToString();

           
            int intId = 100;
            string strPopup = "<script language='javascript' ID='script1'>"

            + "window.open('Popupwindow.aspx?data=" + HttpUtility.UrlEncode(intId.ToString())

            + "','new window', 'top=0, left=200, width=900, height=500, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=n, toolbar=no, status=no, center=yes')"

            + "</script>";

            ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);
            
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            gridService.DataBind();
        }
    }
}