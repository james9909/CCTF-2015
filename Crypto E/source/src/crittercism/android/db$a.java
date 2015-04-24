// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            cb, aw, db, dg

public static final class 
{

    public static db a(aw aw1)
    {
        String s = aw1.a(cb.j.a(), cb.j.b());
        if (s == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject(s);
_L5:
        JSONObject jsonobject1 = jsonobject;
_L3:
        boolean flag;
        boolean flag1;
        JSONException jsonexception;
        if (jsonobject1 != null)
        {
            flag = jsonobject1.optBoolean("optOutStatusSet", false);
        } else
        {
            flag = false;
        }
        if (flag)
        {
            flag1 = jsonobject1.optBoolean("optOutStatus", false);
        } else
        {
            flag1 = aw1.c(cb.m.a(), cb.m.b());
        }
        return new db(flag1);
        jsonexception;
        dg.b();
        jsonobject1 = null;
          goto _L3
_L2:
        jsonobject = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
