// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal.cflowstack;

import java.util.Hashtable;

// Referenced classes of package org.aspectj.runtime.internal.cflowstack:
//            ThreadStack

public class ThreadStackImpl11
    implements ThreadStack
{

    private Hashtable a;
    private int b;

    public ThreadStackImpl11()
    {
        a = new Hashtable();
        b = 0;
    }
}
