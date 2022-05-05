<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" Inherits="AspPivot_GettingStarted_Olap.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v22.1, Version=22.1.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
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
                OLAPConnectionString="provider=MSOLAP;data source=https://demos.devexpress.com/Services/OLAP/msmdpump.dll;initial catalog=&quot;Adventure Works DW Standard Edition&quot;;cube name=&quot;Adventure Works&quot;" IsMaterialDesign="False">
                <Fields>
                    <dx:PivotGridField ID="fieldCity" Area="RowArea" AreaIndex="1" Caption="City" DisplayFolder="Location">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="[Customer].[City].[City]" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCountry" Area="RowArea" AreaIndex="0" Caption="Country" DisplayFolder="Location">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="[Customer].[Country].[Country]" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFiscalQuarter" Area="ColumnArea" AreaIndex="1" Caption="Fiscal Quarter" DisplayFolder="Fiscal" GroupIndex="0" InnerGroupIndex="1">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="[Date].[Fiscal].[Fiscal Quarter]" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFiscalYear" Area="ColumnArea" AreaIndex="0" Caption="Fiscal Year" DisplayFolder="Fiscal" GroupIndex="0" InnerGroupIndex="0">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="[Date].[Fiscal].[Fiscal Year]" />
                        </DataBindingSerializable>
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldInternetSalesAmount" Area="DataArea" AreaIndex="0" Caption="Internet Sales Amount" DisplayFolder="Internet Sales">
                        <DataBindingSerializable>
                            <dx:DataSourceColumnBinding ColumnName="[Measures].[Internet Sales Amount]" />
                        </DataBindingSerializable>
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