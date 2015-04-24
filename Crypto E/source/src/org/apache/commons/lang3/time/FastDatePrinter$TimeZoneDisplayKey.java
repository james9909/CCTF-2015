// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package org.apache.commons.lang3.time:
//            FastDatePrinter

static class mLocale
{

    private final Locale mLocale;
    private final int mStyle;
    private final TimeZone mTimeZone;

    public boolean equals(Object obj)
    {
        mLocale mlocale;
        if (this != obj)
        {
            if (obj instanceof mLocale)
            {
                if (!mTimeZone.equals((mlocale = (mTimeZone)obj).mTimeZone) || mStyle != mlocale.mStyle || !mLocale.equals(mlocale.mLocale))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 * mStyle + mLocale.hashCode()) + mTimeZone.hashCode();
    }

    (TimeZone timezone, boolean flag, int i, Locale locale)
    {
        mTimeZone = timezone;
        if (flag)
        {
            mStyle = 0x80000000 | i;
        } else
        {
            mStyle = i;
        }
        mLocale = locale;
    }
}
