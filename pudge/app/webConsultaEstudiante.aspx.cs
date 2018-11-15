using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pudge.app
{
    public partial class webConsultaEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ap = txtApellido.Text;

            SqlConnection conx = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\github\\c# unamb\\pudge\\pudge\\App_Data\\DB.mdf; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select  *from testudiante where am_estudiante like '%" + ap+"%'", conx);
            DataSet ds =new DataSet();
            da.Fill(ds, "estianteap");
            GridView1.DataSource = ds.Tables["estianteap"];
            GridView1.DataBind();


        }
    }
}