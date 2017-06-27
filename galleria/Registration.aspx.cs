using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace galleria
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                using (DataClasses1DataContext context = new DataClasses1DataContext())
                {
                    GalleriaTable tbl = new GalleriaTable();
                    tbl.UserName = TextBox1.Text.ToString();
                    tbl.Password = TextBox2.Text.ToString();
                    tbl.Gender = Convert.ToInt16(RadioButtonList1.SelectedItem.Value.ToString());
                    tbl.batch = Convert.ToInt16(DropDownList1.SelectedItem.Value.ToString());
                    context.GalleriaTables.InsertOnSubmit(tbl);
                    context.SubmitChanges();
                    
                }
            }
        }
    }
}