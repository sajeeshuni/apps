using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SalesWebApp
{
    public partial class SOPO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindSupportFilesGrid();
            bindGrid();
        }
        private void bindSupportFilesGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("fileno", typeof(string));
            ItemTable.Columns.Add("filename", typeof(string));
            ItemTable.Columns.Add("user", typeof(string));
            ItemTable.Columns.Add("date", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridViewSupportingFiles.DataSource = ItemTable;
            GridViewSupportingFiles.DataBind();
        }
        private void bindGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("slno", typeof(string));
            ItemTable.Columns.Add("itemcode", typeof(string));
            ItemTable.Columns.Add("description", typeof(string));
            ItemTable.Columns.Add("supcode", typeof(string));
            ItemTable.Columns.Add("supplier", typeof(string));
            ItemTable.Columns.Add("quantity", typeof(string));
            ItemTable.Columns.Add("costprice", typeof(string));
            ItemTable.Columns.Add("salesprice", typeof(string));
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