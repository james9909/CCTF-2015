// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;
import org.aspectj.lang.reflect.InitializerSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            CodeSignatureImpl, SignatureImpl, StringMaker

class InitializerSignatureImpl extends CodeSignatureImpl
    implements InitializerSignature
{

    public String a()
    {
        if (Modifier.isStatic(e()))
        {
            return "<clinit>";
        } else
        {
            return "<init>";
        }
    }

    protected String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(stringmaker.a(e()));
        stringbuffer.append(stringmaker.a(f(), g()));
        stringbuffer.append(".");
        stringbuffer.append(a());
        return stringbuffer.toString();
    }
}
