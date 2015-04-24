// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.text.TextUtils;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemRemoteVideoAdapter

class a
    implements EventListener
{

    final DSnapItemRemoteVideoAdapter a;

    public void processEvent(Event event)
    {
        String s;
        byte byte0;
        if (TextUtils.equals(event.getType(), "progress"))
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = DSnapItemRemoteVideoAdapter.c(a);
            aobj1[1] = event.toString();
            Timber.a("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", aobj1);
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = DSnapItemRemoteVideoAdapter.c(a);
            aobj[1] = event.toString();
            Timber.c("DSnapItemRemoteVideoAdapter", "%s got BrightCove event: %s", aobj);
        }
        s = event.getType();
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 5: default 108
    //                   -1402931637: 245
    //                   -490757274: 215
    //                   96784904: 230
    //                   189811114: 200
    //                   1656958035: 185;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        byte0;
        JVM INSTR tableswitch 0 4: default 144
    //                   0 260
    //                   1 298
    //                   2 298
    //                   3 298
    //                   4 344;
           goto _L7 _L8 _L9 _L9 _L9 _L10
_L7:
        DSnapItemRemoteVideoAdapter.g(a);
        return;
_L6:
        if (s.equals("didPlay"))
        {
            byte0 = 0;
        }
          goto _L1
_L5:
        if (s.equals("sourceNotFound"))
        {
            byte0 = 1;
        }
          goto _L1
_L3:
        if (s.equals("sourceNotPlayable"))
        {
            byte0 = 2;
        }
          goto _L1
_L4:
        if (s.equals("error"))
        {
            byte0 = 3;
        }
          goto _L1
_L2:
        if (s.equals("completed"))
        {
            byte0 = 4;
        }
          goto _L1
_L8:
        DSnapItemRemoteVideoAdapter.a(a, false);
        DSnapItemRemoteVideoAdapter.d(a);
        DSnapItemRemoteVideoAdapter.f(a).a(DSnapItemRemoteVideoAdapter.e(a), false, true);
          goto _L7
_L9:
        DSnapItemRemoteVideoAdapter.a(a, false);
        DSnapItemRemoteVideoAdapter.d(a);
        DSnapItemRemoteVideoAdapter.f(a).a(DSnapItemRemoteVideoAdapter.e(a), false, false);
        DSnapItemRemoteVideoAdapter.a(a, event);
          goto _L7
_L10:
        DSnapItemRemoteVideoAdapter.d(a);
          goto _L7
    }

    ytics(DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        a = dsnapitemremotevideoadapter;
        super();
    }
}
