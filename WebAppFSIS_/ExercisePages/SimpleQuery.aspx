<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SimpleQuery.aspx.cs" Inherits="WebAppFSIS_.ExercisePages.SimpleQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="offset-1">
                <asp:Label runat="server" Text="Enter Team ID"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="TeamIDArg"></asp:TextBox>&nbsp;&nbsp;
                <asp:Button runat="server" ID="Fetch" Text="Fetch" OnClick="Fetch_Click" />
                <br /><br />

                <asp:Label id="MessageLabel" runat="server" ></asp:Label>
            </div>
        </div>
        <div class="col-md-6">
            <asp:Label runat="server" Text="Team ID:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="TeamID"></asp:Label>
            <br />

            <asp:Label runat="server" Text="Team Name:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="TeamName"></asp:Label>
            <br />

            <asp:Label runat="server" Text="Coach:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="Coach"></asp:Label>
            <br />

            <asp:Label runat="server" Text="Assistant Coach:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="AssistantCoach"></asp:Label>
            <br />

            <asp:Label runat="server" Text="Wins:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="Wins"></asp:Label>
            <br />

            <asp:Label runat="server" Text="Losses:"></asp:Label>&nbsp;&nbsp;
            <asp:Label runat="server" ID="Losses"></asp:Label>
        </div>
    </div>
</asp:Content>
