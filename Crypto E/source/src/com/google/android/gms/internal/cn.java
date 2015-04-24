// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ch, he, hf, hk, 
//            dw, ea

public final class cn
    implements ch
{

    public cn()
    {
    }

    private static int a(DisplayMetrics displaymetrics, Map map, String s, int i)
    {
        String s1 = (String)map.get(s);
        if (s1 != null)
        {
            int j;
            try
            {
                j = he.a(displaymetrics, Integer.parseInt(s1));
            }
            catch (NumberFormatException numberformatexception)
            {
                hf.X((new StringBuilder()).append("Could not parse ").append(s).append(" in a video GMSG: ").append(s1).toString());
                return i;
            }
            i = j;
        }
        return i;
    }

    public void a(hk hk1, Map map)
    {
        String s = (String)map.get("action");
        if (s == null)
        {
            hf.X("Action missing from video GMSG.");
            return;
        }
        dw dw1 = hk1.dM();
        if (dw1 == null)
        {
            hf.X("Could not get ad overlay for a video GMSG.");
            return;
        }
        boolean flag = "new".equalsIgnoreCase(s);
        boolean flag1 = "position".equalsIgnoreCase(s);
        if (flag || flag1)
        {
            DisplayMetrics displaymetrics = hk1.getContext().getResources().getDisplayMetrics();
            int i = a(displaymetrics, map, "x", 0);
            int j = a(displaymetrics, map, "y", 0);
            int k = a(displaymetrics, map, "w", -1);
            int l = a(displaymetrics, map, "h", -1);
            if (flag && dw1.cl() == null)
            {
                dw1.d(i, j, k, l);
                return;
            } else
            {
                dw1.c(i, j, k, l);
                return;
            }
        }
        ea ea1 = dw1.cl();
        if (ea1 == null)
        {
            ea.a(hk1, "no_video_view", null);
            return;
        }
        if ("click".equalsIgnoreCase(s))
        {
            DisplayMetrics displaymetrics1 = hk1.getContext().getResources().getDisplayMetrics();
            int i1 = a(displaymetrics1, map, "x", 0);
            int j1 = a(displaymetrics1, map, "y", 0);
            long l1 = SystemClock.uptimeMillis();
            MotionEvent motionevent = MotionEvent.obtain(l1, l1, 0, i1, j1, 0);
            ea1.b(motionevent);
            motionevent.recycle();
            return;
        }
        if ("controls".equalsIgnoreCase(s))
        {
            String s2 = (String)map.get("enabled");
            if (s2 == null)
            {
                hf.X("Enabled parameter missing from controls video GMSG.");
                return;
            } else
            {
                ea1.t(Boolean.parseBoolean(s2));
                return;
            }
        }
        if ("currentTime".equalsIgnoreCase(s))
        {
            String s1 = (String)map.get("time");
            if (s1 == null)
            {
                hf.X("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try
            {
                ea1.seekTo((int)(1000F * Float.parseFloat(s1)));
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                hf.X((new StringBuilder()).append("Could not parse time parameter from currentTime video GMSG: ").append(s1).toString());
            }
            return;
        }
        if ("hide".equalsIgnoreCase(s))
        {
            ea1.setVisibility(4);
            return;
        }
        if ("load".equalsIgnoreCase(s))
        {
            ea1.cy();
            return;
        }
        if ("pause".equalsIgnoreCase(s))
        {
            ea1.pause();
            return;
        }
        if ("play".equalsIgnoreCase(s))
        {
            ea1.play();
            return;
        }
        if ("show".equalsIgnoreCase(s))
        {
            ea1.setVisibility(0);
            return;
        }
        if ("src".equalsIgnoreCase(s))
        {
            ea1.G((String)map.get("src"));
            return;
        } else
        {
            hf.X((new StringBuilder()).append("Unknown video action: ").append(s).toString());
            return;
        }
    }
}
