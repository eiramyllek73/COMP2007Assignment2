using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007Assignment2.Models;

namespace COMP2007Assignment2.Planners
{
    public partial class Default : System.Web.UI.Page
    {
		protected COMP2007Assignment2.Models.SGConnection _db = new COMP2007Assignment2.Models.SGConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Planner entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007Assignment2.Models.Planner> GetData()
        {
            return _db.Planners;
        }
    }
}

