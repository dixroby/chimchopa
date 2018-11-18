using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pudge
{
    public partial class tareaCosulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = txtBuscar.Text;
            String carrera = CmbOpcion.SelectedValue;

            SqlConnection conx = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\github\\c# unamb\\pudge\\pudge\\App_Data\\DB.mdf; Integrated Security=True");
            switch (rdOpcion.SelectedValue)
            {
                case "Nombre":
                    SqlDataAdapter da = new SqlDataAdapter("SELECT testudiante.nombre_estudiante,  testudiante.codigo_estudiante,  testudiante.ap_estudiante," +
                        " testudiante.am_estudiante, testudiante.sexo_estudiante, tcarrera.nombre_carrera " +
                        "               FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                        "WHERE          (testudiante.nombre_estudiante LIKE '%"+nombre+"%') AND (tcarrera.nombre_carrera = '"+carrera+"')",conx);
                    System.Data.DataSet ds = new DataSet();
                    da.Fill(ds, "estianteap");
                    tTabla.DataSource = ds.Tables["estianteap"];
                    tTabla.DataBind();
                    break;
                case "Apellido Paterno":
                    SqlDataAdapter da1 = new SqlDataAdapter("SELECT    testudiante.ap_estudiante AS [Apellido Paterno]," +
                        " testudiante.am_estudiante AS [Apellido Materno], testudiante.nombre_estudiante,testudiante.codigo_estudiante, testudiante.sexo_estudiante, tcarrera.nombre_carrera " +
                        "               FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                        "WHERE          (testudiante.ap_estudiante LIKE '%" + nombre + "%') AND (tcarrera.nombre_carrera = '" + carrera + "')", conx);

                    System.Data.DataSet ds1 = new DataSet();
                    da1.Fill(ds1, "estianteap");
                    tTabla.DataSource = ds1.Tables["estianteap"];
                    tTabla.DataBind();
                    break;

                case "Apellido Materno":
                    SqlDataAdapter da2 = new SqlDataAdapter("SELECT     testudiante.am_estudiante," +
                        " testudiante.ap_estudiante,testudiante.nombre_estudiante,testudiante.codigo_estudiante, testudiante.sexo_estudiante, tcarrera.nombre_carrera " +
                        "               FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                        "WHERE          (testudiante.am_estudiante LIKE '%" + nombre + "%') AND (tcarrera.nombre_carrera = '" + carrera + "')", conx);

                    System.Data.DataSet ds2 = new DataSet();
                    da2.Fill(ds2, "estianteap");
                    tTabla.DataSource = ds2.Tables["estianteap"];
                    tTabla.DataBind();
                    break;

                case "Codigo":
                    SqlDataAdapter da3 = new SqlDataAdapter("SELECT   testudiante.codigo_estudiante, testudiante.nombre_estudiante, testudiante.ap_estudiante," +
                        " testudiante.am_estudiante, testudiante.sexo_estudiante, tcarrera.nombre_carrera " +
                        "               FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera " +
                        "WHERE          (testudiante.codigo_estudiante LIKE '%" + nombre + "%') AND (tcarrera.nombre_carrera = '" + carrera + "')", conx);

                    System.Data.DataSet ds3 = new DataSet();
                    da3.Fill(ds3, "estianteap");
                    tTabla.DataSource = ds3.Tables["estianteap"];
                    tTabla.DataBind();
                    break;

                default:
                    SqlDataAdapter da34 = new SqlDataAdapter("SELECT   'no esta registrada en la base de datos'", conx);

                    System.Data.DataSet ds34 = new DataSet();
                    da34.Fill(ds34, "estianteap");
                    tTabla.DataSource = ds34.Tables["estianteap"];
                    tTabla.DataBind();
                    break;

                    break;
            }
        }
    }
}