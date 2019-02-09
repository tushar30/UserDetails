<aura:application controller="UserDetails" extends="force:slds">
    <aura:attribute name="currentUser" type="User" default="{'sObjecttype': 'User'}" />
    <aura:handler name="init" value="{!this}" action="{!c.init}" />
    <lightning:card title="User Details in Lightning" iconName="action:user">
            {!v.currentUser.Name} <br/>
            {!v.currentUser.Title}<br/>
            {!v.currentUser.Profile.Name}<br/>
        </lightning:card>

   <c:lwcUserDetail />
</aura:application>	
