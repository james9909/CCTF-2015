// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, hf, cf, hk

public final class ce
    implements ch
{

    private final cf qg;

    public ce(cf cf1)
    {
        qg = cf1;
    }

    public void a(hk hk, Map map)
    {
        String s = (String)map.get("name");
        if (s == null)
        {
            hf.X("App event with no name parameter.");
            return;
        } else
        {
            qg.onAppEvent(s, (String)map.get("info"));
            return;
        }
    }
}
