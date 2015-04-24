// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bl, bm

public final class bk
    implements bl
{

    private Map a;

    public bk()
    {
        a = new HashMap();
    }

    public final bk a(bm bm1)
    {
        if (bm1.b() != null)
        {
            a.put(bm1.a(), bm1.b());
        }
        return this;
    }

    public final JSONObject a()
    {
        return new JSONObject(a);
    }

    public final Object b()
    {
        return a();
    }
}
