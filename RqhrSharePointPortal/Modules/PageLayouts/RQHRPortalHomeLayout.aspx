 <%@ Page language="C#" Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage, Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
 <%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
 <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
 <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
 <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
   <link id="Link1" href="<% $SPUrl:~Site/_layouts/15/TestApplication/Stylesheets/Custom/sass/style.css%>" runat="server" type="text/css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
 <SharePointWebControls:FieldValue id="FieldValue1" FieldName="Title" runat="server"/>
 </asp:Content>
 <asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">

         <div class="row" id="firstRow">
	        <div class="topZone">
                <WebPartPages:WebPartZone runat="server" ID="WP1" AllowCustomization="True" AllowPersonalization="False" Orientation="Vertical">
                    <ZoneTemplate>
                     </ZoneTemplate>
                </WebPartPages:WebPartZone>
	        </div>                          
        </div>

     <div class="row" id="secondRow">
	        <div class="col-lg-8" id="secondRowFirstColumn">
                <WebPartPages:WebPartZone runat="server" ID="WP2" AllowCustomization="True" AllowPersonalization="False" Orientation="Vertical">
                    <ZoneTemplate>
                     </ZoneTemplate>
                </WebPartPages:WebPartZone>
	        </div>
            <div class="col-lg-4" id="secondRowSecondColumn">
                <WebPartPages:WebPartZone runat="server" ID="WP3" AllowCustomization="True" AllowPersonalization="False" Orientation="Vertical">
                    <ZoneTemplate>
                     </ZoneTemplate>
                </WebPartPages:WebPartZone>
            </div>
     </div>

 </asp:Content>
