// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            au

public final class ce
{

    public Map a;

    public ce(au au1)
    {
        a = new HashMap();
        a.put("app_id", au1.a());
        a.put("hashed_device_id", au1.c());
        a.put("library_version", "4.5.4");
    }

    public final ce a(String s, String s1)
    {
        a.put(s, s1);
        return this;
    }

    public final ce a(String s, JSONArray jsonarray)
    {
        a.put(s, jsonarray);
        return this;
    }
}
