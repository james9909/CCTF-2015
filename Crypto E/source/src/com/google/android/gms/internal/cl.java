// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, hf, dn, dm, 
//            dp, do, hk

public class cl
    implements ch
{

    static final Map qs;
    private final dn qr;

    public cl(dn dn1)
    {
        qr = dn1;
    }

    public void a(hk hk, Map map)
    {
        String s = (String)map.get("a");
        switch (((Integer)qs.get(s)).intValue())
        {
        case 2: // '\002'
        default:
            hf.V("Unknown MRAID command called.");
            return;

        case 1: // '\001'
            qr.f(map);
            return;

        case 4: // '\004'
            (new dm(hk, map)).execute();
            return;

        case 3: // '\003'
            (new dp(hk, map)).execute();
            return;

        case 5: // '\005'
            (new do(hk, map)).execute();
            // fall through

        case 6: // '\006'
            qr.k(true);
            break;
        }
    }

    static 
    {
        qs = new HashMap();
        qs.put("resize", Integer.valueOf(1));
        qs.put("playVideo", Integer.valueOf(2));
        qs.put("storePicture", Integer.valueOf(3));
        qs.put("createCalendarEvent", Integer.valueOf(4));
        qs.put("setOrientationProperties", Integer.valueOf(5));
        qs.put("closeResizedAd", Integer.valueOf(6));
    }
}
