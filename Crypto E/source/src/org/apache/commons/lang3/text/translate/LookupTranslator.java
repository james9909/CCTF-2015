// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import java.util.HashMap;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            CharSequenceTranslator

public class LookupTranslator extends CharSequenceTranslator
{

    private final int longest;
    private final HashMap lookupMap = new HashMap();
    private final int shortest;

    public transient LookupTranslator(CharSequence acharsequence[][])
    {
        int i = 0x7fffffff;
        int j;
        if (acharsequence != null)
        {
            int k = acharsequence.length;
            int l = 0;
            j = 0;
            int i1 = i;
            while (l < k) 
            {
                CharSequence acharsequence1[] = acharsequence[l];
                lookupMap.put(acharsequence1[0].toString(), acharsequence1[1]);
                int j1 = acharsequence1[0].length();
                if (j1 < i1)
                {
                    i1 = j1;
                }
                if (j1 <= j)
                {
                    j1 = j;
                }
                l++;
                j = j1;
            }
            i = i1;
        } else
        {
            j = 0;
        }
        shortest = i;
        longest = j;
    }

    public int translate(CharSequence charsequence, int i, Writer writer)
    {
        int j = longest;
        if (i + longest > charsequence.length())
        {
            j = charsequence.length() - i;
        }
        for (int k = j; k >= shortest; k--)
        {
            CharSequence charsequence1 = charsequence.subSequence(i, i + k);
            CharSequence charsequence2 = (CharSequence)lookupMap.get(charsequence1.toString());
            if (charsequence2 != null)
            {
                writer.write(charsequence2.toString());
                return k;
            }
        }

        return 0;
    }
}
