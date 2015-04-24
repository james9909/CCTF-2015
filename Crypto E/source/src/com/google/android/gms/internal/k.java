// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;

// Referenced classes of package com.google.android.gms.internal:
//            l, g

public class k
{

    private String kU;
    private String kV;
    private String kW;
    private String kX[] = {
        ".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"
    };
    private g kY;

    public k(g g1)
    {
        kU = "googleads.g.doubleclick.net";
        kV = "/pagead/ads";
        kW = "ad.doubleclick.net";
        kY = g1;
    }

    private Uri a(Uri uri, Context context, String s, boolean flag)
    {
        boolean flag1;
        try
        {
            flag1 = a(uri);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            throw new l("Provided Uri is not in a valid state");
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        if (uri.toString().contains("dc_ms="))
        {
            throw new l("Parameter already exists: dc_ms");
        }
        break MISSING_BLOCK_LABEL_65;
        if (uri.getQueryParameter("ms") != null)
        {
            throw new l("Query parameter already exists: ms");
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        String s1 = kY.a(context, s);
_L1:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        return b(uri, "dc_ms", s1);
        s1 = kY.a(context);
          goto _L1
        Uri uri1 = a(uri, "ms", s1);
        return uri1;
    }

    private Uri a(Uri uri, String s, String s1)
    {
        String s2 = uri.toString();
        int i = s2.indexOf("&adurl");
        if (i == -1)
        {
            i = s2.indexOf("?adurl");
        }
        if (i != -1)
        {
            return Uri.parse((new StringBuilder(s2.substring(0, i + 1))).append(s).append("=").append(s1).append("&").append(s2.substring(i + 1)).toString());
        } else
        {
            return uri.buildUpon().appendQueryParameter(s, s1).build();
        }
    }

    private Uri b(Uri uri, String s, String s1)
    {
        String s2 = uri.toString();
        int i = s2.indexOf(";adurl");
        if (i != -1)
        {
            return Uri.parse((new StringBuilder(s2.substring(0, i + 1))).append(s).append("=").append(s1).append(";").append(s2.substring(i + 1)).toString());
        } else
        {
            String s3 = uri.getEncodedPath();
            int j = s2.indexOf(s3);
            return Uri.parse((new StringBuilder(s2.substring(0, j + s3.length()))).append(";").append(s).append("=").append(s1).append(";").append(s2.substring(j + s3.length())).toString());
        }
    }

    public g C()
    {
        return kY;
    }

    public Uri a(Uri uri, Context context)
    {
        Uri uri1;
        try
        {
            uri1 = a(uri, context, uri.getQueryParameter("ai"), true);
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            throw new l("Provided Uri is not in a valid state");
        }
        return uri1;
    }

    public void a(MotionEvent motionevent)
    {
        kY.a(motionevent);
    }

    public boolean a(Uri uri)
    {
        if (uri == null)
        {
            throw new NullPointerException();
        }
        boolean flag;
        try
        {
            flag = uri.getHost().equals(kW);
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        return flag;
    }

    public boolean b(Uri uri)
    {
        if (uri == null)
        {
            throw new NullPointerException();
        }
        String s;
        String as[];
        int i;
        int j;
        boolean flag;
        boolean flag1;
        try
        {
            s = uri.getHost();
            as = kX;
            i = as.length;
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        j = 0;
        flag = false;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        flag1 = s.endsWith(as[j]);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        flag = true;
        return flag;
        for (j++; false;)
        {
        }

        break MISSING_BLOCK_LABEL_31;
    }
}
