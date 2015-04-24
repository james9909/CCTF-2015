// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.UnsupportedEncodingException;

final class Base64
{

    private static final byte a[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };

    private Base64()
    {
    }

    public static String a(byte abyte0[])
    {
        int i;
        byte abyte1[];
        int j;
        i = 0;
        abyte1 = new byte[(4 * (2 + abyte0.length)) / 3];
        j = abyte0.length - abyte0.length % 3;
        for (int k = 0; k < j;)
        {
            int j2 = i + 1;
            abyte1[i] = a[(0xff & abyte0[k]) >> 2];
            int k2 = j2 + 1;
            abyte1[j2] = a[(3 & abyte0[k]) << 4 | (0xff & abyte0[k + 1]) >> 4];
            int l2 = k2 + 1;
            abyte1[k2] = a[(0xf & abyte0[k + 1]) << 2 | (0xff & abyte0[k + 2]) >> 6];
            int i3 = l2 + 1;
            abyte1[l2] = a[0x3f & abyte0[k + 2]];
            k += 3;
            i = i3;
        }

        abyte0.length % 3;
        JVM INSTR tableswitch 1 2: default 184
    //                   1 201
    //                   2 269;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_269;
_L4:
        int l;
        int i1;
        int j1;
        String s;
        int k1;
        int l1;
        int i2;
        try
        {
            s = new String(abyte1, 0, i, "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
_L2:
        k1 = i + 1;
        abyte1[i] = a[(0xff & abyte0[j]) >> 2];
        l1 = k1 + 1;
        abyte1[k1] = a[(3 & abyte0[j]) << 4];
        i2 = l1 + 1;
        abyte1[l1] = 61;
        i = i2 + 1;
        abyte1[i2] = 61;
          goto _L4
        l = i + 1;
        abyte1[i] = a[(0xff & abyte0[j]) >> 2];
        i1 = l + 1;
        abyte1[l] = a[(3 & abyte0[j]) << 4 | (0xff & abyte0[j + 1]) >> 4];
        j1 = i1 + 1;
        abyte1[i1] = a[(0xf & abyte0[j + 1]) << 2];
        i = j1 + 1;
        abyte1[j1] = 61;
          goto _L4
    }

    public static byte[] a(String s)
    {
        int i = s.length();
_L7:
        if (i <= 0) goto _L2; else goto _L1
_L1:
        char c1 = s.charAt(i - 1);
        if (c1 == '=' || c1 == '\n' || c1 == '\r' || c1 == ' ' || c1 == '\t') goto _L3; else goto _L2
_L2:
        byte abyte0[];
        int j;
        int k;
        int l;
        int i1;
        abyte0 = new byte[(int)((6L * (long)i) / 8L)];
        j = 0;
        k = 0;
        l = 0;
        i1 = 0;
_L6:
        if (j >= i) goto _L5; else goto _L4
_L4:
        int k2;
        int l2;
        int i3;
        char c = s.charAt(j);
        int j3;
        if (c >= 'A' && c <= 'Z')
        {
            j3 = c - 65;
        } else
        if (c >= 'a' && c <= 'z')
        {
            j3 = c - 71;
        } else
        if (c >= '0' && c <= '9')
        {
            j3 = c + 4;
        } else
        if (c == '+')
        {
            j3 = 62;
        } else
        {
label0:
            {
                if (c != '/')
                {
                    break label0;
                }
                j3 = 63;
            }
        }
        k2 = k << 6 | (byte)j3;
        l2 = l + 1;
        int j1;
        int k1;
        int l1;
        byte abyte1[];
        int i2;
        int j2;
        if (l2 % 4 == 0)
        {
            int k3 = i1 + 1;
            abyte0[i1] = (byte)(k2 >> 16);
            int l3 = k3 + 1;
            abyte0[k3] = (byte)(k2 >> 8);
            i3 = l3 + 1;
            abyte0[l3] = (byte)k2;
        } else
        {
            i3 = i1;
        }
        j++;
        i1 = i3;
        l = l2;
        k = k2;
          goto _L6
_L3:
        i--;
          goto _L7
        if (c != '\n' && c != '\r' && c != ' ')
        {
            if (c == '\t')
            {
                k2 = k;
                l2 = l;
                i3 = i1;
            } else
            {
                return null;
            }
        } else
        {
            k2 = k;
            l2 = l;
            i3 = i1;
        }
        break MISSING_BLOCK_LABEL_180;
_L5:
        j1 = l % 4;
        if (j1 == 1)
        {
            return null;
        }
        if (j1 != 2) goto _L9; else goto _L8
_L8:
        i2 = k << 12;
        j2 = i1 + 1;
        abyte0[i1] = (byte)(i2 >> 16);
        i1 = j2;
_L11:
        if (i1 == abyte0.length)
        {
            return abyte0;
        }
        break; /* Loop/switch isn't completed */
_L9:
        if (j1 == 3)
        {
            k1 = k << 6;
            l1 = i1 + 1;
            abyte0[i1] = (byte)(k1 >> 16);
            i1 = l1 + 1;
            abyte0[l1] = (byte)(k1 >> 8);
        }
        if (true) goto _L11; else goto _L10
_L10:
        abyte1 = new byte[i1];
        System.arraycopy(abyte0, 0, abyte1, 0, i1);
        return abyte1;
          goto _L6
    }

}
