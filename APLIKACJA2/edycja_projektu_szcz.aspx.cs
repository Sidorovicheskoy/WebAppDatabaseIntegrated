using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace APLIKACJA2
{
    public partial class edycja_projektu_szcz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            ID.Visible = false;
            DDLrodzajprojektu.Visible = false;
            DDLstatusprojektu.Visible = false;
            TBdatarozpoczecia.Visible = false;
            TBdatazakonczenia.Visible = false;
            TBkwotaprojektu.Visible=false;
            TBnrprojektu.Visible=false;
            TBtematprojektu.Visible=false;
            TBuwagi.Visible=false;
            Button1.Visible=false;
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            ID.Visible = true;
            DDLrodzajprojektu.Visible = true;
            DDLstatusprojektu.Visible = true;
            TBdatarozpoczecia.Visible = true;
            TBdatazakonczenia.Visible = true;
            TBkwotaprojektu.Visible = true;
            TBnrprojektu.Visible = true;
            TBtematprojektu.Visible = true;
            TBuwagi.Visible = true;
            Button1.Visible = true;
            ID.Text = GridView1.SelectedRow.Cells[9].Text;
            String connstr = SqlDataSource1.ConnectionString;
            String sql = "select ID_RODZAJ, ID_STATUS, NR_PROJEKT, TEMAT_PROJEKT, DATA_ROZPOCZECIA, DATA_ZAKONCZENIA, KWOTA, UWAGA from PROJEKT WHERE ID_PROJEKT =" + this.ID.Text + ";";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();

            DDLrodzajprojektu.Text = string.Format("{0}", reader[0]);
            DDLstatusprojektu.Text = string.Format("{0}", reader[1]);
            TBnrprojektu.Text = string.Format("{0}", reader[2]);
            TBtematprojektu.Text = string.Format("{0}", reader[3]);
            TBdatarozpoczecia.Text = string.Format("{0:d}", reader[4]);
            TBdatazakonczenia.Text = string.Format("{0:d}", reader[5]);
            TBkwotaprojektu.Text = string.Format("{0}", reader[6]);
            TBuwagi.Text = string.Format("{0}", reader[7]);
            conn.Close();


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Update();
            Response.Redirect("edycja_projektu_szcz.aspx");
        }
    }
}