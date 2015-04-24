// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;

import java.util.Enumeration;

public class ArgumentTokenizer
    implements Enumeration
{

    public final char a = ',';
    private String b;
    private char c;

    public ArgumentTokenizer(String s, char c1)
    {
        b = null;
        c = ',';
        b = s;
        c = c1;
    }

    public boolean a()
    {
        return b.length() > 0;
    }

    public String b()
    {
        int i;
        int j;
        int k;
        i = b.length();
        j = 0;
        k = 0;
_L3:
        if (k >= i) goto _L2; else goto _L1
_L1:
        if (b.charAt(k) == '(')
        {
            j++;
        } else
        {
            if (b.charAt(k) != ')')
            {
                continue; /* Loop/switch isn't completed */
            }
            j--;
        }
_L5:
        k++;
          goto _L3
        if (b.charAt(k) != c || j != 0) goto _L5; else goto _L4
_L4:
        String s;
        s = b.substring(0, k);
        b = b.substring(k + 1);
_L7:
        if (s == null)
        {
            s = b;
            b = "";
        }
        return s;
_L2:
        s = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean hasMoreElements()
    {
        return a();
    }

    public Object nextElement()
    {
        return b();
    }
}
