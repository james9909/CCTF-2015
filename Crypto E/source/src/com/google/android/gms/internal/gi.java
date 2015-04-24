// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            hf, ab, gy, fz

public final class gi
{

    private int mOrientation;
    private String pU;
    private String vL;
    private String vM;
    private List vN;
    private String vO;
    private String vP;
    private List vQ;
    private long vR;
    private boolean vS;
    private final long vT = -1L;
    private long vU;
    private boolean vV;
    private boolean vW;
    private boolean vX;
    private boolean vY;
    private List vp;

    public gi()
    {
        vR = -1L;
        vS = false;
        vU = -1L;
        mOrientation = -1;
        vV = false;
        vW = false;
        vX = false;
        vY = true;
    }

    static String a(Map map, String s1)
    {
        List list = (List)map.get(s1);
        if (list != null && !list.isEmpty())
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    static long b(Map map, String s1)
    {
        String s2;
        List list = (List)map.get(s1);
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        s2 = (String)list.get(0);
        float f = Float.parseFloat(s2);
        return (long)(f * 1000F);
        NumberFormatException numberformatexception;
        numberformatexception;
        hf.X((new StringBuilder()).append("Could not parse float from ").append(s1).append(" header: ").append(s2).toString());
        return -1L;
    }

    static List c(Map map, String s1)
    {
        List list = (List)map.get(s1);
        if (list != null && !list.isEmpty())
        {
            String s2 = (String)list.get(0);
            if (s2 != null)
            {
                return Arrays.asList(s2.trim().split("\\s+"));
            }
        }
        return null;
    }

    private boolean d(Map map, String s1)
    {
        List list = (List)map.get(s1);
        return list != null && !list.isEmpty() && Boolean.valueOf((String)list.get(0)).booleanValue();
    }

    private void h(Map map)
    {
        vL = a(map, "X-Afma-Ad-Size");
    }

    private void i(Map map)
    {
        List list = c(map, "X-Afma-Click-Tracking-Urls");
        if (list != null)
        {
            vN = list;
        }
    }

    private void j(Map map)
    {
        List list = (List)map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty())
        {
            vO = (String)list.get(0);
        }
    }

    private void k(Map map)
    {
        List list = c(map, "X-Afma-Tracking-Urls");
        if (list != null)
        {
            vQ = list;
        }
    }

    private void l(Map map)
    {
        long l1 = b(map, "X-Afma-Interstitial-Timeout");
        if (l1 != -1L)
        {
            vR = l1;
        }
    }

    private void m(Map map)
    {
        vP = a(map, "X-Afma-ActiveView");
    }

    private void n(Map map)
    {
        vW = vW | d(map, "X-Afma-Native");
    }

    private void o(Map map)
    {
        vV = vV | d(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void p(Map map)
    {
        vS = vS | d(map, "X-Afma-Mediation");
    }

    private void q(Map map)
    {
        List list = c(map, "X-Afma-Manual-Tracking-Urls");
        if (list != null)
        {
            vp = list;
        }
    }

    private void r(Map map)
    {
        long l1 = b(map, "X-Afma-Refresh-Rate");
        if (l1 != -1L)
        {
            vU = l1;
        }
    }

    private void s(Map map)
    {
        List list = (List)map.get("X-Afma-Orientation");
        if (list != null && !list.isEmpty())
        {
            String s1 = (String)list.get(0);
            if ("portrait".equalsIgnoreCase(s1))
            {
                mOrientation = ab.aL().dG();
            } else
            if ("landscape".equalsIgnoreCase(s1))
            {
                mOrientation = ab.aL().dF();
                return;
            }
        }
    }

    private void t(Map map)
    {
        List list = (List)map.get("X-Afma-Use-HTTPS");
        if (list != null && !list.isEmpty())
        {
            vX = Boolean.valueOf((String)list.get(0)).booleanValue();
        }
    }

    private void u(Map map)
    {
        List list = (List)map.get("X-Afma-Content-Url-Opted-Out");
        if (list != null && !list.isEmpty())
        {
            vY = Boolean.valueOf((String)list.get(0)).booleanValue();
        }
    }

    public void a(String s1, Map map, String s2)
    {
        vM = s1;
        pU = s2;
        g(map);
    }

    public void g(Map map)
    {
        h(map);
        i(map);
        j(map);
        k(map);
        l(map);
        p(map);
        q(map);
        r(map);
        s(map);
        m(map);
        t(map);
        o(map);
        n(map);
        u(map);
    }

    public fz h(long l1)
    {
        return new fz(vM, pU, vN, vQ, vR, vS, -1L, vp, vU, mOrientation, vL, l1, vO, vP, vV, vW, vX, vY, false);
    }
}
