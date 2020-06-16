using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CaCovid.CovidWS;

namespace CaCovid
{
    public partial class CaCovid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }
        /*  FUNCTION: btnCovid_Click
         *  
         *  When user clicks button to display Covid-19 results over
         *  a given range, function calls web service and binds the
         *  data table to the grid view
         */
        protected void btnCovid_Click(object sender, EventArgs e) 
        {
            var service = new CovidWS.Service1();   // web service instance used to call functions
            String sDate = startDate.Value.ToString(); // Start date from date picker
            String eDate = endDate.Value.ToString(); // End date from date picker
            DataTable dt = service.getCovidCases(sDate, eDate); // web service call given the specified range, returns data table

            gvCovid.DataSource = dt;    // bind data table to data source
            gvCovid.DataBind(); // bind the data source to the grid view
        }


    }
}