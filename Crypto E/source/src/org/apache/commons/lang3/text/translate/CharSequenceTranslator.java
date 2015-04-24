// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            AggregateTranslator

public abstract class CharSequenceTranslator
{

    public CharSequenceTranslator()
    {
    }

    public static String hex(int i)
    {
        return Integer.toHexString(i).toUpperCase(Locale.ENGLISH);
    }

    public abstract int translate(CharSequence charsequence, int i, Writer writer);

    public final String translate(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return null;
        }
        String s;
        try
        {
            StringWriter stringwriter = new StringWriter(2 * charsequence.length());
            translate(charsequence, ((Writer) (stringwriter)));
            s = stringwriter.toString();
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return s;
    }

    public final void translate(CharSequence charsequence, Writer writer)
    {
        if (writer == null)
        {
            throw new IllegalArgumentException("The Writer must not be null");
        }
        if (charsequence != null)
        {
            int i = charsequence.length();
            int j = 0;
            while (j < i) 
            {
                int k = translate(charsequence, j, writer);
                if (k == 0)
                {
                    char ac[] = Character.toChars(Character.codePointAt(charsequence, j));
                    writer.write(ac);
                    j += ac.length;
                } else
                {
                    int l = j;
                    for (int i1 = 0; i1 < k; i1++)
                    {
                        l += Character.charCount(Character.codePointAt(charsequence, l));
                    }

                    j = l;
                }
            }
        }
    }

    public final transient CharSequenceTranslator with(CharSequenceTranslator acharsequencetranslator[])
    {
        CharSequenceTranslator acharsequencetranslator1[] = new CharSequenceTranslator[1 + acharsequencetranslator.length];
        acharsequencetranslator1[0] = this;
        System.arraycopy(acharsequencetranslator, 0, acharsequencetranslator1, 1, acharsequencetranslator.length);
        return new AggregateTranslator(acharsequencetranslator1);
    }
}
