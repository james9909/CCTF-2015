// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package net.hockeyapp.android.utils:
//            VersionHelper

class a
    implements Comparator
{

    final VersionHelper a;

    public int a(JSONObject jsonobject, JSONObject jsonobject1)
    {
        int i;
        int j;
        try
        {
            i = jsonobject.getInt("version");
            j = jsonobject1.getInt("version");
        }
        catch (JSONException jsonexception)
        {
            return 0;
        }
        catch (NullPointerException nullpointerexception)
        {
            return 0;
        }
        if (i <= j);
        return 0;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((JSONObject)obj, (JSONObject)obj1);
    }

    (VersionHelper versionhelper)
    {
        a = versionhelper;
        super();
    }
}
