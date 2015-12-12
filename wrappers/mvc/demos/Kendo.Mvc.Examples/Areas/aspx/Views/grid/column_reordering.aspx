<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<%: Html.Kendo().Grid<Kendo.Mvc.Examples.Models.OrderViewModel>()
    .Name("grid")
    .Pageable()
    .Sortable()
    .Scrollable()
    .HtmlAttributes(new { style = "height:550px;" })
    .Columns(columns =>
    {
        columns.Bound(o => o.OrderDate).Width(120).Format("{0:MM/dd/yyyy}");
        columns.Bound(o => o.ShipCountry);
        columns.Bound(o => o.ShipCity);
        columns.Bound(o => o.ShipName).Width(200);
        columns.Bound(o => o.ShippedDate).Format("{0:MM/dd/yyyy}");
        columns.Bound(o => o.OrderID).Width(80);
    })
    .DataSource(dataSource => dataSource
        .Ajax()
        .PageSize(15)
        .Read(read => read.Action("Orders_Read", "Grid"))
     )
    .Resizable(resize => resize.Columns(true))
    .Reorderable(reorder => reorder.Columns(true))
%>
</asp:Content>
