// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language.bm;

import java.util.Comparator;

// Referenced classes of package org.apache.commons.codec.language.bm:
//            Rule

static final class _cls9
    implements Comparator
{

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((compare)obj, (compare)obj1);
    }

    public int compare(compare compare1, compare compare2)
    {
        int i = 0;
_L8:
        if (i >= cess._mth000(compare1).length()) goto _L2; else goto _L1
_L1:
        if (i < cess._mth000(compare2).length()) goto _L4; else goto _L3
_L3:
        int l = 1;
_L6:
        return l;
_L4:
        int i1 = cess._mth000(compare1).charAt(i) - cess._mth000(compare2).charAt(i);
        if (i1 != 0)
        {
            return i1;
        }
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        int j;
        int k;
        j = cess._mth000(compare1).length();
        k = cess._mth000(compare2).length();
        l = 0;
        if (j >= k) goto _L6; else goto _L5
_L5:
        return -1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    _cls9()
    {
    }
}
