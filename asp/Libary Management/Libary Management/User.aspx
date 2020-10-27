<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Libary_Management.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="User_ID"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_ID" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="User_Name"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_Name" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="User_Address"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_Address" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="User_Mobile"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtUser_Mobile" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click"/>
            </td>
        </tr>

    </table>
    <br /><br />

    <asp:GridView ID="GridUser" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridUser_PageIndexChanging1" OnRowCancelingEdit="GridUser_RowCancelingEdit1" OnRowDeleting="GridUser_RowDeleting1" OnRowEditing="GridUser_RowEditing" OnRowUpdating="GridUser_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="User_ID">
               
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("User_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("User_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("User_Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("User_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User_Mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("User_Mobile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("User_Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
