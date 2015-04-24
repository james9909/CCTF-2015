// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, ab, gy, hf, 
//            v, hk, hl, ci, 
//            dv, dn

public final class cm
    implements ch
{

    private final dn qr;
    private final ci qt;
    private final v qu;

    public cm(ci ci1, v v1, dn dn)
    {
        qt = ci1;
        qu = v1;
        qr = dn;
    }

    private static boolean b(Map map)
    {
        return "1".equals(map.get("custom_close"));
    }

    private static int c(Map map)
    {
        String s = (String)map.get("o");
        if (s != null)
        {
            if ("p".equalsIgnoreCase(s))
            {
                return ab.aL().dG();
            }
            if ("l".equalsIgnoreCase(s))
            {
                return ab.aL().dF();
            }
            if ("c".equalsIgnoreCase(s))
            {
                return ab.aL().dH();
            }
        }
        return -1;
    }

    public void a(hk hk1, Map map)
    {
        String s = (String)map.get("a");
        if (s == null)
        {
            hf.X("Action missing from an open GMSG.");
        } else
        {
            if (qu != null && !qu.az())
            {
                qu.d((String)map.get("u"));
                return;
            }
            hl hl1 = hk1.dN();
            if ("expand".equalsIgnoreCase(s))
            {
                if (hk1.dR())
                {
                    hf.X("Cannot expand WebView that is already expanded.");
                    return;
                } else
                {
                    hl1.a(b(map), c(map));
                    return;
                }
            }
            if ("webapp".equalsIgnoreCase(s))
            {
                String s3 = (String)map.get("u");
                if (s3 != null)
                {
                    hl1.a(b(map), c(map), s3);
                    return;
                } else
                {
                    hl1.a(b(map), c(map), (String)map.get("html"), (String)map.get("baseurl"));
                    return;
                }
            }
            if ("in_app_purchase".equalsIgnoreCase(s))
            {
                String s1 = (String)map.get("product_id");
                String s2 = (String)map.get("report_urls");
                if (qt != null)
                {
                    if (s2 != null && !s2.isEmpty())
                    {
                        String as[] = s2.split(" ");
                        qt.a(s1, new ArrayList(Arrays.asList(as)));
                        return;
                    } else
                    {
                        qt.a(s1, new ArrayList());
                        return;
                    }
                }
            } else
            {
                hl1.a(new dv((String)map.get("i"), (String)map.get("u"), (String)map.get("m"), (String)map.get("p"), (String)map.get("c"), (String)map.get("f"), (String)map.get("e")));
                return;
            }
        }
    }
}
