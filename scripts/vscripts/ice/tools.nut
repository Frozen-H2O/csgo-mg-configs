function ResizeTrigger(x, y, z) {
    EntFireByHandle(self,"AddOutput","solid 2",0,self,null);
    self.SetSize(Vector(-x/2,-y/2,-z/2),Vector(x/2,y/2,z/2));
}