Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView

Namespace WebApplication79
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			Session("expandAll") = False
		End Sub

		Protected Sub ASPxGridView3_BeforePerformDataSelect(ByVal sender As Object, ByVal e As EventArgs)
			Session("ProductID") = (CType(sender, ASPxGridView)).GetMasterRowKeyValue()
		End Sub

		Protected Sub ASPxGridView2_BeforePerformDataSelect(ByVal sender As Object, ByVal e As EventArgs)
			Session("CategoryID") = (CType(sender, ASPxGridView)).GetMasterRowKeyValue()
		End Sub

		Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
			Session("expandAll") = True
			ASPxGridView1.DetailRows.ExpandAllRows()
		End Sub

		Protected Sub ASPxGridView2_DataBound(ByVal sender As Object, ByVal e As EventArgs)
			If Convert.ToBoolean(Session("expandAll")) Then
				CType(sender, ASPxGridView).DetailRows.ExpandAllRows()
			End If
		End Sub
	End Class
End Namespace
