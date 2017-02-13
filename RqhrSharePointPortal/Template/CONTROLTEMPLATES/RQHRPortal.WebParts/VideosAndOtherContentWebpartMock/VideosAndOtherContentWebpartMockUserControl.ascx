<%@ Assembly Name="RQHRPortal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=dab0437a5abacf12" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VideosAndOtherContentWebpartMockUserControl.ascx.cs" Inherits="RQHRPortal.WebParts.VideosAndOtherContentWebpartMock.VideosAndOtherContentWebpartMockUserControl" %>

<div id ="video-webpart-wrapper">
    <div id="video-webpart-tabs">
         <ul class="nav nav-pills">
              <li role="presentation"><a class="navAnchor" href="#">Videos</a><div class="navCurrentVideoItem"></div></li>
              <li role="presentation"><a class="navAnchor" href="#">Nursing</a><div class="navCurrentVideoItem"></div></li>
              <li role="presentation"><a class="navAnchor" href="#">Physicians</a><div class="navCurrentVideoItem"></div></li>
              <li role="presentation"><a class="navAnchor" href="#">Other</a><div class="navCurrentVideoItem"></div></li>
         </ul>
    </div>
    <div id="video-webpart-content">
        <div class="content-title">
            <h5 class="h5PartialUnderline">Latest Video</h5>
        </div>
        <div class="content-picture">
            <img src="/_layouts/15/RQHRPortal/Images/video-thumbnail.png"/>
            <div id="item-title">
              <h4>Southeast Integrated Care Center Moosomin</h4>
              <button type="button" class="btn rqhr-button">Watch Video</button>
            </div>       
        </div>
    </div>
    <br />
    <br />
    <br />
    <div style="background-color:#F5F5F5; height:2px"></div>
    <div id="other-content">
        <div class="content-title">
            <h5 class="h5PartialUnderline">Other</h5>
        </div>
        <div class="other-content-items">
            <img src="/_layouts/15/RQHRPortal/Images/Layer 5.png"/>
            <div class="other-item-title">
              <h5>Long Lake Valley Integrated Care Centre Moosomin</h5>
              <button type="button" class="btn rqhr-button">Watch Video</button>
            </div>       
        </div>
        <div class="other-content-items">
            <img src="/_layouts/15/RQHRPortal/Images/Layer 6.png"/>
            <div class="other-item-title">
              <h5>Long Lake Valley Integrated Care Centre Moosomin</h5>
              <button type="button" class="btn rqhr-button">Watch Video</button>
            </div>       
        </div>
    </div>    
</div>
