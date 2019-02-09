({
    init : function(component, event, helper) {
        var cuUserId = $A.get("$SObjectType.CurrentUser.Id");
        var action = component.get("c.getUserInfo");
        action.setParams({
            userId : cuUserId,
        });

        action.setCallback( this, function(response){
            if(response.getState() === 'SUCCESS') {
               component.set("v.currentUser", response.getReturnValue());
            }
            console.log('--ss--ss--');
        });
        $A.enqueueAction(action);
    }
})
