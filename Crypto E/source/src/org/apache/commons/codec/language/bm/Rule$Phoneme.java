// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.Comparator;

// Referenced classes of package org.apache.commons.codec.language.bm:
//            Rule

public static final class languages
    implements xpr
{

    public static final Comparator COMPARATOR = new Comparator() {

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Rule.Phoneme)obj, (Rule.Phoneme)obj1);
        }

        public int compare(Rule.Phoneme phoneme, Rule.Phoneme phoneme1)
        {
            int i = 0;
_L8:
            if (i >= phoneme.phonemeText.length()) goto _L2; else goto _L1
_L1:
            if (i < phoneme1.phonemeText.length()) goto _L4; else goto _L3
_L3:
            int l = 1;
_L6:
            return l;
_L4:
            int i1 = phoneme.phonemeText.charAt(i) - phoneme1.phonemeText.charAt(i);
            if (i1 != 0)
            {
                return i1;
            }
            i++;
            continue; /* Loop/switch isn't completed */
_L2:
            int j;
            int k;
            j = phoneme.phonemeText.length();
            k = phoneme1.phonemeText.length();
            l = 0;
            if (j >= k) goto _L6; else goto _L5
_L5:
            return -1;
            if (true) goto _L8; else goto _L7
_L7:
        }

    };
    private final guageSet languages;
    private final CharSequence phonemeText;

    public xpr append(CharSequence charsequence)
    {
        return new <init>((new StringBuilder()).append(phonemeText.toString()).append(charsequence.toString()).toString(), languages);
    }

    public guageSet getLanguages()
    {
        return languages;
    }

    public CharSequence getPhonemeText()
    {
        return phonemeText;
    }

    public Iterable getPhonemes()
    {
        return Collections.singleton(this);
    }

    public phonemeText join(phonemeText phonemetext)
    {
        return new <init>((new StringBuilder()).append(phonemeText.toString()).append(phonemetext.phonemeText.toString()).toString(), languages.restrictTo(phonemetext.languages));
    }



    public guageSet(CharSequence charsequence, guageSet guageset)
    {
        phonemeText = charsequence;
        languages = guageset;
    }
}
