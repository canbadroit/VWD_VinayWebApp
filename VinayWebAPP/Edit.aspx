﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Default2" %>
 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
 
        .auto-style1 {
            width: 100%;
        }
    </style>
 
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table class="auto-style1">
 
        <tr>
 
            <td>
 Query Using</td>
 
            <td>
 
                <asp:DropDownList ID="DropDownList1" runat="server">
 
                </asp:DropDownList>
 
            </td>
 
            <td>
 Submission Time Between</td>
 
            <td>
 From:<asp:TextBox ID="TextBox1" runat="server">
 </asp:TextBox>
 
                To:<asp:TextBox ID="TextBox2" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 REQID</td>
 
            <td>
 
                <asp:TextBox ID="TextBox4" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 Product Contains</td>
 
            <td>
 
                <asp:TextBox ID="TextBox8" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 Title Contains</td>
 
            <td>
 
                <asp:TextBox ID="TextBox7" runat="server">
 </asp:TextBox>
 
            </td>
 
        </tr>
 
        <tr>
 
            <td>
 &nbsp;</td>
 
            <td>
 &nbsp;</td>
 
            <td>
 Submitted User ID Contains</td>
 
            <td>
 
                <asp:TextBox ID="TextBox3" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 DOC Between</td>
 
            <td>
 From:<asp:TextBox ID="TextBox5" runat="server">
 </asp:TextBox>
 
                TO:<asp:TextBox ID="TextBox6" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 Version Contains</td>
 
            <td>
 
                <asp:TextBox ID="TextBox9" runat="server">
 </asp:TextBox>
 
            </td>
 
            <td>
 Certified (Y/N)</td>
 
            <td>
 
                <asp:DropDownList ID="DropDownList2" runat="server">
 
                </asp:DropDownList>
 
            </td>
 
        </tr>
 
    </table>
 

    <Div>
 
        <p>
 

            <asp:GridView ID="GridView1" runat="server">
 
            </asp:GridView>
 

        </p>
 
    </Div>
 
    
</asp:Content>
 

