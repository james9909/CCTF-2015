// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.util.StringTokenizer;
import org.aspectj.lang.reflect.AdviceSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            CodeSignatureImpl, StringMaker, SignatureImpl

class AdviceSignatureImpl extends CodeSignatureImpl
    implements AdviceSignature
{

    Class a;

    private String a(String s)
    {
        if (s.indexOf('$') != -1) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1;
        StringTokenizer stringtokenizer = new StringTokenizer(s, "$");
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                continue; /* Loop/switch isn't completed */
            }
            s1 = stringtokenizer.nextToken();
        } while (!s1.startsWith("before") && !s1.startsWith("after") && !s1.startsWith("around"));
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return s1;
    }

    protected String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (stringmaker.b)
        {
            stringbuffer.append(stringmaker.a(v_()));
        }
        if (stringmaker.b)
        {
            stringbuffer.append(" ");
        }
        stringbuffer.append(stringmaker.a(f(), g()));
        stringbuffer.append(".");
        stringbuffer.append(a(a()));
        stringmaker.b(stringbuffer, b());
        stringmaker.c(stringbuffer, c());
        return stringbuffer.toString();
    }

    public Class v_()
    {
        if (a == null)
        {
            a = c(6);
        }
        return a;
    }
}
