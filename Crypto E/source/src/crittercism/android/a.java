// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            au, dm, c, dg

public final class a
{

    JSONObject a;

    private a(au au1, List list)
    {
        a = new JSONObject();
        list.size();
        JSONArray jsonarray = new JSONArray();
        JSONArray jsonarray1 = new JSONArray();
        jsonarray1.put(au1.a());
        jsonarray1.put(au1.b());
        jsonarray1.put(au1.c());
        jsonarray1.put("4.5.4");
        jsonarray1.put(au1.d());
        jsonarray.put(jsonarray1);
        JSONArray jsonarray2 = new JSONArray();
        jsonarray2.put(dm.a.a());
        jsonarray2.put(au1.e());
        jsonarray2.put(au1.g());
        jsonarray2.put(au1.f());
        jsonarray2.put(au1.h());
        jsonarray.put(jsonarray2);
        JSONArray jsonarray3 = new JSONArray();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); jsonarray3.put(((c)iterator.next()).e())) { }
        jsonarray.put(jsonarray3);
        a.put("d", jsonarray);
    }

    public static a a(au au1, List list)
    {
        a a1;
        try
        {
            a1 = new a(au1, list);
        }
        catch (JSONException jsonexception)
        {
            dg.b("Crittercism", (new StringBuilder("Unable to generate APM request's JSON: ")).append(jsonexception).toString());
            return null;
        }
        return a1;
    }
}
