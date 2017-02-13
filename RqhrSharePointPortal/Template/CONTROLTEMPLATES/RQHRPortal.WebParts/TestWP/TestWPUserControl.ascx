<%@ Assembly Name="RQHRPortal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=dab0437a5abacf12" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TestWPUserControl.ascx.cs" Inherits="RQHRPortal.WebParts.TestWP.TestWPUserControl" %>


<SharePoint:ScriptLink runat="server" Name="RQHRPortal/Scripts/Custom/testWebPartSearchResults.js" Localizable="False" Defer="False" />

<asp:HiddenField runat="server" ID="SearchResultsField" />

<div id="processedResults"></div>

<script>
    jQuery(document).ready(function () {
        var searchResults = jQuery("#<%= SearchResultsField.ClientID %>").val();
        RenderResults(searchResults);
    });
</script>
