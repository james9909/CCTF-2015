// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            hz, rq, is, ij

public class ir
{

    private static hz a(String s, no.c c)
    {
        ih ih = (new ih.a(s)).G(true).aw(s).av("blob").fP();
        return new hz(rq.f(c), ih);
    }

    public static ij a(Action action, String s, long l, String s1, int i)
    {
        Bundle bundle = new Bundle();
        bundle.putAll(action.fR());
        Bundle bundle1 = bundle.getBundle("object");
        Uri uri;
        String s2;
        String s3;
        android.content.Intent intent;
        hv.a a1;
        if (bundle1.containsKey("id"))
        {
            uri = Uri.parse(bundle1.getString("id"));
        } else
        {
            uri = null;
        }
        s2 = bundle1.getString("name");
        s3 = bundle1.getString("type");
        intent = is.a(s1, Uri.parse(bundle1.getString("url")));
        a1 = ij.a(intent, s2, uri, s3, null);
        a1.a(a(".private:action", h(action.fR())));
        a1.a(ay(s));
        return new ij(ij.a(s1, intent), l, i, null, a1.fM());
    }

    private static hz ay(String s)
    {
        return new hz(s, (new ih.a(".private:actionId")).G(true).aw(".private:actionId").av("blob").fP());
    }

    static no.c h(Bundle bundle)
    {
        no.c c = new no.c();
        ArrayList arraylist = new ArrayList();
        Iterator iterator = bundle.keySet().iterator();
        while (iterator.hasNext()) 
        {
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            no.b b = new no.b();
            b.name = s;
            b.amO = new no.d();
            if (obj instanceof String)
            {
                b.amO.UZ = (String)obj;
            } else
            if (obj instanceof Bundle)
            {
                b.amO.amT = h((Bundle)obj);
            } else
            {
                Log.e("AppDataSearchClient", (new StringBuilder()).append("Unsupported value: ").append(obj).toString());
            }
            arraylist.add(b);
        }
        if (bundle.containsKey("type"))
        {
            c.type = bundle.getString("type");
        }
        c.amP = (no.b[])arraylist.toArray(new no.b[arraylist.size()]);
        return c;
    }
}
