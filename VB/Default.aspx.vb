Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private summary As Integer
	Protected Sub ASPxGridView1_CustomSummaryCalculate(ByVal sender As Object, ByVal e As DevExpress.Data.CustomSummaryEventArgs)
			Select Case e.SummaryProcess
				Case DevExpress.Data.CustomSummaryProcess.Start
					summary = 0
				Case DevExpress.Data.CustomSummaryProcess.Calculate
					If e.GroupLevel = 1 OrElse CBool(e.GetValue("Discontinued")) Then
						summary += Convert.ToInt32(e.GetValue("UnitsInStock"))
					End If
				Case DevExpress.Data.CustomSummaryProcess.Finalize
					e.TotalValue = summary
					e.TotalValueReady = True
			End Select
	End Sub
End Class