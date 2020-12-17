using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SalesWebApp
{
    public partial class VPU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
        }

        private void bindGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("slno", typeof(string));
            ItemTable.Columns.Add("itemcode", typeof(string));
            ItemTable.Columns.Add("description", typeof(string));
            ItemTable.Columns.Add("quantity", typeof(string));
            ItemTable.Columns.Add("unit_code", typeof(string));
            ItemTable.Columns.Add("unit", typeof(string));
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