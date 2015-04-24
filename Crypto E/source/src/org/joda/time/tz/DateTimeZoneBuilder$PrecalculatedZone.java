// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;
import org.joda.time.DateTimeZone;

// Referenced classes of package org.joda.time.tz:
//            DateTimeZoneBuilder

static final class f extends DateTimeZone
{

    private final long b[];
    private final int c[];
    private final int d[];
    private final String e[];
    private final f f;

    static f a(DataInput datainput, String s)
    {
        int i;
        String as[];
        int k;
        long al[];
        int ai[];
        int ai1[];
        String as1[];
        int l;
        i = datainput.readUnsignedShort();
        as = new String[i];
        for (int j = 0; j < i; j++)
        {
            as[j] = datainput.readUTF();
        }

        k = datainput.readInt();
        al = new long[k];
        ai = new int[k];
        ai1 = new int[k];
        as1 = new String[k];
        l = 0;
_L3:
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        al[l] = DateTimeZoneBuilder.a(datainput);
        ai[l] = (int)DateTimeZoneBuilder.a(datainput);
        ai1[l] = (int)DateTimeZoneBuilder.a(datainput);
        if (i >= 256)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        int j1 = datainput.readUnsignedByte();
_L1:
        as1[l] = as[j1];
        l++;
        continue; /* Loop/switch isn't completed */
        int i1;
        try
        {
            i1 = datainput.readUnsignedShort();
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
        {
            throw new IOException("Invalid encoding");
        }
        j1 = i1;
          goto _L1
        boolean flag = datainput.readBoolean();
        f f1 = null;
        if (flag)
        {
            f1 = f(datainput, s);
        }
        return new <init>(s, al, ai, ai1, as1, f1);
        if (true) goto _L3; else goto _L2
_L2:
    }

    public String a(long l)
    {
        long al[] = b;
        int i = Arrays.binarySearch(al, l);
        if (i >= 0)
        {
            return e[i];
        }
        int j = ~i;
        if (j < al.length)
        {
            if (j > 0)
            {
                return e[j - 1];
            } else
            {
                return "UTC";
            }
        }
        if (f == null)
        {
            return e[j - 1];
        } else
        {
            return f.f(l);
        }
    }

    public int b(long l)
    {
        long al[] = b;
        int i = Arrays.binarySearch(al, l);
        if (i >= 0)
        {
            return c[i];
        }
        int j = ~i;
        if (j < al.length)
        {
            if (j > 0)
            {
                return c[j - 1];
            } else
            {
                return 0;
            }
        }
        if (f == null)
        {
            return c[j - 1];
        } else
        {
            return f.f(l);
        }
    }

    public boolean d()
    {
        return false;
    }

    public long e(long l)
    {
        long al[] = b;
        int i = Arrays.binarySearch(al, l);
        int j;
        if (i >= 0)
        {
            j = i + 1;
        } else
        {
            j = ~i;
        }
        if (j < al.length)
        {
            l = al[j];
        } else
        if (f != null)
        {
            long l1 = al[-1 + al.length];
            if (l < l1)
            {
                l = l1;
            }
            return f.f(l);
        }
        return l;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        f f1;
        if (!(obj instanceof f))
        {
            break MISSING_BLOCK_LABEL_121;
        }
        f1 = (f)obj;
        if (!c().equals(f1.c()) || !Arrays.equals(b, f1.b) || !Arrays.equals(e, f1.e) || !Arrays.equals(c, f1.c) || !Arrays.equals(d, f1.d))
        {
            break; /* Loop/switch isn't completed */
        }
        if (f != null) goto _L4; else goto _L3
_L3:
        if (f1.f == null) goto _L1; else goto _L5
_L5:
        return false;
_L4:
        if (!f.f(f1.f)) goto _L5; else goto _L6
_L6:
        return true;
        return false;
    }

    public long f(long l)
    {
        long al[];
        int i;
        al = b;
        i = Arrays.binarySearch(al, l);
        if (i < 0) goto _L2; else goto _L1
_L1:
        if (l > 0x8000000000000000L)
        {
            l--;
        }
_L4:
        return l;
_L2:
        int j;
        j = ~i;
        if (j >= al.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j > 0)
        {
            long l3 = al[j - 1];
            if (l3 > 0x8000000000000000L)
            {
                return l3 - 1L;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (f != null)
        {
            long l2 = f.f(l);
            if (l2 < l)
            {
                return l2;
            }
        }
        long l1 = al[j - 1];
        if (l1 > 0x8000000000000000L)
        {
            return l1 - 1L;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private (String s, long al[], int ai[], int ai1[], String as[],  )
    {
        super(s);
        b = al;
        c = ai;
        d = ai1;
        e = as;
        f = ;
    }
}
