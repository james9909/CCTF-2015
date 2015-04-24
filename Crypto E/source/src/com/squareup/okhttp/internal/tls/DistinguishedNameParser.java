// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.tls;

import javax.security.auth.x500.X500Principal;

final class DistinguishedNameParser
{

    private final String a;
    private final int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private char g[];

    public DistinguishedNameParser(X500Principal x500principal)
    {
        a = x500principal.getName("RFC2253");
        b = a.length();
    }

    private int a(int i)
    {
        char c2;
        int k;
        if (i + 1 >= b)
        {
            throw new IllegalStateException((new StringBuilder()).append("Malformed DN: ").append(a).toString());
        }
        char c1 = g[i];
        int j;
        if (c1 >= '0' && c1 <= '9')
        {
            j = c1 - 48;
        } else
        if (c1 >= 'a' && c1 <= 'f')
        {
            j = c1 - 87;
        } else
        if (c1 >= 'A' && c1 <= 'F')
        {
            j = c1 - 55;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Malformed DN: ").append(a).toString());
        }
_L6:
        c2 = g[i + 1];
        if (c2 < '0' || c2 > '9') goto _L2; else goto _L1
_L1:
        k = c2 - 48;
_L4:
        return k + (j << 4);
_L2:
        if (c2 >= 'a' && c2 <= 'f')
        {
            k = c2 - 87;
            continue; /* Loop/switch isn't completed */
        }
        if (c2 < 'A' || c2 > 'F')
        {
            break; /* Loop/switch isn't completed */
        }
        k = c2 - 55;
        if (true) goto _L4; else goto _L3
_L3:
        throw new IllegalStateException((new StringBuilder()).append("Malformed DN: ").append(a).toString());
        if (true) goto _L6; else goto _L5
_L5:
    }

    private String a()
    {
        for (; c < b && g[c] == ' '; c = 1 + c) { }
        if (c == b)
        {
            return null;
        }
        d = c;
        for (c = 1 + c; c < b && g[c] != '=' && g[c] != ' '; c = 1 + c) { }
        if (c >= b)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
        }
        e = c;
        if (g[c] == ' ')
        {
            for (; c < b && g[c] != '=' && g[c] == ' '; c = 1 + c) { }
            if (g[c] != '=' || c == b)
            {
                throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
            }
        }
        for (c = 1 + c; c < b && g[c] == ' '; c = 1 + c) { }
        if (e - d > 4 && g[3 + d] == '.' && (g[d] == 'O' || g[d] == 'o') && (g[1 + d] == 'I' || g[1 + d] == 'i') && (g[2 + d] == 'D' || g[2 + d] == 'd'))
        {
            d = 4 + d;
        }
        return new String(g, d, e - d);
    }

    private String b()
    {
        c = 1 + c;
        d = c;
        e = d;
        do
        {
            if (c == b)
            {
                throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
            }
            if (g[c] == '"')
            {
                for (c = 1 + c; c < b && g[c] == ' '; c = 1 + c) { }
                break;
            }
            if (g[c] == '\\')
            {
                g[e] = e();
            } else
            {
                g[e] = g[c];
            }
            c = 1 + c;
            e = 1 + e;
        } while (true);
        return new String(g, d, e - d);
    }

    private String c()
    {
        if (4 + c >= b)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
        }
        d = c;
        c = 1 + c;
_L6:
        if (c != b && g[c] != '+' && g[c] != ',' && g[c] != ';') goto _L2; else goto _L1
_L1:
        e = c;
