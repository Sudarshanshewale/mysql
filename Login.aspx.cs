using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source= GAYATRI\SQLEXPRESS;AttachDbFilename=|DataDirectory|\ISMDb.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("select * from Login where username=@username and password=@password", con);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@tuser", DropDownList1.SelectedItem.Value);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();

        con.Close();

        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Login Successfully')</script>");
            Response.Redirect("Admin.aspx");
        }
        else
        {
            Label1.Text = "Your username and password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Firebrick;
        }
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    
}