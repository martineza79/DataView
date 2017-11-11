using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataViews
{
    public partial class DataViewLists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gv_sqldatasource_PreRender(object sender, EventArgs e)
        {
            if (gv_sqldatasource.HeaderRow != null)
                gv_sqldatasource.HeaderRow.TableSection = TableRowSection.TableHeader; 
        }
    }
}