#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.event.LivingExperienceDropEvent;

//?Mark beginning of script. 
print("XP fix starting!"); 


//*Prevent XP from being dropped by all entities. 
events.onLivingExperienceDrop(function(event as crafttweaker.event.LivingExperienceDropEvent){
    event.cancel();
});


//?Mark end of script. 
print("XP fix finished!"); 
