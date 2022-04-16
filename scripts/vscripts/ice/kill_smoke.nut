event_smoke_detonate <- Entities.FindByName(null, "event_smoke_detonate");

function KillSmoke() {
	local smokeid = event_smoke_detonate.GetScriptScope().event_data.entityid;
	local currentEntity = null;
	while(currentEntity = Entities.FindByClassname(currentEntity, "smokegrenade_projectile"))
	{
		if (currentEntity.entindex() == smokeid) {
			EntFireByHandle(currentEntity, "Kill", "", 0, null, null);
		}
	}
} 