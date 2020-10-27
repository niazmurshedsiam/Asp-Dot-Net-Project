using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libary_Management
{
    public partial class Taking_Book : System.Web.UI.Page
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
     
  FROM [dbo].[Taking_Book]";
           GridTaking_Book.DataSource = db.getData(query);
            GridTaking_Book.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Taking_Book]
           ([Book_ID]
           ,[Book_Name]
           ,[Book_Writer_Name]
           ,[Book_Edition]
           ,[User_ID]
           ,[User_Name]
           ,[Book_taken_date]
           ,[Book_return_date]
          )
     VALUES
                                      ('" + txtBook_ID.Text + "','" + txtBook_Name.Text + "','" + txtBook_Writer_Name.Text + "','" + txtBook_Edition.Text + "','" + txtUser_ID.Text + "','" + txtUser_Name.Text + "','" + txtBook_taken_date.Text + "','" + txtBook_return_date.Text + "')";
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }

        }

        protected void GridTaking_Book_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridTaking_Book.PageIndex = e.NewPageIndex;
            loadgird1();

        }

        protected void GridTaking_Book_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
           GridTaking_Book.EditIndex = -1;
            loadgird1();


        }

        protected void GridTaking_Book_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridTaking_Book.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[Taking_Book]
      WHERE  Book_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }
            else
            {

            }

        }

        protected void GridTaking_Book_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridTaking_Book.EditIndex = e.NewEditIndex;
            loadgird1();

        }

        protected void GridTaking_Book_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = (Label)GridTaking_Book.Rows[e.RowIndex].FindControl("Label1");


            TextBox txtBook_Name = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox txtBook_Writer_Name = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox txtBook_Edition = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox txtUser_ID = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox5");
            TextBox txtUser_Name = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox6");
            TextBox txtBook_taken_date = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox7");
            TextBox txtBook_return_date = (TextBox)GridTaking_Book.Rows[e.RowIndex].FindControl("TextBox8");
            
            string query = @"UPDATE [dbo].[Taking_Book] SET [Book_Name] = '" + txtBook_Name.Text + "',[Book_Writer_Name] ='" + txtBook_Writer_Name.Text + "',[Book_Edition] ='" + txtBook_Edition.Text + "',[User_ID] = '" + txtUser_ID.Text + "',[User_Name] = '" + txtUser_Name.Text + "',[Book_taken_date] ='" + txtBook_taken_date.Text + "',[Book_return_date] = '" + txtBook_return_date.Text +"'WHERE  Book_ID=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                GridTaking_Book.EditIndex = -1;
                loadgird1();
            }

        }
    }
}