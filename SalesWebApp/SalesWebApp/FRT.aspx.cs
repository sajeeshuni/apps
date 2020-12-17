using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SalesWebApp
{
    public partial class FRT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
        }
        private void bindGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("supcode", typeof(string));
            ItemTable.Columns.Add("suplier", typeof(string));
            ItemTable.Columns.Add("sourcecode", typeof(string));
            ItemTable.Columns.Add("source", typeof(string));
            ItemTable.Columns.Add("destinationcode", typeof(string));
            ItemTable.Columns.Add("destination", typeof(string));
            ItemTable.Columns.Add("freight", typeof(string));
            ItemTable.Columns.Add("domestic", typeof(string));
            ItemTable.Columns.Add("total_usd", typeof(string));
            ItemTable.Columns.Add("total_cust_cur", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridViewLineItems.DataSource = ItemTable;
            GridViewLineItems.DataBind();
        }
    }
}