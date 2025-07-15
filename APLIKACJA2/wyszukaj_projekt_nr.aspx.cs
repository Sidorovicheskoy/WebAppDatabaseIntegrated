using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APLIKACJA2
{
    public partial class wyszukaj_projekt_nr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            HyperLink1.NavigateUrl = "projetk_szczegoly_nr.aspx";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("wyszukaj_projekt_nr.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label1.Text = "Wybrano projekt nr: " + GridView1.SelectedRow.Cells[1].Text;
            HyperLink1.NavigateUrl = "projetk_szczegoly_nr.aspx?id=" + GridView1.SelectedRow.Cells[2].Text;
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}