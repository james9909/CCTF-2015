// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.util.system.Clock;

class RecencyRuleCalculator
{

    private final Clock a;

    public RecencyRuleCalculator()
    {
        this(new Clock());
    }

    protected RecencyRuleCalculator(Clock clock)
    {
        a = clock;
    }

    public boolean a(DSnapPage dsnappage, long l, long l1, int i)
    {
        while (Math.max(0L, a.a() - l) > 0x36ee80L * l1 || dsnappage.c().intValue() >= i) 
        {
            return false;
        }
        return true;
    }
}
