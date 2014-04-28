<%@ Page Title="" Language="C#" MasterPageFile="~/CTSProject.Master" AutoEventWireup="true" CodeBehind="Resultats.aspx.cs" Inherits="CTSProject.Resultats" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
      <script type="text/javascript"  src="/js/circles.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                   <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>

    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>Ligne:<br />
                        </td>
                        <td>
                <asp:DropDownList ID="DropDownListLigne" runat="server" >
                </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBoxDepart" runat="server"></asp:TextBox>
                             <asp:CalendarExtender ID="CalendarExtenderDepart" runat="server" TargetControlID="TextBoxDepart"></asp:CalendarExtender>

                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBoxFin" runat="server"></asp:TextBox>
                             <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextBoxFin"></asp:CalendarExtender>

                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <br />
                            <br />
                            <asp:Button ID="ButtonValider" class="btn" runat="server" Text="Valider" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;
                
                <div id="circles-1"></div>
                <script>
                    Circles.create({
                        id: 'circles-1',
                        percentage: 43,
                        radius: 60,
                        width: 10,
                        number: 7.13,
                        text: '%',
                        colors: ['#D3B6C6', '#4B253A'],
                        duration: 400
                    })
                </script>
                </td>
        </tr>
    </table>
</asp:Content>
