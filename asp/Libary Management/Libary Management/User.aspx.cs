using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libary_Management
{
    public partial class User : System.Web.UI.Page
    {
        Dataconnection1 db = new Dataconnection1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadgird1();
            }

        }
        public void loadgird1()
        {
            string query = @"SELECT [User_ID]
      ,[User_Name]
      ,[User_Address]
      ,[User_Mobile]
  FROM [dbo].[User]";
            GridUser.DataSource = db.getData(query);
            GridUser.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[User]
           ([User_ID]
           ,[User_Name]
           ,[User_Address]
           ,[User_Mobile])
     VALUES
                                      ('" + txtUser_ID.Text + "','" + txtUser_Name.Text + "','" + txtUser_Address.Text + "','"+txtUser_Mobile.Text+"')";
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }

        }


        protected void GridUser_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridUser.PageIndex = e.NewPageIndex;
            loadgird1();

        }

        protected void GridUser_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridUser.EditIndex = -1;
            loadgird1();

        }

        protected void GridUser_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridUser.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[User]
      WHERE User_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }
            else
            {

            }

        }

        protected void GridUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
           GridUser.EditIndex = e.NewEditIndex;
            loadgird1();

        }

        protected void GridUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = (Label)GridUser.Rows[e.RowIndex].FindControl("Label1");

            TextBox txtUser_Name = (TextBox)GridUser.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox txtUser_Address = (TextBox)GridUser.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox txtUser_Mobile = (TextBox)GridUser.Rows[e.RowIndex].FindControl("TextBox4");
            string query = @"UPDATE [dbo].[User] SET [User_Name] ='"+txtUser_Name.Text+"',[User_Address] ='"+txtUser_Address.Text+"',[User_Mobile] = '"+txtUser_Mobile.Text+"' WHERE User_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                GridUser.EditIndex = -1;
                loadgird1();
            }

        }
    }
}