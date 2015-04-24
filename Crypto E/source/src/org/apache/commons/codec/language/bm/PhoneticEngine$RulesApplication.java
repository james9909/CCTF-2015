// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language.bm;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.apache.commons.codec.language.bm:
//            Rule, PhoneticEngine

static final class i
{

    private final List finalRules;
    private boolean found;
    private int i;
    private final CharSequence input;
    private found phonemeBuilder;

    public int getI()
    {
        return i;
    }

    public i getPhonemeBuilder()
    {
        return phonemeBuilder;
    }

    public phonemeBuilder invoke()
    {
        phonemeBuilder = phonemeBuilder.ply(rule.getPhoneme());
        found = true;
_L2:
        if (!found)
        {
            k = 1;
        }
        i = k + i;
        return this;
        int j = 0;
        found = false;
        int k;
        Rule rule;
        for (Iterator iterator = finalRules.iterator(); iterator.hasNext();)
        {
label0:
            {
                rule = (Rule)iterator.next();
                k = rule.getPattern().length();
                if (rule.patternAndContextMatches(input, i))
                {
                    break label0;
                }
                j = k;
            }
        }

        k = j;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean isFound()
    {
        return found;
    }

    public (List list, CharSequence charsequence,  , int j)
    {
        if (list == null)
        {
            throw new NullPointerException("The finalRules argument must not be null");
        } else
        {
            finalRules = list;
            phonemeBuilder = ;
            input = charsequence;
            i = j;
            return;
        }
    }
}
