// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;


// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Http20Draft16

static final class A
{

    private static final String a[] = {
        "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"
    };
    private static final String b[];
    private static final String c[];

    static String a(byte byte0, byte byte1)
    {
        String s;
        if (byte1 == 0)
        {
            s = "";
        } else
        {
            switch (byte0)
            {
            case 5: // '\005'
            default:
                if (byte1 < b.length)
                {
                    s = b[byte1];
                } else
                {
                    s = c[byte1];
                }
                if (byte0 == 5 && (byte1 & 4) != 0)
                {
                    return s.replace("HEADERS", "PUSH_PROMISE");
                }
                break;

            case 4: // '\004'
            case 6: // '\006'
                if (byte1 == 1)
                {
                    return "ACK";
                } else
                {
                    return c[byte1];
                }

            case 2: // '\002'
            case 3: // '\003'
            case 7: // '\007'
            case 8: // '\b'
                return c[byte1];
            }
            if (byte0 == 0 && (byte1 & 0x20) != 0)
            {
                return s.replace("PRIORITY", "COMPRESSED");
            }
        }
        return s;
    }

    static String a(boolean flag, int i, int j, byte byte0, byte byte1)
    {
        String s;
        String s1;
        Object aobj1[];
        String s2;
        if (byte0 < a.length)
        {
            s = a[byte0];
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Byte.valueOf(byte0);
            s = String.format("0x%02x", aobj);
        }
        s1 = a(byte0, byte1);
        aobj1 = new Object[5];
        if (flag)
        {
            s2 = "<<";
        } else
        {
            s2 = ">>";
        }
        aobj1[0] = s2;
        aobj1[1] = Integer.valueOf(i);
        aobj1[2] = Integer.valueOf(j);
        aobj1[3] = s;
        aobj1[4] = s1;
        return String.format("%s 0x%08x %5d %-13s %s", aobj1);
    }

    static 
    {
        b = new String[64];
        c = new String[256];
        for (int i = 0; i < c.length; i++)
        {
            String as[] = c;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.toBinaryString(i);
            as[i] = String.format("%8s", aobj).replace(' ', '0');
        }

        b[0] = "";
        b[1] = "END_STREAM";
        int ai[] = {
            1
        };
        b[8] = "PADDED";
        int j = ai.length;
        for (int k = 0; k < j; k++)
        {
            int k2 = ai[k];
            b[k2 | 8] = (new StringBuilder()).append(b[k2]).append("|PADDED").toString();
        }

        b[4] = "END_HEADERS";
        b[32] = "PRIORITY";
        b[36] = "END_HEADERS|PRIORITY";
        int ai1[] = {
            4, 32, 36
        };
        int l = ai1.length;
        int i1 = 0;
        int j1;
        do
        {
            j1 = 0;
            if (i1 >= l)
            {
                break;
            }
            int k1 = ai1[i1];
            int l1 = ai.length;
            for (int i2 = 0; i2 < l1; i2++)
            {
                int j2 = ai[i2];
                b[j2 | k1] = (new StringBuilder()).append(b[j2]).append('|').append(b[k1]).toString();
                b[8 | (j2 | k1)] = (new StringBuilder()).append(b[j2]).append('|').append(b[k1]).append("|PADDED").toString();
            }

            i1++;
        } while (true);
        for (; j1 < b.length; j1++)
        {
            if (b[j1] == null)
            {
                b[j1] = c[j1];
            }
        }

    }

    A()
    {
    }
}
