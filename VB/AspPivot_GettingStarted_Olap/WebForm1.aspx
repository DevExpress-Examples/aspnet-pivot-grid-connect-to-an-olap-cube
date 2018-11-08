<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" Inherits="AspPivot_GettingStarted_Olap.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
                ClientIDMode="AutoID" 
                OLAPConnectionString="provider=MSOLAP;data source=https://demos.devexpress.com/Services/OLAP/msmdpump.dll;initial catalog=&quot;Adventure Works DW Standard Edition&quot;;cube name=&quot;Adventure Works&quot;">
                <Fields>
                    <dx:PivotGridField ID="fieldCity" Area="RowArea" AreaIndex="1" Caption="City" DisplayFolder="Location" 
                        FieldName="[Customer].[City].[City]">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCountry" Area="RowArea" AreaIndex="0" Caption="Country" DisplayFolder="Location" 
                        FieldName="[Customer].[Country].[Country]">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFiscalQuarter" Area="ColumnArea" AreaIndex="1" Caption="Fiscal Quarter" DisplayFolder="Fiscal" 
                        FieldName="[Date].[Fiscal].[Fiscal Quarter]" GroupIndex="0" InnerGroupIndex="1">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFiscalYear" Area="ColumnArea" AreaIndex="0" Caption="Fiscal Year" DisplayFolder="Fiscal" 
                        FieldName="[Date].[Fiscal].[Fiscal Year]" GroupIndex="0" InnerGroupIndex="0">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldInternetSalesAmount" Area="DataArea" AreaIndex="0" Caption="Internet Sales Amount" DisplayFolder="Internet Sales" 
                        FieldName="[Measures].[Internet Sales Amount]">
                    </dx:PivotGridField>
                </Fields>
                <OptionsData DataProcessingEngine="LegacyOptimized" />
                <Groups>
                    <dx:PivotGridWebGroup Caption="Date.Fiscal" Hierarchy="[Date].[Fiscal]" ShowNewValues="True" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
</body>
</html>