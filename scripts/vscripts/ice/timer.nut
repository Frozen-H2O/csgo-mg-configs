function StartTimer(time) {
    if (time > 0) {
        EntFireByHandle(self, "AddOutput", "message " + time, 0, self, null);
        EntFireByHandle(self, "Display", "", 0.02, self, null);
        EntFireByHandle(self, "RunScriptCode", "StartTimer(" + (time-1) + ")", 1, self, null);
    }
}