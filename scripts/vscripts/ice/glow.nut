//-----------------------------------------------------------------------
//------------------- Copyright (c) samisalreadytaken -------------------
//                       github.com/samisalreadytaken
//- v1.0.11 -------------------------------------------------------------
//
// ::Glow.Set( hPlayer, color, nType, flDistance )
// ::Glow.Disable( hPlayer )
//
if (!("Glow"in::getroottable()) || typeof::Glow!="table" || !("Set"in::Glow)) {
    local AddEvent = "DoEntFireByInstanceHandle" in getroottable() ? DoEntFireByInstanceHandle:EntFireByHandle, Create = ::CreateProp, _l=[];
    ::Glow <- {
        m_list = _l,
        Get=null,
        Set=null,
        Disable=null
    }

    function Glow::Get(S):(_l) {
        if (!S || !S.IsValid() || S.GetModelName() == "")
            return;
        for (local i=_l.len(); i--;) {
            local h = _l[i];
            if (h) {
                if (h.GetOwner() == S)
                    return h
            } else
                _l.remove(i)
        }
    }
    local Get = ::Glow.Get;

    function Glow::Set(S, C, T, D):(_l, AddEvent, Create, Get) {
        local p = Get(S);
        if (!p) {
            foreach (v in _l) 
                if (v && !v.GetOwner()) {
                    p = v;
                    break
                };
            if (p)
                p.SetModel(S.GetModelName());
            else {
                p = Create("prop_dynamic_glow", S.GetOrigin(), S.GetModelName(), 0);
                _l.insert(_l.len(), p.weakref())
            };
            p.__KeyValueFromInt("rendermode", 6);
            p.__KeyValueFromInt("renderamt", 0);
            AddEvent(p, "SetParent", "!activator", 0.0, S, null);
            p.SetOwner(S);
            p.__KeyValueFromString("classname", "soundent")
        };
        local o=typeof C;
        if(o == "string")
            p.__KeyValueFromString("glowcolor", C);
        else if (o=="Vector")
            p.__KeyValueFromVector("glowcolor", C);
        else
            throw"parameter 2 has an invalid type '"+o+"' ; expected 'string|Vector'";;
        p.__KeyValueFromInt("glowstyle", T);
        p.__KeyValueFromFloat("glowdist", D);
        p.__KeyValueFromInt("glowenabled", 1);
        p.__KeyValueFromInt("effects", 18433);
        return p
    }

    function Glow::Disable(S):(AddEvent,Get) {
        local p=Get(S);
        if (p) {
            p.__KeyValueFromInt("effects", 18465);
            AddEvent(p, "SetParent", "", 0.0, null, null);
            AddEvent(p, "SetGlowDisabled", "", 0.0, null, null);
            p.SetOwner(null)
        };
        return p
    }
}