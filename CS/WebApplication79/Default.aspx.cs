using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;

namespace WebApplication79
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["expandAll"] = false;
        }

        protected void ASPxGridView3_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["ProductID"] = ((ASPxGridView)sender).GetMasterRowKeyValue();
        }

        protected void ASPxGridView2_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["CategoryID"] = ((ASPxGridView)sender).GetMasterRowKeyValue();
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            Session["expandAll"] = true;
            ASPxGridView1.DetailRows.ExpandAllRows();
        }

        protected void ASPxGridView2_DataBound(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["expandAll"]))
                ((ASPxGridView)sender).DetailRows.ExpandAllRows();
        }
    }
}
