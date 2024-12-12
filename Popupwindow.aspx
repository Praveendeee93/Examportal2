<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popupwindow.aspx.cs" Inherits="Examportal2.Popupwindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Details</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style>
        .button{
            width:100px;
            height:33px;
            background-color:#03acfd;
            border-radius:5px;
            border-color:#03acfd;
        }
    </style>
</head>
<body>

    <form id="formforpopup" runat="server">

        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        <div style="text-align: center; margin-top:0px; font-weight:bold; font-size:20px; background-color: #03acfd;">
            <asp:Label runat="server" Text="Exam Details"></asp:Label>
        </div> 
        <div style="text-align: center; color: seagreen; font-weight:bold; font-size:17px; margin-top:15px;">
            <asp:Label runat="server" Text="IA1ForSem3" ID="Label1"></asp:Label>
        </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-4" style="font-size:15px; font-weight:bold;">
                <div style="margin-bottom: 5px;">
                <asp:Label runat="server" Text="Common For Selected Subject's"></asp:Label>
               
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Subject Code"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Subject Name"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Exam Date"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Starting Time"></asp:Label>
                </div>               
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Exam Duration"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Select Sub Category"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Is Lock"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Lock Date"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Min Mark"></asp:Label>
                </div>
                <div style="margin-bottom: 5px;">
                    <asp:Label runat="server" Text="Max Mark"></asp:Label>
                </div>
                <div>
                    <asp:Label runat="server" Text="Visibilty In Part Settings(For Staff Only)"></asp:Label>
                </div>
            </div>
            <div class="col-xs-6">
                 
                  <div>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label runat="server" Text="Common For Same Subject's" style="font-size:15px; font-weight:bold;"></asp:Label>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                    </div>
                    <div>
                    <asp:TextBox ID="TextBox3" runat="server" style="width:180px; height:25px; margin-bottom:1px; border-color:lightgrey; border-radius:3px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox4" runat="server" style="width:400px; height:25px; margin-bottom:1px; border-color:lightgrey; border-radius:3px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox5" runat="server" style="width:100px; height:30px;box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 4px 0 rgba(0, 0, 0, 0.19); margin-bottom:1px; border-color:grey; border-radius:5px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox6" runat="server" style="width:60px; height:30px;box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 4px 0 rgba(0, 0, 0, 0.19); margin-bottom:1px; border-color:grey; border-radius:5px;"></asp:TextBox>
                    <asp:Label runat="server" Text="Ending Time" style="font-size:15px; font-weight:bold;"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" style="width:60px; height:30px;box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 4px 0 rgba(0, 0, 0, 0.19); margin-bottom:1px; border-color:grey; border-radius:5px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox7" runat="server" style="width:100px; height:30px;box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 4px 0 rgba(0, 0, 0, 0.19);margin-bottom:1px; border-color:grey; border-radius:5px;"></asp:TextBox>
                </div>
                <div>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                </div>
                <div>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                </div>  
                <div>
                    <asp:TextBox ID="TextBox11" runat="server" style="width:100px; height:30px;box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 4px 0 rgba(0, 0, 0, 0.19);margin-bottom:1px; border-color:grey; border-radius:5px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" style="width:70px; height:30px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom:1px; border-radius:5px;"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TextBox2" runat="server" style="width:70px; height:30px;box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-bottom:1px; border-radius:5px;"></asp:TextBox>
                </div>
                 <div>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </div>

            </div>
            

        </div>
        

         

      <%--  <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Common For Selected Subject's"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" />
        </div>


        <div style="margin-left: 80px; text-align: center;">
            <asp:Label runat="server" Text="Common For Same Subject's"></asp:Label>
            <asp:CheckBox ID="CheckBox2" runat="server" />
        </div>


        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Subject Code:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Subject Name:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Exam Date:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Starting Time:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: center;">
            <asp:Label runat="server" Text="Ending Time:"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Exam Duration:"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Select Sub Category:"></asp:Label>
            <asp:CheckBox ID="CheckBox4" runat="server" />
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Is Lock:"></asp:Label>
            <asp:CheckBox ID="CheckBox5" runat="server" />
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Lock Date:"></asp:Label>
            <asp:CheckBox ID="CheckBox6" runat="server" />
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Min Mark:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Max Mark:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>

        <div style="margin-left: 80px; text-align: left;">
            <asp:Label runat="server" Text="Visibilty In Part Settings(For Staff Only):"></asp:Label>
            <asp:CheckBox ID="CheckBox3" runat="server" />
        </div>--%>



        <div style=" margin-left: 430px;text-align: center;">
            <asp:Button ID="Button1" CssClass="button" runat="server" Text="Save" OnClick="Button1_Click" />
            <asp:Button ID="Button2" CssClass="button" runat="server" Text="Delete" OnClick="Button2_Click" />
            <asp:Button ID="Button3" CssClass="button" runat="server" Text="Exit" OnClick="Button3_Click" />
        </div>
</form>
</body>
</html>
