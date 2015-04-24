// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            bj, bh

public final class bf
{

    public JSONArray a;

    public bf(bj bj1)
    {
        a = new JSONArray();
        Iterator iterator = bj1.c().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = ((bh)iterator.next()).a();
            if (obj != null)
            {
                a.put(obj);
            }
        } while (true);
    }
}
