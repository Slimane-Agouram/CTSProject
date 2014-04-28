<%@ Page Title="" Language="C#" MasterPageFile="~/CTSProject.Master" AutoEventWireup="true" CodeBehind="DiagnosticRadio.aspx.cs" Inherits="CTSProject.DiagnosticRadio" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 104%;
            height: 76px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DropDownList ID="DropDownListVehicule" runat="server" ToolTip="Vehicule" OnSelectedIndexChanged="DropDownListVehicule_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownListLigne" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownListRadioQuality" runat="server">
                </asp:DropDownList>
                <br/> <br/>

            <ajaxToolkit:ToolkitScriptManager ID="ScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
                <table class="auto-style2">
                    <tr>
                        <td>

                <asp:TextBox runat="server" ID="TextBoxDateDepart" />
                <asp:CalendarExtender ID="CalendarExtenderDepart" runat="server" TargetControlID="TextBoxDateDepart"></asp:CalendarExtender>
                
                
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxDateFin" runat="server"></asp:TextBox>
                                            <asp:CalendarExtender ID="CalendarExtenderFin" runat="server" TargetControlID="TextBoxDateFin"></asp:CalendarExtender>

                        </td>
                    </tr>
                </table>
                
                
                

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
    
                
                <asp:Button runat="server" class="btn" Text="Valider"></asp:Button>

                
                

            </asp:Content>
