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
     <!--[if IE]><script  type="text/javascript" src="js/excanvas.js"></script><![endif]-->
<script  type="text/javascript" src="js/jquery-2.1.0.min.js"></script>

<script  type="text/javascript" src="js/prototype-1.6.0.2.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.7"></script>
<script  type="text/javascript" src="js/flotr-0.2.0-alpha.js"></script>
<script  type="text/javascript" src="js/maplace.js"></script>

     
    <script>

        function DrawGraph() {
            var f = Flotr.draw(
                $('graphe'), [
                    {
                        // => first series
                        data: [[0, 0], [1, 2], [2, 4], [3, 6], [4, 8]],
                        label: "y = 2x",
                        lines: { show: true, fill: true },
                        points: { show: true }
                    },
                    {
                        // => second series
                        data: [[0, 2.5], [1, 5.5], [2, 8.5], [3, 11.5], [4, 14.5]],
                        label: "y = 2.5 + 3x"
                    }
                ]
            );
        }
        function DrawStat() {
            Circles.create({
                id: 'graphe',
                percentage: 43,
                radius: 60,
                width: 10,
                number: 7.13,
                text: '%',
                colors: ['#D3B6C6', '#4B253A'],
                duration: 400
            });
        }
    </script>
    <script>
        function DrawMap() {
            new Maplace({
                show_markers: false,
                locations: [{
                    lat: 48.583,
                    lon: 7.750,
                    zoom: 8
                }]
            }).Load();

            //ul list example
            
        }
    </script>
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
                            <div class="btn-group">
                                <asp:Button ID="DrawGraphe" runat="server" class="btn btn-default" Text="Graphe" OnClientClick="DrawGraph(); return false;"/>
                                <asp:Button runat="server" ID="DrawStat" class="btn btn-default" Text="Statistique" OnClientClick="DrawStat(); return false;" />
                                <asp:Button runat="server" ID="DrawMap" class="btn btn-default" Text="Carte" OnClientClick="DrawMap(); return false; "/>
</div>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;
                
               
               <div id ="gmap-dropdown"></div>
                <div id="graphe" style="width: 600px; height: 300px;"></div>
               
                </td>
        </tr>
    </table>
</asp:Content>
