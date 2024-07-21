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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStationeryData();
                if (Session["user"] != null)
                {
                    var user = (MsUser)Session["user"];

                    ShowAdminButton(user);
                }
                else
                {
                    BtnInsert.Visible = false;
                    GVStationery.Columns[3].Visible = false;
                }
            }
        }

        private void ShowAdminButton(MsUser user)
        {
            if(user.UserRole == "Admin")
            {
                BtnInsert.Visible = true;
                GVStationery.Columns[3].Visible = true;
                GVStationery.Columns[4].Visible = false;
            }
            else
            {
                BtnInsert.Visible = false;
                GVStationery.Columns[3].Visible = false;
                GVStationery.Columns[4].Visible = true;
            }
        }

        protected void BindStationeryData()
        {
            GVStationery.DataSource = StationeryController.GetAllStationery();
            GVStationery.DataBind();
        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/Home/InsertStationery.aspx");
        }

        protected void GVStationery_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = GVStationery.Rows[e.NewEditIndex];
            string id = row.Cells[0].Text.ToString();
            Response.Redirect("~/Views/Home/UpdateStationery.aspx?Id=" + id);
        }

        protected void GVStationery_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GVStationery_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GVStationery.SelectedRow;
            string id = row.Cells[0].Text.ToString();
            Response.Redirect("~/Views/Home/StationeryDetails.aspx?Id=" + id);
        }
    }
}