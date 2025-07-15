using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace APLIKACJA2
{
    public partial class projekt_szczegoly_temat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Label1.Text = "nie wybrano projektu ktorego szczegoly maja byc wyswietlone ! (kliknij link ponizej aby wybrac projekt)";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}