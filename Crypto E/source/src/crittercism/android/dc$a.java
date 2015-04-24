// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            aw, dc, dg

public static final class 
{

    public static dc a(aw aw1, String s, String s1)
    {
        String s2 = aw1.a(s, s1);
        if (s2 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject(s2);
_L3:
        JSONObject jsonobject1 = jsonobject;
_L4:
        JSONException jsonexception;
        if (jsonobject1 != null)
        {
            return new dc(jsonobject1);
        } else
        {
            return new dc();
        }
_L2:
        jsonobject = null;
          goto _L3
        jsonexception;
        dg.b();
        jsonobject1 = null;
          goto _L4
    }
}
