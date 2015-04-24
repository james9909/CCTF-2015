// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.Writer;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            CharSequenceTranslator

public class OctalUnescaper extends CharSequenceTranslator
{

    public OctalUnescaper()
    {
    }

    private boolean isOctalDigit(char c)
    {
        return c >= '0' && c <= '7';
    }

    private boolean isZeroToThree(char c)
    {
        return c >= '0' && c <= '3';
    }

    public int translate(CharSequence charsequence, int i, Writer writer)
    {
        int j = -1 + (charsequence.length() - i);
        StringBuilder stringbuilder = new StringBuilder();
        if (charsequence.charAt(i) == '\\' && j > 0 && isOctalDigit(charsequence.charAt(i + 1)))
        {
            int k = i + 1;
            int l = i + 2;
            int i1 = i + 3;
            stringbuilder.append(charsequence.charAt(k));
            if (j > 1 && isOctalDigit(charsequence.charAt(l)))
            {
                stringbuilder.append(charsequence.charAt(l));
                if (j > 2 && isZeroToThree(charsequence.charAt(k)) && isOctalDigit(charsequence.charAt(i1)))
                {
                    stringbuilder.append(charsequence.charAt(i1));
                }
            }
            writer.write(Integer.parseInt(stringbuilder.toString(), 8));
            return 1 + stringbuilder.length();
        } else
        {
            return 0;
        }
    }
}
