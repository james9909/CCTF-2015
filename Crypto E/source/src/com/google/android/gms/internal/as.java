// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.PriorityQueue;

// Referenced classes of package com.google.android.gms.internal:
//            hf, aq

public class as
{
    public static class a
    {

        final String ok;
        final long value;

        public boolean equals(Object obj)
        {
            while (obj == null || !(obj instanceof a) || ((a)obj).value != value) 
            {
                return false;
            }
            return true;
        }

        public int hashCode()
        {
            return (int)value;
        }

        a(long l, String s)
        {
            value = l;
            ok = s;
        }
    }


    static long a(int i, int j, long l, long l1, long l2)
    {
        long l3 = (l1 * ((0x7fffffffL + (long)i) % 0x4000ffffL)) % 0x4000ffffL;
        return ((l2 * (((l + 0x4000ffffL) - l3) % 0x4000ffffL)) % 0x4000ffffL + (0x7fffffffL + (long)j) % 0x4000ffffL) % 0x4000ffffL;
    }

    static long a(long l, int i)
    {
        if (i == 0)
        {
            l = 1L;
        } else
        if (i != 1)
        {
            if (i % 2 == 0)
            {
                return a((l * l) % 0x4000ffffL, i / 2) % 0x4000ffffL;
            } else
            {
                return (l * (a((l * l) % 0x4000ffffL, i / 2) % 0x4000ffffL)) % 0x4000ffffL;
            }
        }
        return l;
    }

    static String a(String as1[], int i, int j)
    {
        if (as1.length < i + j)
        {
            hf.U("Unable to construct shingle");
            return "";
        }
        StringBuffer stringbuffer = new StringBuffer();
        for (int k = i; k < -1 + (i + j); k++)
        {
            stringbuffer.append(as1[k]);
            stringbuffer.append(' ');
        }

        stringbuffer.append(as1[-1 + (i + j)]);
        return stringbuffer.toString();
    }

    static void a(int i, long l, String s, PriorityQueue priorityqueue)
    {
        a a1;
        a1 = new a(l, s);
        break MISSING_BLOCK_LABEL_11;
        if ((priorityqueue.size() != i || ((a)priorityqueue.peek()).value <= a1.value) && !priorityqueue.contains(a1))
        {
            priorityqueue.add(a1);
            if (priorityqueue.size() > i)
            {
                priorityqueue.poll();
                return;
            }
        }
        return;
    }

    public static void a(String as1[], int i, int j, PriorityQueue priorityqueue)
    {
        long l = b(as1, 0, j);
        a(i, l, a(as1, 0, j), priorityqueue);
        long l1 = a(0x1001fffL, j - 1);
        for (int k = 1; k < 1 + (as1.length - j); k++)
        {
            l = a(aq.o(as1[k - 1]), aq.o(as1[-1 + (k + j)]), l, l1, 0x1001fffL);
            a(i, l, a(as1, k, j), priorityqueue);
        }

    }

    private static long b(String as1[], int i, int j)
    {
        long l = (0x7fffffffL + (long)aq.o(as1[i])) % 0x4000ffffL;
        for (int k = i + 1; k < i + j; k++)
        {
            l = ((l * 0x1001fffL) % 0x4000ffffL + (0x7fffffffL + (long)aq.o(as1[k])) % 0x4000ffffL) % 0x4000ffffL;
        }

        return l;
    }
}
