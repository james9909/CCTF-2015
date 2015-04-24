// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl;

import org.json.JSONObject;

public class ServiceEvent
{

    private static final String gEventPropertyName = "event";
    private static final String gParamsPropertyName = "params";
    private String event;
    private JSONObject params;

    public ServiceEvent(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        params = jsonobject.getJSONObject("params");
        event = jsonobject.getString("event");
    }

    public String getEvent()
    {
        return event;
    }

    public JSONObject getParams()
    {
        return params;
    }
}
