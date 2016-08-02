﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="demo-section k-content" style="width: 644px; max-width: none">
    <%= Html.Kendo().MediaPlayer()
        .Name("MediaPlayer")
        .AutoPlay(true)
        .Events(e => e.Play("onPlay").Pause("onPause").End("onEnd").Ready("onReady")
            .TimeChange("onTimeChange").VolumeChange("onVolumeChange"))
        .Media(
            media => media
            .Title("Digital Transformation: A New Way of Thinking")
            .Source("https://www.youtube.com/watch?v=gNlya720gbk")
        )
        .HtmlAttributes(new { style = "height:360px; width:640px" })
    %>
</div>
<div class="demo-section">
    <h3 class="title">Console log</h3>
    <div class="console"></div>
</div>

<script>
    function onPlay() {
        kendoConsole.log("event :: play");
    }

    function onPause() {
        kendoConsole.log("event :: pause");
    }

    function onEnd() {
        kendoConsole.log("event :: end");
    }

    function onReady() {
        kendoConsole.log("event :: ready");
    }

    function onTimeChange() {
        kendoConsole.log("event :: timeChange");
    }

    function onVolumeChange() {
        kendoConsole.log("event :: volumeChange");
    }
</script>
</asp:Content>
