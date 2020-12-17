using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SalesWebApp
{
    public partial class QA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
            bindSuplierGrid();
        }
        private void bindGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("slno", typeof(string));
            ItemTable.Columns.Add("itemcode", typeof(string));
            ItemTable.Columns.Add("description", typeof(string));
            ItemTable.Columns.Add("offereddescription", typeof(string));
            ItemTable.Columns.Add("quantity", typeof(string));
            ItemTable.Columns.Add("unit_code", typeof(string));
            ItemTable.Columns.Add("unit", typeof(string));
            ItemTable.Columns.Add("unitcost", typeof(string));
            ItemTable.Columns.Add("linecost", typeof(string));
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
        private void bindSuplierGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("suppliercode", typeof(string));
            ItemTable.Columns.Add("supplier", typeof(string));
            ItemTable.Columns.Add("domestic", typeof(string));
            ItemTable.Columns.Add("amountTotal", typeof(string));
            ItemTable.Columns.Add("total", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridViewSupplierDetails.DataSource = ItemTable;
            GridViewSupplierDetails.DataBind();
        }
    }
}