﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;

namespace OTeaching.Student
{
    public partial class DownloadCourseMaterial : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-BDBIBK1;Initial Catalog=LoginDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand cmd = sqlCon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            string classcourseid = Session["ClassCourseID"].ToString();
            cmd.CommandText = "Select c.ClassCourseID,c.FileName,c.FileLocation from CourseMaterial c where ClassCourseID='" + classcourseid + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            sqlCon.Close();
        }

        /* Button btn = sender as Button;
         GridViewRow gvrow = btn.NamingContainer as GridViewRow;
         string filePath = "Instructor\\" + GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
         Response.ContentType = "application/pdf";
         Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
         Response.TransmitFile(Server.MapPath(filePath));
         Response.End();*/
        protected void lnkdownload_OnClick(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)((sender as Control)).NamingContainer).RowIndex;
            string filelocation = "Instructor/" + GridView1.Rows[rowindex].Cells[2].Text;
            string filepath = Server.MapPath("~/"+filelocation);
            WebClient user = new WebClient();
            Byte[] FileBuffer = user.DownloadData(filepath);
            if(FileBuffer !=null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
    }
}