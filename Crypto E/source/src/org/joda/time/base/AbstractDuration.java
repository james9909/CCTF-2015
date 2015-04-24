// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import org.joda.time.ReadableDuration;
import org.joda.time.format.FormatUtils;

public abstract class AbstractDuration
    implements ReadableDuration
{

    protected AbstractDuration()
    {
    }

    public int a(ReadableDuration readableduration)
    {
        long l = a();
        long l1 = readableduration.a();
        if (l < l1)
        {
            return -1;
        }
        return l <= l1 ? 0 : 1;
    }

    public int compareTo(Object obj)
    {
        return a((ReadableDuration)obj);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ReadableDuration))
            {
                return false;
            }
            ReadableDuration readableduration = (ReadableDuration)obj;
            if (a() != readableduration.a())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        long l = a();
        return (int)(l ^ l >>> 32);
    }

    public String toString()
    {
        long l = a();
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("PT");
        boolean flag;
        if (l < 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        FormatUtils.a(stringbuffer, l);
        do
        {
            int i = stringbuffer.length();
            byte byte0;
            byte byte1;
            if (flag)
            {
                byte0 = 7;
            } else
            {
                byte0 = 6;
            }
            if (i >= byte0)
            {
                break;
            }
            if (flag)
            {
                byte1 = 3;
            } else
            {
                byte1 = 2;
            }
            stringbuffer.insert(byte1, "0");
        } while (true);
        if (1000L * (l / 1000L) == l)
        {
            stringbuffer.setLength(-3 + stringbuffer.length());
        } else
        {
            stringbuffer.insert(-3 + stringbuffer.length(), ".");
        }
        stringbuffer.append('S');
        return stringbuffer.toString();
    }
}
