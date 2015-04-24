// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, cg, hf, hd, 
//            hk, hg

static final class 
    implements ch
{

    public void a(hk hk1, Map map)
    {
        String s = (String)map.get("u");
        if (s == null)
        {
            hf.X("URL missing from httpTrack GMSG.");
            return;
        } else
        {
            (new hd(hk1.getContext(), hk1.dQ().xP, s)).start();
            return;
        }
    }

    ()
    {
    }
}
