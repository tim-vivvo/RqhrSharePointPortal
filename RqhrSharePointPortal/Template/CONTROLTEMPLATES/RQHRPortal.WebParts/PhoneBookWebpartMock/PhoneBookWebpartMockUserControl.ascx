<%@ Assembly Name="RQHRPortal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=dab0437a5abacf12" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhoneBookWebpartMockUserControl.ascx.cs" Inherits="RQHRPortal.WebParts.PhoneBookWebpartMock.PhoneBookWebpartMockUserControl" %>

<div class="webpart-wrapper phone-book">
    <div id="phonebook-search">
        <div id="phonebook-title">
            <h3 class="h3PartialUnderline">Phonebook</h3>            
        </div>
        
        <div id="phonebook-searchbox">
            <input id="SearchTextInput" type="text" class="searchpage-search" placeholder="Sarah J |">
        </div>   
    </div>    
    <div id="phonebook-search-results">
        <div class="phonebook-item">
            <div class="phonebook-item-picture-name">
                <img src="/_layouts/15/RQHRPortal/Images/Layer 3.png">
                <div class="phonebook-item-name">
                    <h4>Sarah Johns</h4>
                    <p>Department</p>
                </div>
            </div>  
            <div class="phonebook-item-details">  
                <p class="phone-number">(306) 766-5506</p>
                <p class="email">sarah.johns@healthwebsite.ca</p>
            </div>
        </div>
         <div class="phonebook-item">
            <div class="phonebook-item-picture-name">
                <img src="/_layouts/15/RQHRPortal/Images/Shape 9.png">
                <div class="phonebook-item-name">
                    <h4>Sarah Bosworth</h4>
                    <p>Department</p>
                </div>
            </div>  
            <div class="phonebook-item-details">  
                <p class="phone-number">(306) 766-5506</p>
                <p class="email">sarah.bosworth@healthwebsite.ca</p>
            </div>
        </div>
         <div class="phonebook-item">
            <div class="phonebook-item-picture-name">
                <img src="/_layouts/15/RQHRPortal/Images/Shape 9.png">
                <div class="phonebook-item-name">
                    <h4>Sarah M. Lydon</h4>
                    <p>Department</p>
                </div>
            </div>  
            <div class="phonebook-item-details">  
                <p class="phone-number">(306) 766-5506</p>
                <p class="email">sarah.johns@healthwebsite.ca</p>
            </div>
        </div>
        <hr id="horizontal-line"/>
        <div id="see-more">See more</div>
    </div>
</div>
