// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


// Referenced classes of package com.snapchat.android.util:
//            WaitDoneHandler

class a
    implements Runnable
{

    final Object a;
    final WaitDoneHandler b;

    public void run()
    {
        synchronized (a)
        {
            a.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (WaitDoneHandler waitdonehandler, Object obj)
    {
        b = waitdonehandler;
        a = obj;
        super();
    }
}
