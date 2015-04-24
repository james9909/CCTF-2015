// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.Writer;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            CharSequenceTranslator

public class UnicodeUnescaper extends CharSequenceTranslator
{

    public UnicodeUnescaper()
    {
    }

    public int translate(CharSequence charsequence, int i, Writer writer)
    {
        if (charsequence.charAt(i) == '\\' && i + 1 < charsequence.length() && charsequence.charAt(i + 1) == 'u')
        {
            int j;
            for (j = 2; i + j < charsequence.length() && charsequence.charAt(i + j) == 'u'; j++) { }
            if (i + j < charsequence.length() && charsequence.charAt(i + j) == '+')
            {
                j++;
            }
            if (4 + (i + j) <= charsequence.length())
            {
                CharSequence charsequence1 = charsequence.subSequence(i + j, 4 + (i + j));
                try
                {
                    writer.write((char)Integer.parseInt(charsequence1.toString(), 16));
                }
                catch (NumberFormatException numberformatexception)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Unable to parse unicode value: ").append(charsequence1).toString(), numberformatexception);
                }
                return j + 4;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Less than 4 hex digits in unicode value: '").append(charsequence.subSequence(i, charsequence.length())).append("' due to end of CharSequence").toString());
            }
        } else
        {
            return 0;
        }
    }
}