_L4:
        int i;
        i = e - d;
        if (i < 5 || (i & 1) == 0)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (g[c] != ' ')
        {
            break; /* Loop/switch isn't completed */
        }
        e = c;
        c = 1 + c;
        while (c < b && g[c] == ' ') 
        {
            c = 1 + c;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (g[c] >= 'A' && g[c] <= 'F')
        {
            char ac[] = g;
            int l = c;
            ac[l] = (char)(32 + ac[l]);
        }
        c = 1 + c;
        if (true) goto _L6; else goto _L5
_L5:
        byte abyte0[] = new byte[i / 2];
        int j = 0;
        int k = 1 + d;
        for (; j < abyte0.length; j++)
        {
            abyte0[j] = (byte)a(k);
            k += 2;
        }

        return new String(g, d, i);
    }

    private String d()
    {
        d = c;
        e = c;
        do
        {
label0:
            do
            {
                if (c >= b)
                {
                    return new String(g, d, e - d);
                }
                switch (g[c])
                {
                default:
                    char ac3[] = g;
                    int l = e;
                    e = l + 1;
                    ac3[l] = g[c];
                    c = 1 + c;
                    break;

                case 43: // '+'
                case 44: // ','
                case 59: // ';'
                    return new String(g, d, e - d);

                case 92: // '\\'
                    char ac2[] = g;
                    int k = e;
                    e = k + 1;
                    ac2[k] = e();
                    c = 1 + c;
                    break;

                case 32: // ' '
                    f = e;
                    c = 1 + c;
                    char ac[] = g;
                    int i = e;
                    e = i + 1;
                    ac[i] = ' ';
                    break label0;
                }
            } while (true);
            for (; c < b && g[c] == ' '; c = 1 + c)
            {
                char ac1[] = g;
                int j = e;
                e = j + 1;
                ac1[j] = ' ';
            }

        } while (c != b && g[c] != ',' && g[c] != '+' && g[c] != ';');
        return new String(g, d, f - d);
    }

    private char e()
    {
        c = 1 + c;
        if (c == b)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unexpected end of DN: ").append(a).toString());
        }
        switch (g[c])
        {
        default:
            return f();

        case 32: // ' '
        case 34: // '"'
        case 35: // '#'
        case 37: // '%'
        case 42: // '*'
        case 43: // '+'
        case 44: // ','
        case 59: // ';'
        case 60: // '<'
        case 61: // '='
        case 62: // '>'
        case 92: // '\\'
        case 95: // '_'
            return g[c];
        }
    }

    private char f()
    {
        int i = a(c);
        c = 1 + c;
        if (i < 128)
        {
            return (char)i;
        }
        if (i >= 192 && i <= 247)
        {
            int j;
            int k;
            int l;
            if (i <= 223)
            {
                j = 1;
                k = i & 0x1f;
            } else
            if (i <= 239)
            {
                j = 2;
                k = i & 0xf;
            } else
            {
                j = 3;
                k = i & 7;
            }
            l = k;
            for (int i1 = 0; i1 < j; i1++)
            {
                c = 1 + c;
                if (c == b || g[c] != '\\')
                {
                    return '?';
                }
                c = 1 + c;
                int j1 = a(c);
                c = 1 + c;
                if ((j1 & 0xc0) != 128)
                {
                    return '?';
                }
                l = (l << 6) + (j1 & 0x3f);
            }

            return (char)l;
        } else
        {
            return '?';
        }
    }

    public String a(String s)
    {
        String s1;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = a.toCharArray();
        s1 = a();
        if (s1 != null) goto _L2; else goto _L1
_L1:
        String s2 = null;
_L8:
        return s2;
_L2:
        s2 = "";
        if (c == b)
        {
            return null;
        }
        g[c];
        JVM INSTR lookupswitch 5: default 120
    //                   34: 146
    //                   35: 154
    //                   43: 125
    //                   44: 125
    //                   59: 125;
           goto _L3 _L4 _L5 _L6 _L6 _L6
_L3:
        s2 = d();
_L6:
        if (s.equalsIgnoreCase(s1)) goto _L8; else goto _L7
_L4:
        s2 = b();
          goto _L6
_L5:
        s2 = c();
          goto _L6
          goto _L8
_L7:
        if (c >= b)
        {
            return null;
        }
        if (g[c] == ',' || g[c] == ';' || g[c] == '+')
        {
            c = 1 + c;
            s1 = a();
            if (s1 == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Malformed DN: ").append(a).toString());
            }
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Malformed DN: ").append(a).toString());
        }
          goto _L2
    }
}
