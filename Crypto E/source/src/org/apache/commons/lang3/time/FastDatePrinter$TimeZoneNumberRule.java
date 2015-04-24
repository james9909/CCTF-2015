// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Calendar;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDatePrinter

static class mColon
    implements mColon
{

    static final mColon INSTANCE_COLON = new <init>(true);
    static final <init> INSTANCE_NO_COLON = new <init>(false);
    final boolean mColon;

    public void appendTo(StringBuffer stringbuffer, Calendar calendar)
    {
        int i = calendar.get(15) + calendar.get(16);
        int j;
        int k;
        if (i < 0)
        {
            stringbuffer.append('-');
            i = -i;
        } else
        {
            stringbuffer.append('+');
        }
        j = i / 0x36ee80;
        stringbuffer.append((char)(48 + j / 10));
        stringbuffer.append((char)(48 + j % 10));
        if (mColon)
        {
            stringbuffer.append(':');
        }
        k = i / 60000 - j * 60;
        stringbuffer.append((char)(48 + k / 10));
        stringbuffer.append((char)(48 + k % 10));
    }

    public int estimateLength()
    {
        return 5;
    }


    (boolean flag)
    {
        mColon = flag;
    }
}
