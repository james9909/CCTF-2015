// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ah, hf, u

public class bz
{
    public static interface a
    {

        public abstract void a(bz bz1);
    }


    private u qd;
    private ah qe;
    private JSONObject qf;

    public bz(u u1, ah ah1, JSONObject jsonobject)
    {
        qd = u1;
        qe = ah1;
        qf = jsonobject;
    }

    public void b(String s, int i)
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("asset", i);
            jsonobject.put("template", s);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("ad", qf);
            jsonobject1.put("click", jsonobject);
            qe.a("google.afma.nativeAds.handleClick", jsonobject1);
            return;
        }
        catch (JSONException jsonexception)
        {
            hf.b("Unable to create click JSON.", jsonexception);
        }
    }

    public void recordImpression()
    {
        qd.am();
    }
}
