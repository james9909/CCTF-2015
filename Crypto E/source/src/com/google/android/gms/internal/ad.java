// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hg

public final class ad
{

    private final String mH;
    private final JSONObject mI;
    private final String mJ;
    private final String mK;

    public ad(String s, hg hg1, String s1, JSONObject jsonobject)
    {
        mK = hg1.xP;
        mI = jsonobject;
        mJ = s;
        mH = s1;
    }

    public String aM()
    {
        return mH;
    }

    public String aN()
    {
        return mK;
    }

    public JSONObject aO()
    {
        return mI;
    }

    public String aP()
    {
        return mJ;
    }
}
