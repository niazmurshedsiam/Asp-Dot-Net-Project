<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Libary_Management.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
           <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Employee_ID"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtEmployee_ID" runat ="server"></asp:TextBox>

            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Employee_Name"></asp:Label>    
            </td>
            <td>
                <asp:TextBox ID="txtEmployee_Name" runat ="server"></asp:TextBox>

            </td> 
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Insert" OnClick="btnSubmit_Click"/>
            </td>
        </tr>

    </table>
    <br /><br />
    <asp:GridView ID="GridEmployee" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GridEmployee_PageIndexChanging" OnRowCancelingEdit="GridEmployee_RowCancelingEdit" OnRowDeleting="GridEmployee_RowDeleting" OnRowEditing="GridEmployee_RowEditing" OnRowUpdating="GridEmployee_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Employee_ID">
                
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Employee_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Employee_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Employee_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />

        </Columns>
    </asp:GridView>
</asp:Content>
