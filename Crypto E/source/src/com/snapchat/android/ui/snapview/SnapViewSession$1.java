// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;

import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.screenshotdetection.SnapScreenshotWatcher;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSession, SnapViewSessionListener, SnapViewSessionStopReason

class a
    implements com.snapchat.android.rendering.SnapRendererListener
{

    final SnapViewSession a;

    public void a()
    {
        boolean flag = true;
        Object obj = SnapViewSession.a(a);
        obj;
        JVM INSTR monitorenter ;
        if (!a.f()) goto _L2; else goto _L1
_L1:
        SnapViewSession.c(a).setVisibility(0);
        SnapViewSession.d(a).c();
        SnapViewSession.e(a).c(true);
        SnapViewSession.f(a).a(a);
        SnapViewSession.g(a).a(SnapViewSession.e(a).l(), SnapViewSession.e(a).d());
        if (!SnapViewSession.h(a).c()) goto _L4; else goto _L3
_L3:
        SnapViewEventAnalytics snapvieweventanalytics1 = SnapViewSession.h(a);
        if (!SnapViewSession.e(a).am()) goto _L6; else goto _L5
_L5:
        com.snapchat.android.analytics.tics.SnapViewEventSnapType snapvieweventsnaptype1 = com.snapchat.android.analytics.tics.SnapViewEventSnapType.VIDEO;
_L9:
        snapvieweventanalytics1.a(snapvieweventsnaptype1);
_L12:
        Exception exception;
        SnapViewEventAnalytics snapvieweventanalytics;
        com.snapchat.android.analytics.tics.SnapViewEventSnapType snapvieweventsnaptype;
        com.snapchat.android.analytics.tics.SnapViewEventSourceType snapvieweventsourcetype;
        boolean flag1;
        if (!SnapViewSession.i(a) && !SnapViewSession.e(a).w())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_368;
        }
        if (SnapViewSession.e(a).h())
        {
            break MISSING_BLOCK_LABEL_368;
        }
_L15:
        if (!flag1) goto _L2; else goto _L7
_L7:
        if (SnapViewSession.k(a).a(SnapViewSession.e(a), SnapViewSession.j(a)))
        {
            AnalyticsEvents.a(SnapViewSession.e(a), SnapViewSession.l(a));
        }
        if (!flag) goto _L2; else goto _L8
_L8:
        SnapViewSession.a(a, SnapViewSession.m(a), SnapViewSession.n(a), SnapViewSession.j(a));
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
_L6:
        snapvieweventsnaptype1 = com.snapchat.android.analytics.tics.SnapViewEventSnapType.IMAGE;
          goto _L9
_L4:
        snapvieweventanalytics = SnapViewSession.h(a);
        if (!SnapViewSession.e(a).am()) goto _L11; else goto _L10
_L10:
        snapvieweventsnaptype = com.snapchat.android.analytics.tics.SnapViewEventSnapType.VIDEO;
_L13:
        if (!a.d())
        {
            break MISSING_BLOCK_LABEL_354;
        }
        snapvieweventsourcetype = com.snapchat.android.analytics.tics.SnapViewEventSourceType.STORY;
_L14:
        snapvieweventanalytics.a(snapvieweventsnaptype, snapvieweventsourcetype);
          goto _L12
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L11:
        snapvieweventsnaptype = com.snapchat.android.analytics.tics.SnapViewEventSnapType.IMAGE;
          goto _L13
        snapvieweventsourcetype = com.snapchat.android.analytics.tics.SnapViewEventSourceType.FEED;
          goto _L14
        flag = false;
          goto _L15
    }

    public void a(int i, int j, int k)
    {
        synchronized (SnapViewSession.a(a))
        {
            if (a.f())
            {
                SnapViewSession.a(a, i);
                SnapViewSession.b(a, j);
                SnapViewSession.c(a, k);
                SnapViewSession.a(a, true);
                if (SnapViewSession.b(a))
                {
                    a.g();
                }
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(com.snapchat.android.rendering.ErrorCode errorcode)
    {
        if (errorcode == com.snapchat.android.rendering.ErrorCode.a)
        {
            SnapViewSession.o(a).a(new ShowDialogEvent(com.snapchat.android.util.eventbus.alogType.a, 0x7f0c0036));
            Object aobj[] = new Object[2];
            aobj[0] = SnapViewSession.e(a).l();
            aobj[1] = SnapViewSession.e(a).d();
            Timber.b("SnapViewSession", "SNAP-LOG: MARKING snap from %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE) (%s)", aobj);
            SnapViewSession.a(a, SnapViewSessionStopReason.c);
        } else
        if (errorcode == com.snapchat.android.rendering.ErrorCode.b)
        {
            SnapViewSession.a(a, SnapViewSessionStopReason.b);
            return;
        }
    }

    public void b()
    {
        SnapViewSession.a(a, SnapViewSessionStopReason.d);
    }

    rorCode(SnapViewSession snapviewsession)
    {
        a = snapviewsession;
        super();
    }
}
