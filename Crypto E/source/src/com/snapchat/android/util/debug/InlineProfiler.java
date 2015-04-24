// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import java.util.HashMap;
import java.util.Map;

public class InlineProfiler
{
    static class TimerEntry
    {

        long a;
        int b;
        int c;

        TimerEntry()
        {
            a = 0x8000000000000000L;
            b = 0;
            c = 0;
        }
    }


    private static Map a = new HashMap();

    private InlineProfiler()
    {
    }

}
