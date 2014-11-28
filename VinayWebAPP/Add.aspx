<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="_Default" %>












<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
    .auto-style11 {
        width: 154px;
        height: 30px;
    }
    .auto-style12 {
        width: 276px;
        height: 30px;
    }
    .auto-style13 {
        width: 76px;
        height: 30px;
    }
    .auto-style14 {
        width: 445px;
        height: 30px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table class="auto-style1">
            <tr>
                <td class="auto-style11">Title</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TB_Title" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Btn_Update_Click" Text="Update" />
                </td>
                <td class="auto-style14">
                    Logged in as :
                    <asp:Label ID="Username" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">Products</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DL_Prod" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Products_name" DataValueField="Products_name" OnSelectedIndexChanged="DL_Prod_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FBEConnectionString %>" SelectCommand="SELECT [Products_name] FROM [Products_table]"></asp:SqlDataSource>
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
  
                    <asp:TextBox ID="TBD_DOC" runat="server"></asp:TextBox>
                    <%-- <ajax:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MMM-yyyy" PopupButtonID="ImageButton1" TargetControlID="TBD_DOC" PopupPosition="BottomRight"></ajax:CalendarExtender>--%>
                    <asp:Calendar ID="Calendar1" runat="server" Height="22px" OnSelectionChanged="Calendar1_SelectionChanged" Width="195px"></asp:Calendar>
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
</asp:Content>


