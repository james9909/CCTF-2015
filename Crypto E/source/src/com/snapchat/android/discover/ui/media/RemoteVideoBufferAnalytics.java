// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoProperties

public class RemoteVideoBufferAnalytics
    implements EventListener
{

    private final List a = new ArrayList();
    private final boolean b[] = new boolean[100];
    private boolean c;
    private int d;
    private int e;
    private long f;

    public RemoteVideoBufferAnalytics()
    {
        c();
    }

    private long a(boolean aflag[], int i, int j)
    {
        if (i < 0)
        {
            return 0L;
        }
        int k = aflag.length;
        int l = 0;
        int i1 = 0;
        while (l < k) 
        {
            int j1;
            if (aflag[l])
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            i1 += j1;
            l++;
        }
        return (long)(((double)i1 / 100D) * (double)(i / 8) * (double)(j / 1000));
    }

    private void a(int i)
    {
        if (i >= d)
        {
            for (int j = d; j < i; j++)
            {
                b[j] = true;
            }

            d = i;
        }
    }

    private void a(int i, int j)
    {
        d = (int)((100D * (double)i) / (double)j);
    }

    private void d()
    {
        c = false;
        f = 0L;
        e = 0;
        a.clear();
    }

    private void e()
    {
        d = 0;
        Arrays.fill(b, false);
    }

    public long a()
    {
        return f + b();
    }

    public void a(VideoProperties videoproperties)
    {
        a.add(videoproperties);
    }

    protected void a(Object obj)
    {
        if (obj != null)
        {
            e = 1 + e;
        }
    }

    public long b()
    {
        if (a.isEmpty() || e >= a.size())
        {
            return 0L;
        } else
        {
            VideoProperties videoproperties = (VideoProperties)a.get(e);
            int i = videoproperties.c().intValue();
            int j = videoproperties.d().intValue();
            return a(b, i, j);
        }
    }

    public void c()
    {
        e();
        d();
    }

    public void processEvent(Event event)
    {
        String s;
        byte byte0;
        s = event.getType();
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 5: default 60
    //                   -2125573496: 111
    //                   -1402931637: 97
    //                   -1016663950: 139
    //                   -906224877: 125
    //                   1198989177: 153;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        byte0;
        JVM INSTR tableswitch 0 4: default 96
    //                   0 167
    //                   1 185
    //                   2 203
    //                   3 209
    //                   4 251;
           goto _L7 _L8 _L9 _L10 _L11 _L12
_L7:
        return;
_L3:
        if (s.equals("completed"))
        {
            byte0 = 0;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.equals("bufferedUpdate"))
        {
            byte0 = 1;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (s.equals("seekTo"))
        {
            byte0 = 2;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (s.equals("didSeekTo"))
        {
            byte0 = 3;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (s.equals("willChangeVideo"))
        {
            byte0 = 4;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        f = f + b();
        e();
        return;
_L9:
        if (!c)
        {
            a(event.getIntegerProperty("percentComplete"));
            return;
        }
          goto _L7
_L10:
        c = true;
        return;
_L11:
        c = false;
        int i = ((VideoProperties)a.get(e)).d().intValue();
        a(event.getIntegerProperty("seekPosition"), i);
        return;
_L12:
        a(event.properties.get("currentVideo"));
        return;
        if (true) goto _L1; else goto _L13
_L13:
    }
}
