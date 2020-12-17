using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SalesWebApp.BAL;

namespace SalesWebApp
{
    public partial class VPR : System.Web.UI.Page
    {
        ClassBL BL;
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
            bindSupGrid();
            bindSelectedLineGrid();
            bindSelectedSupplierGrid();
        }

        private void CustomerList()
        {
            DataTable dt;
            BL = new ClassBL();
            string sqlStr = "SELECT PL01001, PL01002 FROM PL010100 WHERE PL01002 LIKE 'us%'";
            dt = BL.GetData(sqlStr);

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

        private void bindSupGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("supCode", typeof(string));
            ItemTable.Columns.Add("supplier", typeof(string));
            ItemTable.Columns.Add("category", typeof(string));
            ItemTable.Columns.Add("currency", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridView_Supplier.DataSource = ItemTable;
            GridView_Supplier.DataBind();
        }
        private void bindSelectedLineGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("slno", typeof(string));
            ItemTable.Columns.Add("itemcode", typeof(string));
            ItemTable.Columns.Add("description", typeof(string));
            ItemTable.Columns.Add("quantity", typeof(string));
            ItemTable.Columns.Add("unit_code", typeof(string));
            ItemTable.Columns.Add("unit", typeof(string));
            ItemTable.Columns.Add("supCode", typeof(string));
            ItemTable.Columns.Add("supplier", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridView_LineWithSupplier.DataSource = ItemTable;
            GridView_LineWithSupplier.DataBind();
        }

        private void bindSelectedSupplierGrid()
        {
            DataTable ItemTable = new DataTable();
            ItemTable.Columns.Add("slno", typeof(string));
            ItemTable.Columns.Add("description", typeof(string));
            ItemTable.Columns.Add("quantity", typeof(string));
            ItemTable.Columns.Add("unit", typeof(string));
            DataRow dr;
            for (int i = 0; i < 5; i++)
            {
                dr = ItemTable.NewRow();
                dr[0] = i + 1;
                ItemTable.Rows.Add(dr);
            }
            GridView_SupplierItems.DataSource = ItemTable;
            GridView_SupplierItems.DataBind();
        }
    }
}