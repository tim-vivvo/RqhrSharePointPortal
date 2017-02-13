<%@ Assembly Name="RQHRPortal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=dab0437a5abacf12" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FooterLinksControl.ascx.cs" Inherits="RQHRPortal.CONTROLTEMPLATES.RQHRPortal.FooterLinksControl" %>

  
 <footer class="page-footer">
         <div class="footer-img">
          <div class="container" id="footer-container"><img src="~sitecollection/_layouts/15/RQHRPortal/Images/rqhr-logo-footer.png" width="200">
           <div id="footer-links">
            <nav class="nav nav-footer">
                <ul>
                    <li id="HelpMePkListItem" runat="server"><a target="_blank" href="#" title="" runat="server">Help Desk</a></li>
                    <li id="HelpMeFdlListItem" runat="server"><a target="_blank" href="#" title="" runat="server">Site Map</a></li>
                    <li id="HelpMeVbiListItem" runat="server"><a target="_blank" href="#" title="" runat="server">Terms of Service</a></li>
                    <li id="UnionInvestmentListItem" runat="server"><a target="_blank" href="#" title="" runat="server">Code of Conduct</a></li>
                </ul>
            </nav>
           </div>
          </div>
         </div>
        </footer>
