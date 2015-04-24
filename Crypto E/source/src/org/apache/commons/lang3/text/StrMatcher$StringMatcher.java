// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;


// Referenced classes of package org.apache.commons.lang3.text:
//            StrMatcher

static final class chars extends StrMatcher
{

    private final char chars[];

    public int isMatch(char ac[], int i, int j, int k)
    {
        int l = chars.length;
        if (i + l <= k) goto _L2; else goto _L1
_L1:
        return 0;
_L2:
        int i1 = 0;
label0:
        do
        {
label1:
            {
                if (i1 >= chars.length)
                {
                    break label1;
                }
                if (chars[i1] != ac[i])
                {
                    break label0;
                }
                i1++;
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return l;
    }

    (String s)
    {
        chars = s.toCharArray();
    }
}
