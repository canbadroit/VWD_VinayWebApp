<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="ADD" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
        $(function () {
            $('#<%= TB_Vers.ClientID %>').autocomplete({
            source: "AutoComplete.ashx"
        });
    });
        

</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table>

            <tr>

                <td >
                    Product:</td>

                <td >

                    <asp:DropDownList ID="DL_Prod" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Products_name" DataValueField="Products_name" OnSelectedIndexChanged="DL_Prod_SelectedIndexChanged">

                    </asp:DropDownList>

                </td>

            </tr>

            <tr>

                <td>
                    Cross Reference Product :</td>

                <td>

                    <asp:DropDownList ID="DL_Cross_Prod" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Products_name" DataValueField="Products_name" OnSelectedIndexChanged="DL_Prod_SelectedIndexChanged">

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_FBE %>" SelectCommand="SELECT [Products_name] FROM [Products_table]">
</asp:SqlDataSource>

                </td>

            </tr>

            <tr>

                <td>
Version:</td>

                <td>

                    <asp:TextBox ID="TB_Vers" runat="server"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td>
Certified (Y/N):</td>

                <td>

                    <asp:DropDownList ID="DL_Cert" runat="server">

                        <asp:ListItem>
Yes</asp:ListItem>

                        <asp:ListItem>
No</asp:ListItem>

                    </asp:DropDownList>

                </td>

            </tr>

            <tr>

                <td>
Date of Certification:</td>

                <td>

  
                    <asp:TextBox ID="TBD_DOC" runat="server">
</asp:TextBox>
                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="TBD_DOC" TargetControlID="TBD_DOC"></cc1:CalendarExtender>
                    <%-- <ajax:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MMM-yyyy" PopupButtonID="ImageButton1" TargetControlID="TBD_DOC" PopupPosition="BottomRight">
</ajax:CalendarExtender>
--%>

                  

                </td>

                
            </tr>

            <tr>

                <td>
&nbsp;</td>

                <td>

                    <asp:Button ID="Button1" runat="server" OnClick="Btn_Update_Click" Text="Update" />

                </td>

            </tr>

        </table>



</asp:Content>


