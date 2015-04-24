// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller.countdown;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.FeedTimerChangeEvent;
import com.snapchat.android.util.system.Clock;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.controller.countdown:
//            SnapCountdownItem, SnapCountdownListener, SnapConsumptionRecorder

public class SnapCountdownController
{
    static final class Action extends Enum
    {

        public static final Action a;
        public static final Action b;
        public static final Action c;
        private static final Action d[];

        public static Action valueOf(String s)
        {
            return (Action)Enum.valueOf(com/snapchat/android/controller/countdown/SnapCountdownController$Action, s);
        }

        public static Action[] values()
        {
            return (Action[])d.clone();
        }

        static 
        {
            a = new Action("EXPIRE", 0);
            b = new Action("CANCEL", 1);
            c = new Action("SKIP", 2);
            Action aaction[] = new Action[3];
            aaction[0] = a;
            aaction[1] = b;
            aaction[2] = c;
            d = aaction;
        }

        private Action(String s, int i)
        {
            super(s, i);
        }
    }

    public static class SnapCountdownItemFactory
    {

        private final SnapConsumptionRecorder a;

        public SnapCountdownItem a(ReceivedSnap receivedsnap, boolean flag)
        {
            SnapCountdownItem snapcountdownitem = new SnapCountdownItem(receivedsnap, flag);
            snapcountdownitem.a(a);
            return snapcountdownitem;
        }

        SnapCountdownItemFactory()
        {
            this(new SnapConsumptionRecorder());
        }

        SnapCountdownItemFactory(SnapConsumptionRecorder snapconsumptionrecorder)
        {
            a = snapconsumptionrecorder;
        }
    }


    private static final SnapCountdownController a = new SnapCountdownController();
    private final Object b;
    private final Map c;
    private final SnapCountdownItemFactory d;
    private final Clock e;
    private final Handler f;
    private final Bus g;
    private final Runnable h;

    SnapCountdownController()
    {
        this(new Handler(Looper.getMainLooper()), new Clock(), new SnapCountdownItemFactory(), BusProvider.a());
    }

    SnapCountdownController(Handler handler, Clock clock, SnapCountdownItemFactory snapcountdownitemfactory, Bus bus)
    {
        b = new Object();
        c = new HashMap();
        h = new Runnable() {

            final SnapCountdownController a;

            public void run()
            {
                a.b();
            }

            
            {
                a = SnapCountdownController.this;
                super();
            }
        };
        f = handler;
        e = clock;
        d = snapcountdownitemfactory;
        g = bus;
    }

    public static SnapCountdownController a()
    {
        return a;
    }

    private void a(SnapCountdownItem snapcountdownitem, Action action)
    {
        Object aobj[] = new Object[2];
        aobj[0] = snapcountdownitem;
        aobj[1] = action.toString();
        Timber.c("SnapCountdownController", "onSnapFinished %s, action: %s", aobj);
        c.remove(snapcountdownitem.a().d());
        Iterator iterator = snapcountdownitem.f().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            SnapCountdownListener snapcountdownlistener = (SnapCountdownListener)iterator.next();
            if (action == Action.c)
            {
                snapcountdownlistener.b(snapcountdownitem.a());
            } else
            if (action == Action.a)
            {
                snapcountdownlistener.a(snapcountdownitem.a());
            } else
            if (action == Action.b)
            {
                snapcountdownlistener.c(snapcountdownitem.a());
            }
        } while (true);
        snapcountdownitem.a().J();
        snapcountdownitem.g();
    }

    private static boolean a(Map map, ReceivedSnap receivedsnap)
    {
        SnapCountdownItem snapcountdownitem = (SnapCountdownItem)map.get(receivedsnap.d());
        if (snapcountdownitem != null && snapcountdownitem.e())
        {
            receivedsnap.I();
            receivedsnap.c(snapcountdownitem.c());
            map.put(receivedsnap.d(), snapcountdownitem.a(receivedsnap));
            return true;
        } else
        {
            return false;
        }
    }

    private SnapCountdownItem e(ReceivedSnap receivedsnap)
    {
        return (SnapCountdownItem)c.get(receivedsnap.d());
    }

    protected void a(long l)
    {
        f.postDelayed(h, l);
    }

    public void a(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "skipCountdown %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        a(snapcountdownitem, Action.c);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ReceivedSnap receivedsnap, SnapCountdownListener snapcountdownlistener)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "removeListener %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        snapcountdownitem.b(snapcountdownlistener);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ReceivedSnap receivedsnap, boolean flag, SnapCountdownListener snapcountdownlistener)
    {
        Object aobj[] = new Object[2];
        aobj[0] = receivedsnap.d();
        aobj[1] = Boolean.toString(flag);
        Timber.c("SnapCountdownController", "prepareCountdown %s, isCancelable: %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem != null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        snapcountdownitem = d.a(receivedsnap, flag);
        c.put(receivedsnap.d(), snapcountdownitem);
        if (snapcountdownlistener == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        snapcountdownitem.a(snapcountdownlistener);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(ReceivedSnap receivedsnap, int i)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "startCountdown %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        if (snapcountdownitem.e())
        {
            break MISSING_BLOCK_LABEL_140;
        }
        int j = (int)Math.ceil((double)i / 1000D);
        Object aobj1[] = new Object[2];
        aobj1[0] = receivedsnap.d();
        aobj1[1] = Integer.valueOf(j);
        Timber.c("SnapCountdownController", "Starting countdown %s, duration seconds: %d", aobj1);
        receivedsnap.b(j);
        receivedsnap.c(j);
        snapcountdownitem.a(i);
        snapcountdownitem.a().I();
        a(Math.min(snapcountdownitem.d(), 100L));
        return true;
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator;
        HashSet hashset = new HashSet(c.size());
        hashset.addAll(c.entrySet());
        iterator = hashset.iterator();
        long l = 0x7fffffffffffffffL;
_L3:
        SnapCountdownItem snapcountdownitem;
        long l1;
        Set set;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_232;
            }
            snapcountdownitem = (SnapCountdownItem)((java.util.Map.Entry)iterator.next()).getValue();
        } while (!snapcountdownitem.e());
        l1 = snapcountdownitem.d();
        long l2 = snapcountdownitem.c();
        set = snapcountdownitem.f();
        snapcountdownitem.a().d((int)l2);
        if (l1 > 0L) goto _L2; else goto _L1
_L1:
        a(snapcountdownitem, Action.a);
_L4:
        g.a(new FeedTimerChangeEvent(snapcountdownitem.a().n()));
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        for (Iterator iterator1 = set.iterator(); iterator1.hasNext(); ((SnapCountdownListener)iterator1.next()).a(snapcountdownitem.a(), l1)) { }
        l = Math.min(Math.min(l1, l), 100L);
          goto _L4
        if (l >= 0x7fffffffffffffffL)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        a(l);
        obj;
        JVM INSTR monitorexit ;
    }

    public void b(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "expireCountdown %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        a(snapcountdownitem, Action.a);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "cancel %s", aobj);
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        SnapCountdownItem snapcountdownitem = e(receivedsnap);
        if (snapcountdownitem == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (!snapcountdownitem.e() || snapcountdownitem.b())
        {
            break MISSING_BLOCK_LABEL_60;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        a(snapcountdownitem, Action.b);
        obj;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d(ReceivedSnap receivedsnap)
    {
        Object aobj[] = new Object[1];
        aobj[0] = receivedsnap.d();
        Timber.c("SnapCountdownController", "refreshTimer %s", aobj);
        boolean flag;
        synchronized (b)
        {
            flag = a(c, receivedsnap);
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
