<%@ Page Title="" Language="C#" MasterPageFile="~/CTSProject.Master" AutoEventWireup="true" CodeBehind="DiagnosticRadio.aspx.cs" Inherits="CTSProject.DiagnosticRadio" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 104%;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                <br/> 

                <asp:TextBox runat="server" ID="TextBox1" />
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1"></asp:CalendarExtender>

                
                

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;
    
</asp:Content>
