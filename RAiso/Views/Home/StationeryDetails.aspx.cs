using RAiso.Controllers;
using RAiso.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RAiso.Views.Home
{
    public partial class StationeryDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];

                MsStationery stationery = StationeryController.FindById(int.Parse(id));

                StationeryName.Text = stationery.StationeryName;
                StationeryPrice.Text = stationery.StationeryPrice.ToString();              
            }
        }

        protected void BtnAddtoCart_Click(object sender, EventArgs e)
        {

        }
    }
}