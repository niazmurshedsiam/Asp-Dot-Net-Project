using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libary_Management
{
    public partial class Return_Book : System.Web.UI.Page
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
      ,[User_ID]
      ,[User_Name]
      ,[Book_taken_date]
      ,[Book_return_date]
      ,[Submitting_the_book_right_time]
      ,[Submitting_the_book_wrong_time]
  FROM [dbo].[Return_Book]";
            GridReturn_Book.DataSource = db.getData(query);
            GridReturn_Book.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Return_Book]
           ([Book_ID]
           ,[Book_Name]
           ,[Book_Writer_Name]
           ,[Book_Edition]
           ,[User_ID]
           ,[User_Name]
           ,[Book_taken_date]
           ,[Book_return_date]
           ,[Submitting_the_book_right_time]
           ,[Submitting_the_book_wrong_time])
     VALUES
                                      ('" + txtBook_ID.Text + "','" + txtBook_Name.Text + "','" + txtBook_Writer_Name.Text + "','" + txtBook_Edition.Text + "','"+txtUser_ID.Text+"','"+txtUser_Name.Text+"','"+txtBook_taken_date.Text+"','"+txtBook_return_date.Text+"','"+txtSubmitting_the_book_right.Text+"','"+txtSubmitting_the_book_wrong_time.Text+"')";
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }

        }

        protected void GridReturn_Book_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridReturn_Book.PageIndex = e.NewPageIndex;
            loadgird1();

        }

        protected void GridReturn_Book_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridReturn_Book.EditIndex = -1;
            loadgird1();

        }

        protected void GridReturn_Book_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridReturn_Book.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[Return_Book]
      WHERE  Book_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }
            else
            {

            }

        }

        protected void GridReturn_Book_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridReturn_Book.EditIndex = e.NewEditIndex;
            loadgird1();

        }

        protected void GridReturn_Book_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = (Label)GridReturn_Book.Rows[e.RowIndex].FindControl("Label1");

            
            TextBox txtBook_Name = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox txtBook_Writer_Name = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox txtBook_Edition = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox txtUser_ID = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox5");
            TextBox txtUser_Name = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox6");
            TextBox txtBook_taken_date = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox7");
            TextBox txtBook_return_date = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox8");
            TextBox txtSubmitting_the_book_right_time = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox9");
            TextBox txtSubmitting_the_book_wrong_time = (TextBox)GridReturn_Book.Rows[e.RowIndex].FindControl("TextBox10");
            string query = @"UPDATE [dbo].[Return_Book] SET [Book_Name] = '"+txtBook_Name.Text+"',[Book_Writer_Name] ='"+txtBook_Writer_Name.Text+"',[Book_Edition] ='"+txtBook_Edition.Text+"',[User_ID] = '"+txtUser_ID.Text+"',[User_Name] = '"+txtUser_Name.Text+"',[Book_taken_date] ='"+txtBook_taken_date.Text+"',[Book_return_date] = '"+txtBook_return_date.Text+"',[Submitting_the_book_right_time] = '"+txtSubmitting_the_book_right_time.Text+"',[Submitting_the_book_wrong_time]='"+txtSubmitting_the_book_wrong_time.Text+"'WHERE  Book_ID=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                GridReturn_Book.EditIndex = -1;
                loadgird1();
            }

        }
    }
}