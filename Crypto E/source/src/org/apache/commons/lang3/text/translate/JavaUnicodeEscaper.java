// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;


// Referenced classes of package org.apache.commons.lang3.text.translate:
//            UnicodeEscaper

public class JavaUnicodeEscaper extends UnicodeEscaper
{

    public JavaUnicodeEscaper(int i, int j, boolean flag)
    {
        super(i, j, flag);
    }

    public static JavaUnicodeEscaper above(int i)
    {
        return outsideOf(0, i);
    }

    public static JavaUnicodeEscaper below(int i)
    {
        return outsideOf(i, 0x7fffffff);
    }

    public static JavaUnicodeEscaper between(int i, int j)
    {
        return new JavaUnicodeEscaper(i, j, true);
    }

    public static JavaUnicodeEscaper outsideOf(int i, int j)
    {
        return new JavaUnicodeEscaper(i, j, false);
    }

    protected String toUtf16Escape(int i)
    {
        char ac[] = Character.toChars(i);
        return (new StringBuilder()).append("\\u").append(hex(ac[0])).append("\\u").append(hex(ac[1])).toString();
    }
}
