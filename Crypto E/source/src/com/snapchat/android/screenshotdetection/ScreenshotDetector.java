// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.screenshotdetection;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.screenshotdetection:
//            ScreenshotDetectionSession

public class ScreenshotDetector
{

    private static ScreenshotDetector a;
    private final Set b = new HashSet();
    private final LinkedList c = new LinkedList();

    protected ScreenshotDetector()
    {
    }

    public static ScreenshotDetector a()
    {
        com/snapchat/android/screenshotdetection/ScreenshotDetector;
        JVM INSTR monitorenter ;
        ScreenshotDetector screenshotdetector;
        if (a == null)
        {
            a = new ScreenshotDetector();
        }
        screenshotdetector = a;
        com/snapchat/android/screenshotdetection/ScreenshotDetector;
        JVM INSTR monitorexit ;
        return screenshotdetector;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        a = null;
    }

    public void a(ScreenshotDetectionSession screenshotdetectionsession)
    {
        synchronized (c)
        {
            c.add(screenshotdetectionsession);
        }
        return;
        exception;
        linkedlist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(ScreenshotDetectionSession screenshotdetectionsession, long l, long l1)
    {
        screenshotdetectionsession.a(l);
        screenshotdetectionsession.b(l1);
    }

    public void a(List list)
    {
        synchronized (c)
        {
            c.clear();
            c.addAll(list);
        }
        return;
        exception;
        linkedlist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(List list, long l)
    {
label0:
        {
            synchronized (c)
            {
                if (!c.isEmpty())
                {
                    break label0;
                }
            }
            return;
        }
        linkedlist;
        JVM INSTR monitorexit ;
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_255;
        }
        LinkedList linkedlist1 = c;
        linkedlist1;
        JVM INSTR monitorenter ;
        Iterator iterator = c.descendingIterator();
_L6:
        ScreenshotDetectionSession screenshotdetectionsession;
        long l1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_244;
        }
        screenshotdetectionsession = (ScreenshotDetectionSession)iterator.next();
        l1 = screenshotdetectionsession.f();
        Exception exception1;
        long l2;
        long l3;
        long l4;
        Iterator iterator1;
        Long long1;
        if (l1 == -1L)
        {
            l2 = l;
        } else
        {
            l2 = l1;
        }
        l3 = 5000L + l2;
        l4 = 1000L + screenshotdetectionsession.e();
        iterator1 = list.iterator();
_L4:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        long1 = (Long)iterator1.next();
        if (long1.longValue() < l4 || long1.longValue() > l3 || b.contains(long1)) goto _L4; else goto _L3
_L3:
        b.add(long1);
        a(screenshotdetectionsession, long1.longValue(), l);
_L2:
        if (l <= 10000L + l2) goto _L6; else goto _L5
_L5:
        iterator.remove();
          goto _L6
        exception1;
        linkedlist1;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        linkedlist;
        JVM INSTR monitorexit ;
        throw exception;
        linkedlist1;
        JVM INSTR monitorexit ;
        return;
    }

    public void b(List list)
    {
        a(list, System.currentTimeMillis());
    }

    public List c()
    {
        ArrayList arraylist;
        synchronized (c)
        {
            arraylist = new ArrayList(c);
        }
        return arraylist;
        exception;
        linkedlist;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
