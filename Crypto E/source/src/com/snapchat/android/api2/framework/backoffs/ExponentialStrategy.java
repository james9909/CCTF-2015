// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework.backoffs;


// Referenced classes of package com.snapchat.android.api2.framework.backoffs:
//            IStrategy

public class ExponentialStrategy
    implements IStrategy
{

    public ExponentialStrategy()
    {
    }

    public long a(int i)
    {
        if (i <= 0)
        {
            return 0L;
        } else
        {
            return (long)(1 << i - 1);
        }
    }
}
