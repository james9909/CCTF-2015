// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.ConstructorSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            CodeSignatureImpl, SignatureImpl, StringMaker

class ConstructorSignatureImpl extends CodeSignatureImpl
    implements ConstructorSignature
{

    public String a()
    {
        return "<init>";
    }

    protected String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(stringmaker.a(e()));
        stringbuffer.append(stringmaker.a(f(), g()));
        stringmaker.b(stringbuffer, b());
        stringmaker.c(stringbuffer, c());
        return stringbuffer.toString();
    }
}
