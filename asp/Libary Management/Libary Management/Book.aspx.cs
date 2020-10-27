using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libary_Management
{
    public partial class Book : System.Web.UI.Page
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
            string query = @"SELECT [Book_ID]
      ,[Book_Name]
      ,[Book_Writer_Name]
      ,[Book_Edition]
  FROM [dbo].[Book]";
            GridBook.DataSource = db.getData(query);
            GridBook.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Book]
           ([Book_ID]
           ,[Book_Name]
           ,[Book_Writer_Name]
           ,[Book_Edition])
     VALUES
                                      ('" + txtBook_ID.Text + "','" + txtBook_Name.Text+ "','"+txtBook_Writer_Name.Text+"','"+txtBook_Edition.Text+"')";
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }

        }

        protected void GridBook_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridBook.PageIndex = e.NewPageIndex;
            loadgird1();

        }

        protected void GridBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridBook.EditIndex = -1;
            loadgird1();

        }

        protected void GridBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridBook.Rows[e.RowIndex].FindControl("Label2");
            string query = @"DELETE FROM [dbo].[Book]
      WHERE  Book_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }
            else
            {

            }

        }

        protected void GridBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
           GridBook.EditIndex = e.NewEditIndex;
            loadgird1();
        }

        protected void GridBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = (Label)GridBook.Rows[e.RowIndex].FindControl("Label1");

            TextBox txtBook_Name = (TextBox)GridBook.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox txtBook_Writer_Name = (TextBox)GridBook.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox txtBook_Edition = (TextBox)GridBook.Rows[e.RowIndex].FindControl("TextBox4");

            string query = @"UPDATE [dbo].[Book] SET [Book_Name]='" + txtBook_Name.Text+"','"+txtBook_Writer_Name.Text+"','"+txtBook_Edition.Text+"' WHERE Book_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                GridBook.EditIndex = -1;
                loadgird1();
            }
        }
    }
}