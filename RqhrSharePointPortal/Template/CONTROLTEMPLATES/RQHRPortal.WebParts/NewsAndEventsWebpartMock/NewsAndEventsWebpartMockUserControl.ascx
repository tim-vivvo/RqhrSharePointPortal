<%@ Assembly Name="RQHRPortal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=dab0437a5abacf12" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsAndEventsWebpartMockUserControl.ascx.cs" Inherits="RQHRPortal.WebParts.NewsAndEventsWebpartMock.NewsAndEventsWebpartMockUserControl" %>

<SharePoint:ScriptLink runat="server" Name="RQHRPortal/Scripts/Custom/testWebPartSearchResults.js" Localizable="False" Defer="False" />

 <div class="row" id="firstRow">
	<div class="col-lg-8" id="centralNewsItem">
	    <div id="buttons">
            <a href="#" id="prev" class="carButtons"><</a>
            <a href="#" id="next" class="carButtons">></a>
        </div>
	</div>
    <div class="col-lg-4" id="aside-news">
        <div id="news-events-title" >
            <h1 class="h1PartialUnderline">News & Events</h1>
        </div>
        <div id="newsCustomScrollBar"> 
            <div id="news-items">
            </div>
        </div>
        <div id="more-news-and-events"><asp:HyperLink runat="server" CssClass ="newsAnchor" ID="_moreNewsHyperLink">More news and information</asp:HyperLink></div>
    </div>
     
     <asp:HiddenField runat="server" ID="SearchResultsField" />

<script>
    jQuery(document).ready(function () {
        var searchResults = jQuery("#<%= SearchResultsField.ClientID %>").val();
        RenderResults(searchResults);
    });
</script>
                            
 </div>


