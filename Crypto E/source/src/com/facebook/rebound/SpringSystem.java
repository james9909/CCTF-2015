// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound;


// Referenced classes of package com.facebook.rebound:
//            BaseSpringSystem, SpringClock, AndroidSpringLooperFactory, SpringLooper

public class SpringSystem extends BaseSpringSystem
{

    private SpringSystem(SpringClock springclock, SpringLooper springlooper)
    {
        super(springclock, springlooper);
    }

    public static SpringSystem d()
    {
        return new SpringSystem(new SpringClock(), AndroidSpringLooperFactory.a());
    }
}
