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
    public partial class EstudianteXsexo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = txtBuscar.Text;
            String consu1 = "SELECT        testudiante.nombre_estudiante AS [Nombre Estudiante], testudiante.ap_estudiante AS [Apellido Paterno], testudiante.am_estudiante AS [Apellido Materno], tcarrera.nombre_carrera, " +
                "                         testudiante.sexo_estudiante " +
                "FROM    tcarrera INNER JOIN   testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                "WHERE testudiante.nombre_estudiante LIKE ('%" +nombre+ "%') AND(testudiante.sexo_estudiante = 'm')";
            String consu2 = "SELECT        testudiante.nombre_estudiante AS [Nombre Estudiante], testudiante.ap_estudiante AS [Apellido Paterno], testudiante.am_estudiante AS [Apellido Materno], tcarrera.nombre_carrera, " +
                "                         testudiante.sexo_estudiante " +
                "FROM    tcarrera INNER JOIN   testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                "WHERE(testudiante.nombre_estudiante LIKE '%" + nombre + "%') AND(testudiante.sexo_estudiante = 'f')";

            SqlConnection conx = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\github\\c# unamb\\pudge\\pudge\\App_Data\\DB.mdf; Integrated Security=True");

            switch (rbSexo.SelectedValue)
            {
                case "Masculino":
                    SqlDataAdapter da = new SqlDataAdapter(consu1, conx);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "estianteap");
                    tTable.DataSource = ds.Tables["estianteap"];
                    tTable.DataBind();
                    break;
                case "Femenino":
                    SqlDataAdapter da1 = new SqlDataAdapter(consu2, conx);
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1, "estianteap");
                    tTable.DataSource = ds1.Tables["estianteap"];
                    tTable.DataBind();
                    break;

                default:
                    SqlDataAdapter da11 = new SqlDataAdapter("select 'no esta registrada' ", conx);
                    DataSet ds11 = new DataSet();
                    da11.Fill(ds11, "estianteap");
                    tTable.DataSource = ds11.Tables["estianteap"];
                    tTable.DataBind();
                    break;
            }
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {

        }
    }
}