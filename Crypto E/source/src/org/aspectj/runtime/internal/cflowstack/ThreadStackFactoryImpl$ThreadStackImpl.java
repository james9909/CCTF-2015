// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.internal.cflowstack;

import java.util.Stack;

// Referenced classes of package org.aspectj.runtime.internal.cflowstack:
//            ThreadStack, ThreadStackFactoryImpl

static class <init> extends ThreadLocal
    implements ThreadStack
{

    public Object initialValue()
    {
        return new Stack();
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
