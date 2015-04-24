// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.MethodSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            CodeSignatureImpl, SignatureImpl, StringMaker

class MethodSignatureImpl extends CodeSignatureImpl
    implements MethodSignature
{

    Class a;

    MethodSignatureImpl(int i, String s, Class class1, Class aclass[], String as[], Class aclass1[], Class class2)
    {
        super(i, s, class1, aclass, as, aclass1);
        a = class2;
    }

    protected String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(stringmaker.a(e()));
        if (stringmaker.b)
        {
            stringbuffer.append(stringmaker.a(d()));
        }
        if (stringmaker.b)
        {
            stringbuffer.append(" ");
        }
        stringbuffer.append(stringmaker.a(f(), g()));
        stringbuffer.append(".");
        stringbuffer.append(a());
        stringmaker.b(stringbuffer, b());
        stringmaker.c(stringbuffer, c());
        return stringbuffer.toString();
    }

    public Class d()
    {
        if (a == null)
        {
            a = c(6);
        }
        return a;
    }
}
