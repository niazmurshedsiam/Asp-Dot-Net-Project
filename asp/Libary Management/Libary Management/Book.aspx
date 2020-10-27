<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="Libary_Management.Book" %>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click"/>
            </td>
        </tr>
        

    </table>
    <br /><br />
    <asp:GridView ID="GridBook" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridBook_PageIndexChanging" OnRowCancelingEdit="GridBook_RowCancelingEdit" OnRowDeleting="GridBook_RowDeleting" OnRowEditing="GridBook_RowEditing" OnRowUpdating="GridBook_RowUpdating">
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
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
