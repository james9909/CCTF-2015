// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.s;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ch, gc, ah, gz, 
//            hf, hk

class vs
    implements ch
{

    final ah vq;
    final vs vr;
    final gz vs;
    final gc vt;

    public void a(hk hk, Map map)
    {
        vq.b("/nativeAdPreProcess", vr.vv);
        try
        {
            String s1 = (String)map.get("success");
            if (!TextUtils.isEmpty(s1))
            {
                vs.b((new JSONObject(s1)).getJSONArray("ads").getJSONObject(0));
                return;
            }
        }
        catch (JSONException jsonexception)
        {
            hf.b("Malformed native JSON response.", jsonexception);
        }
        vt.u(0);
        s.a(vt.cY(), "Unable to set the ad state error!");
        vs.b(null);
    }

    l.s(gc gc1, ah ah1, l.s s1, gz gz1)
    {
        vt = gc1;
        vq = ah1;
        vr = s1;
        vs = gz1;
        super();
    }
}
