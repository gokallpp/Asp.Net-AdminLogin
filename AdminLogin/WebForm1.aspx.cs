using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminLogin
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			string connectionString = @"Data Source=GÖKALP\SQLEXPRESS;Initial Catalog=AdminDB;Integrated Security=True";
			using (SqlConnection connection = new SqlConnection(connectionString))
			{
				try
				{
					connection.Open();
					string query = "SELECT * FROM TBLADMIN WHERE KULLANICI=@P1 AND SIFRE=@P2";
					using (SqlCommand command = new SqlCommand(query, connection))
					{
						command.Parameters.AddWithValue("@P1", TextBox1.Text);
						command.Parameters.AddWithValue("@P2", TextBox2.Text);

						SqlDataReader reader = command.ExecuteReader();

						if (reader.Read())
						{
							Response.Redirect("Veriler.aspx");
						}
						else
						{
							Response.Write("Hatalı Veri Girişi");
						}
					}
				}
				catch (Exception ex)
				{
					// Hata mesajı yazdırma veya loglama
					Response.Write("Bir hata oluştu: " + ex.Message);
				}
			}
		}
	}
}
