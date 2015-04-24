// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;

import java.io.Writer;

// Referenced classes of package org.apache.commons.lang3.text.translate:
//            CodePointTranslator

public class UnicodeUnpairedSurrogateRemover extends CodePointTranslator
{

    public UnicodeUnpairedSurrogateRemover()
    {
    }

    public boolean translate(int i, Writer writer)
    {
        return i >= 55296 && i <= 57343;
    }
}
