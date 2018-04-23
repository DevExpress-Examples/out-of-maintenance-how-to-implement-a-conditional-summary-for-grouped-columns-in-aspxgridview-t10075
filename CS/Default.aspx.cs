using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    int summary; 
    protected void ASPxGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e) {
            switch (e.SummaryProcess) {
                case DevExpress.Data.CustomSummaryProcess.Start: summary = 0; break;
                case DevExpress.Data.CustomSummaryProcess.Calculate:
                    if (e.GroupLevel == 1 || (bool)e.GetValue("Discontinued"))
                        summary += Convert.ToInt32(e.GetValue("UnitsInStock"));
                    break;
                case DevExpress.Data.CustomSummaryProcess.Finalize:
                    e.TotalValue = summary;
                    e.TotalValueReady = true;
                    break;
        }
    }
}