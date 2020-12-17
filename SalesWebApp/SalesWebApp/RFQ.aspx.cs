using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using SalesWebApp.BAL;


namespace SalesWebApp
{
  
    public partial class RFQ : System.Web.UI.Page
    {
        ClassBL BL;
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtRFQDate.Value = DateTime.Now.ToString("yyyy-MM-ddTHH:mm");

            bindGrid();
            CustomerList();
        }




        private void CustomerList()
        {
            DataTable dt;
            BL = new ClassBL();
            string sqlStr = "SELECT SL01001, SL01002 FROM SL010100 WHERE SL01002 LIKE 'us%'";
            dt = BL.GetData(sqlStr);
            
        }

        private void CustomerContactList(string Code)
        {
            DataTable dt;
            BL = new ClassBL();
            string sqlStr = "SELECT SL02001, SL02002 FROM SL020100 WHERE SL01001='" + Code + "'";
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

        [WebMethod]
        public static string[] GetCompletionListRFQ(string prefixText, int count)
        {
            List<string> suggestions = new List<string>(5);
            string sqlstr = "SELECT PS01001 FROM PS010100 WHERE PS01001 LIKE 'prefixText%'";
            ClassBL BL = new ClassBL();
            DataTable dt = BL.GetData(sqlstr);
            if (dt.Rows.Count < 1) return null;

            foreach (DataRow dr in dt.Rows)
                suggestions.Add(dr[0].ToString());
            return suggestions.ToArray();
        }
    }
}