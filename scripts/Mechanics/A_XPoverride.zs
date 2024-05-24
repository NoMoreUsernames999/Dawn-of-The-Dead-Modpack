#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.event.LivingExperienceDropEvent;

print("XP fix starting!"); //Mark beggining of script. 

//Prevent XP from being dropped by all entities. 
events.onLivingExperienceDrop(function(event as crafttweaker.event.LivingExperienceDropEvent){
    event.cancel();
});

print("XP fix finished!"); //Mark end of script. 
