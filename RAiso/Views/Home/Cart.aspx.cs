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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    MsUser user = (MsUser)Session["user"];

                    int loggedUser = user.UserID;

                    List<Model.Cart> carts = CartController.GetCarts(loggedUser);

                    GVCart.DataSource = carts;
                    GVCart.DataBind();
                }
                else
                {
                    Response.Redirect("~/Views/Home/Home.aspx");
                }
            }
        }

        protected void GVCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}