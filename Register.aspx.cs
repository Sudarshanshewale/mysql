using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source= GAYATRI\SQLEXPRESS;AttachDbFilename=|DataDirectory|\AirlineDb.mdf;Integrated security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Registration" + "(name,email, mobileNo, password, courses)values(@name,@email,@mobileno,@password, @courses)", con);
        cmd.Parameters.AddWithValue("@name",TextBox6.Text);
        cmd.Parameters.AddWithValue("@email",TextBox2.Text);
        cmd.Parameters.AddWithValue("@mobileNo",TextBox3.Text);
        cmd.Parameters.AddWithValue("@password",TextBox4.Text);
        cmd.Parameters.AddWithValue("@courses", DropDownList1.SelectedItem.Value);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Registered Successfully";
        Label1.ForeColor = System.Drawing.Color.Firebrick;
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e) 
    {
        Page.Response.Redirect(Page.Request.Url.ToString(), true);

     }
}
