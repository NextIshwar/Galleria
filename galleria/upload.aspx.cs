using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace galleria
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
                if(fileUpload.HasFile)
                {
                    if(fileUpload.PostedFile.ContentType=="image/jpeg")
                    {
                        Stream stream = fileUpload.PostedFile.InputStream;
                        BinaryReader binary = new BinaryReader(stream);
                       byte[] bytes= binary.ReadBytes((int)stream.Length);
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GalleriaDatabaseConnectionString"].ConnectionString);
                        SqlCommand cmd = new SqlCommand("tblUpload", con);
                            cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        SqlParameter param = new SqlParameter()
                        {
                            ParameterName = "@ImageData",
                            Value = bytes
                        };
                    cmd.Parameters.Add(param);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                        lit.Text = @"<figure class='effect - oscar  wowload fadeInUp'>
                          <img src='images / portfolio / 1.jpg' alt='img01'/>
<h2>hii this is working</h2>
<figcaption>
            <h2>Cappuchino</h2>
            <p>Lily likes to play with crayons and pencils<br>
            <a href='images / portfolio / 1.jpg' title='1' data-gallery>View more</a></p>            
            </ figcaption >
    
        </ figure > ";
                    }
                    }
                
            }
        }
    }