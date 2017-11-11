<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataViewLists.aspx.cs" Inherits="DataViews.DataViewLists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQL Server DataSource and Data Controls</title>
    <meta name="viewport" content="width-device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <h1>SQL Server DataSource DropDown</h1>
            <br />
            <asp:DropDownList ID="ddl_sqldatasource" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="SalesOrderID" DataValueField="SalesOrderID"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2016CTP3ConnectionString %>" SelectCommand="SELECT SalesOrderID, ModifiedDate, OrderQty, UnitPrice, UnitPriceDiscount, LineTotal FROM Sales.SalesOrderDetail ORDER BY ModifiedDate, OrderQty, UnitPrice"></asp:SqlDataSource>
            <h1>GridView</h1>
            <asp:GridView ID="gv_sqldatasource" runat="server" AutoGenerateColumns="false" DataKeyNames="SalesOrderID" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-condensed table-hover" OnPreRender="gv_sqldatasource_PreRender" AllowSorting="true" AllowPaging="true">
                <Columns>
                    <asp:BoundField DataField="SalesOrderID" HeaderText="Sales Order ID" ControlStyle-CssClass="col-xs-2" ReadOnly="true" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" ControlStyle-CssClass="col-xs-2" SortExpression="ModifiedDate" />
                    <asp:BoundField DataField="OrderQty" HeaderText="Order Quantity" ControlStyle-CssClass="col-xs-2" SortExpression="OrderQty" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="Unit Price" ControlStyle-CssClass="col-xs-2" SortExpression="UnitPrice" />
                    <asp:BoundField DataField="UnitPriceDiscount" HeaderText="Unit Price Discount" ControlStyle-CssClass="col-xs-2" SortExpression="UnitPriceDiscount" />
                    <asp:BoundField DataField="LineTotal" HeaderText="Line Total" ControlStyle-CssClass="col-xs-2" SortExpression="LineTotal" />
                </Columns>
                <PagerStyle CssClass="pagerStyle" HorizontalAlign="Center" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
