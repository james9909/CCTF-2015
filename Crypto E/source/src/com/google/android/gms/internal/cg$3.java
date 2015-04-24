// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, cg, l, hf, 
//            hk, k, hd, hg

static final class 
    implements ch
{

    public void a(hk hk1, Map map)
    {
        String s;
        Uri uri;
        s = (String)map.get("u");
        if (s == null)
        {
            hf.X("URL missing from click GMSG.");
            return;
        }
        uri = Uri.parse(s);
        k k1 = hk1.dP();
        if (k1 == null) goto _L2; else goto _L1
_L1:
        if (!k1.b(uri)) goto _L2; else goto _L3
_L3:
        Uri uri2 = k1.a(uri, hk1.getContext());
        Uri uri1 = uri2;
_L5:
        String s1 = uri1.toString();
        (new hd(hk1.getContext(), hk1.dQ().xP, s1)).start();
        return;
        l l1;
        l1;
        hf.X((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
_L2:
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
    }

    ()
    {
    }
}
