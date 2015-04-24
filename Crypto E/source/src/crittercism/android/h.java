// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            dg

public final class h
{

    public boolean a;
    public boolean b;
    public boolean c;
    public int d;

    public h(Context context)
    {
        a = false;
        b = false;
        c = false;
        d = 10;
        if (a(context).exists())
        {
            c = true;
        }
    }

    public h(JSONObject jsonobject)
    {
        a = false;
        b = false;
        c = false;
        d = 10;
        if (!jsonobject.has("net"))
        {
            return;
        }
        JSONObject jsonobject1;
        try
        {
            jsonobject1 = jsonobject.getJSONObject("net");
        }
        catch (JSONException jsonexception)
        {
            return;
        }
        a = jsonobject1.optBoolean("enabled", false);
        b = jsonobject1.optBoolean("persist", false);
        c = jsonobject1.optBoolean("kill", false);
        d = jsonobject1.optInt("interval", 10);
    }

    public static File a(Context context)
    {
        return new File((new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("/.crittercism.apm.disabled.").toString());
    }

    public static void b(Context context)
    {
        try
        {
            a(context).createNewFile();
            return;
        }
        catch (IOException ioexception)
        {
            dg.b("Crittercism", (new StringBuilder("Unable to kill APM: ")).append(ioexception.getMessage()).toString());
        }
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof h))
            {
                return false;
            }
            h h1 = (h)obj;
            if (c != h1.c)
            {
                return false;
            }
            if (a != h1.a)
            {
                return false;
            }
            if (b != h1.b)
            {
                return false;
            }
            if (d != h1.d)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        char c1 = '\u04CF';
        char c2;
        int i;
        char c3;
        int j;
        if (c)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        i = 31 * (c2 + 31);
        if (a)
        {
            c3 = c1;
        } else
        {
            c3 = '\u04D5';
        }
        j = 31 * (c3 + i);
        if (!b)
        {
            c1 = '\u04D5';
        }
        return 31 * (j + c1) + d;
    }

    public final String toString()
    {
        return (new StringBuilder("OptmzConfiguration [\nisSendTaskEnabled=")).append(a).append("\n, shouldPersist=").append(b).append("\n, isKilled=").append(c).append("\n, statisticsSendInterval=").append(d).append("]").toString();
    }
}
