// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import org.json.JSONArray;
import org.json.JSONObject;

class AddLiveMessage
{

    private final String a;
    private JSONObject b;

    AddLiveMessage(String s)
    {
        a = s;
        b = new JSONObject();
    }

    static AddLiveMessage a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        AddLiveMessage addlivemessage = new AddLiveMessage(jsonobject.getString("messageType"));
        if (jsonobject.has("meta"))
        {
            addlivemessage.b = jsonobject.getJSONObject("meta");
        }
        return addlivemessage;
    }

    String a()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("messageType", a);
        if (b.names().length() > 0)
        {
            jsonobject.put("meta", b);
        }
        return jsonobject.toString();
    }

    String b()
    {
        return a;
    }

    JSONObject c()
    {
        return b;
    }
}
