// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            hf, ab, gy, hk

public class do
{

    private final hk mj;
    private final boolean rY;
    private final String rZ;

    public do(hk hk1, Map map)
    {
        mj = hk1;
        rZ = (String)map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange"))
        {
            rY = Boolean.parseBoolean((String)map.get("allowOrientationChange"));
            return;
        } else
        {
            rY = true;
            return;
        }
    }

    public void execute()
    {
        if (mj == null)
        {
            hf.X("AdWebView is null");
            return;
        }
        int i;
        if ("portrait".equalsIgnoreCase(rZ))
        {
            i = ab.aL().dG();
        } else
        if ("landscape".equalsIgnoreCase(rZ))
        {
            i = ab.aL().dF();
        } else
        if (rY)
        {
            i = -1;
        } else
        {
            i = ab.aL().dH();
        }
        mj.setRequestedOrientation(i);
    }
}
