// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ei, eg

public class eh extends Handler
{

    private final eg tm;

    public eh(Context context)
    {
        this(((eg) (new ei(context))));
    }

    public eh(eg eg1)
    {
        tm = eg1;
    }

    private void b(JSONObject jsonobject)
    {
        try
        {
            tm.a(jsonobject.getString("request_id"), jsonobject.getString("base_url"), jsonobject.getString("html"));
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void handleMessage(Message message)
    {
        Bundle bundle = message.getData();
        if (bundle == null)
        {
            return;
        }
        try
        {
            JSONObject jsonobject = new JSONObject(bundle.getString("data"));
            if ("fetch_html".equals(jsonobject.getString("message_name")))
            {
                b(jsonobject);
                return;
            }
        }
        catch (Exception exception) { }
        return;
    }
}
