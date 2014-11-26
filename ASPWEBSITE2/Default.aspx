<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 154px;
        }
        .auto-style4 {
            height: 23px;
            width: 154px;
        }
        .auto-style5 {
            width: 276px;
        }
        .auto-style6 {
            height: 23px;
            width: 276px;
        }
        .auto-style7 {
            width: 445px;
        }
        .auto-style8 {
            height: 23px;
            width: 445px;
        }
        .auto-style9 {
            width: 76px;
        }
        .auto-style10 {
            height: 23px;
            width: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Title</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TB_Title" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Btn_Update" runat="server" OnClick="Btn_Update_Click" Text="Update" />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Products</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DL_Prod" runat="server" AutoPostBack="True" DataSourceID="DS_FBE" DataTextField="Products_name" DataValueField="Products_name" OnSelectedIndexChanged="DL_Prod_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DS_FBE" runat="server" ConnectionString="<%$ ConnectionStrings:FBEConnectionString %>" SelectCommand="SELECT DISTINCT [Products_name] FROM [Products_table]"></asp:SqlDataSource>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Version</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DL_Vers" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Certified (Y/N)</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DL_Cert" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Date of Certification</td>
                <td class="auto-style6">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                    <asp:TextBox ID="TBD_DOC" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/Images/calendar_icon.jpg" Width="26px" />
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd-MMM-yyyy" PopupButtonID="ImageButton1" TargetControlID="TBD_DOC" PopupPosition="BottomRight"></asp:CalendarExtender>
                </td>
                
                <td class="auto-style10"></td>
                
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
