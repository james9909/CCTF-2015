// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.OutputStream;
import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            bg, dm, bu, dg

public final class bt extends bg
{

    public static final bt a = new bt("session_start");
    private String b;
    private String c;
    private String d;

    public bt(String s)
    {
        this(s, dm.a.a());
    }

    private bt(String s, String s1)
    {
        d = bu.a.a();
        if (s.length() > 140)
        {
            s = s.substring(0, 140);
        }
        b = s;
        c = s1;
    }

    public final void a(OutputStream outputstream)
    {
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(b);
        jsonarray.put(c);
        String s = jsonarray.toString();
        (new StringBuilder("BREADCRUMB WRITING ")).append(s);
        dg.b();
        outputstream.write(s.getBytes());
    }

    public final String b()
    {
        return d;
    }

}
