<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Return_Book.aspx.cs" Inherits="Libary_Management.Return_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Book_ID"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_ID" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Book_Name"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_Name" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Book_Writer_Name"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_Writer_Name" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Book_Edition"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_Edition" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="User_ID"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_ID" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="User_Name"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_Name" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Book_taken_date"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_taken_date" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Book_return_date"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtBook_return_date" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Submitting_the_book_right time"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtSubmitting_the_book_right" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Submitting_the_book_wrong_time"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtSubmitting_the_book_wrong_time" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click"/>
            </td>
        </tr>
        
      

    </table>
    <br /><br />
    <asp:GridView ID="GridReturn_Book" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridReturn_Book_PageIndexChanging" OnRowCancelingEdit="GridReturn_Book_RowCancelingEdit" OnRowDeleting="GridReturn_Book_RowDeleting" OnRowEditing="GridReturn_Book_RowEditing" OnRowUpdating="GridReturn_Book_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Book_ID">
                
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Book_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Book_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Book_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_Writer_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Book_Writer_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Book_Writer_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_Edition">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Book_Edition") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Book_Edition") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("User_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("User_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("User_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_taken_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Book_taken_date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Book_taken_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book_return_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Book_return_date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Book_return_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitting_the_book_right time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("[Submitting_the_book_right_time]") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("[Submitting_the_book_right_time]") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Submitting_the_book_wrong_time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Submitting_the_book_wrong_time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Submitting_the_book_wrong_time") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
