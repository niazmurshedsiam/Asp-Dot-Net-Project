using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libary_Management
{
    public partial class Employee : System.Web.UI.Page
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
            string query = @"SELECT [Employee_ID]
      ,[Employee_Name]
  FROM [dbo].[Employee]";
            GridEmployee.DataSource = db.getData(query);
            GridEmployee.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Employee]
                              ([Employee_ID]
                              ,[Employee_Name])
                                VALUES
                                      ('" + txtEmployee_ID.Text + "','" + txtEmployee_Name.Text + "')";
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }

        }

       


        protected void GridEmployee_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridEmployee.PageIndex = e.NewPageIndex;
            loadgird1();

        }

        protected void GridEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridEmployee.Rows[e.RowIndex].FindControl("Label2");
            string query = @"DELETE FROM [dbo].[Employee]
      WHERE  Employee_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                loadgird1();
            }
            else
            {

            }
        }

        protected void GridEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridEmployee.EditIndex = -1;
            loadgird1();

        }

        protected void GridEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridEmployee.EditIndex = e.NewEditIndex;
            loadgird1();

        }

        protected void GridEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblID = (Label)GridEmployee.Rows[e.RowIndex].FindControl("Label2");

            TextBox txtEmployee_Name = (TextBox)GridEmployee.Rows[e.RowIndex].FindControl("TextBox1");

            string query = @"UPDATE [dbo].[Employee] SET [Employee_Name]='" +txtEmployee_Name.Text+ "' WHERE Employee_Id=" + lblID.Text;
            if (db.ExecuteQuery(query) == 1)
            {
                GridEmployee.EditIndex = -1;
                loadgird1();
            }

        }
    }
}