<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication79._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CategoryID">
            <Templates>
                <DetailRow>
                    <dxwgv:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False"
                        DataSourceID="SqlDataSource2" KeyFieldName="ProductID" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect"
                        OnDataBound="ASPxGridView2_DataBound">
                        <Templates>
                            <DetailRow>
                                <dxwgv:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False"
                                    DataSourceID="SqlDataSource3" KeyFieldName="OrderID" OnBeforePerformDataSelect="ASPxGridView3_BeforePerformDataSelect">
                                    <Columns>
                                        <dxwgv:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="Quantity" VisibleIndex="3">
                                        </dxwgv:GridViewDataTextColumn>
                                        <dxwgv:GridViewDataTextColumn FieldName="Discount" VisibleIndex="4">
                                        </dxwgv:GridViewDataTextColumn>
                                    </Columns>
                                    <SettingsDetail IsDetailGrid="True" />
                                </dxwgv:ASPxGridView>
                            </DetailRow>
                        </Templates>
                        <Columns>
                            <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                                <EditFormSettings Visible="False" />
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                            </dxwgv:GridViewDataCheckColumn>
                            <dxwgv:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="10">
                            </dxwgv:GridViewDataTextColumn>
                        </Columns>
                        <SettingsDetail IsDetailGrid="True" ShowDetailRow="True" />
                    </dxwgv:ASPxGridView>
                </DetailRow>
            </Templates>
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsDetail ShowDetailRow="True" />
        </dxwgv:ASPxGridView>
    
        <dxe:ASPxButton ID="ASPxButton1" runat="server" Text="Expand All Deep" OnClick="ASPxButton1_Click">
        </dxe:ASPxButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nwindConnectionString2 %>" ProviderName="<%$ ConnectionStrings:nwindConnectionString2.ProviderName %>"
            SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:nwindConnectionString2 %>" ProviderName="<%$ ConnectionStrings:nwindConnectionString2.ProviderName %>"
            SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:SessionParameter Name="CategoryID" SessionField="CategoryID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:nwindConnectionString2 %>" ProviderName="<%$ ConnectionStrings:nwindConnectionString2.ProviderName %>"
            SelectCommand="SELECT * FROM [Order Details] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:SessionParameter Name="ProductID" SessionField="ProductID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
