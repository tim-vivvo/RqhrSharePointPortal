<%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage, Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="RQHRControls" TagName="NewsItemDisplayControl" src="~/_controltemplates/15/RQHRPortal/NewsItemDisplayControl.ascx" %>
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
   <SharePointWebControls:ScriptLink Language="javascript" Name="~sitecollection/_layouts/15/RQHRPortal/Scripts/jQuery/jquery-2.2.3.min.js" runat="server" Localizable="false" />
   <SharePointWebControls:ScriptLink Language="javascript" Name="~sitecollection/_layouts/15/RQHRPortal/Scripts/Custom/renderNewsPageContent.js" runat="server" Localizable="false" />
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
 <SharePointWebControls:FieldValue id="FieldValue1" FieldName="Title" runat="server"/>
 </asp:Content>
 <asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
        
        <RQHRControls:NewsItemDisplayControl runat="server"></RQHRControls:NewsItemDisplayControl>
         
 </asp:Content>

