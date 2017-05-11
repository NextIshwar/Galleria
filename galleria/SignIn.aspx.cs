using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace galleria
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string str = "Data Source=ISHWAR;Initial Catalog=GalleriaDatabase;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";

            SqlConnection con = new SqlConnection(str);
            try
            {
                DataSet ds = new DataSet();
                string pass = String.Format("Select Password from GalleriaTable where UserName='{0}'", txtUserName.Text);
                SqlDataAdapter da = new SqlDataAdapter(pass, con);
                da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                da.Fill(ds, "GalleriaTable");
                string s1 = (ds.Tables["GalleriaTable"].Rows[0]["Password"].ToString()).Trim();
                string s2 = (txtPassword.Text).Trim();
                int n = string.Compare(s1, s2);
                if (n == 0)
                {
                    Session["uname"] = txtPassword.Text.Trim();
                    Server.Transfer("Home.aspx");
                }
                else
                {
                    lblError.Text = "<P style='color:red; font-style:helvetica'>Error:  " + "Invalid User idor Password" + "</p>";
                }

            }
            catch
            {
                lblError.Text = "<p style='color:red'    > Error: " + "Invalid user id or Password" + "</p>";
            }
        }
    }
}