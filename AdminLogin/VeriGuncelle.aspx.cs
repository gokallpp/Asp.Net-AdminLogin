using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminLogin
{
	public partial class VeriGuncelle : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
			DataSet1TableAdapters.TBLADMINTableAdapter dt = new DataSet1TableAdapters.TBLADMINTableAdapter();
			TextBox1.Text = x.ToString();
			TextBox1.Enabled = false;

			if (Page.IsPostBack == false)
			{
				TextBox2.Text = dt.VeriGetir(Convert.ToInt32(TextBox1.Text))[0].KULLANICI;
				TextBox3.Text = dt.VeriGetir(Convert.ToInt32(TextBox1.Text))[0].SIFRE;
				TextBox4.Text = dt.VeriGetir(Convert.ToInt32(TextBox1.Text))[0].SIFRE;
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			DataSet1TableAdapters.TBLADMINTableAdapter dt = new DataSet1TableAdapters.TBLADMINTableAdapter();
			dt.AdminGuncelle(TextBox2.Text, TextBox3.Text, Convert.ToInt32(TextBox1.Text));
			Response.Redirect("Veriler.Aspx");
		}
	}
}