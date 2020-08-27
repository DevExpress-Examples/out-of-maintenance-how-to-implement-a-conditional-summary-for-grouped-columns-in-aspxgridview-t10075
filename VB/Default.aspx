<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="ASPxGridView1"
				runat="server"
				DataSourceID="sqlData"
				AutoGenerateColumns="False"
				KeyFieldName="EmployeeID"
				OnCustomSummaryCalculate="ASPxGridView1_CustomSummaryCalculate">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2" GroupIndex="0">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="5">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Discontinued" VisibleIndex="6" GroupIndex="1">
					</dx:GridViewDataTextColumn>
				</Columns>
				<GroupSummary>
					<dx:ASPxSummaryItem FieldName="UnitsInStock" SummaryType="Custom" />
				</GroupSummary>
			</dx:ASPxGridView>
			<asp:SqlDataSource ID="sqlData" runat="server"
				ConnectionString="<%$ ConnectionStrings:NORTHWINDConnectionString %>"
				SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued] FROM [Products]" />
		</div>
	</form>
</body>
</html>