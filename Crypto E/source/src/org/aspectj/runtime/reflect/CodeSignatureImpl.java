// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.CodeSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            MemberSignatureImpl, SignatureImpl

abstract class CodeSignatureImpl extends MemberSignatureImpl
    implements CodeSignature
{

    Class b[];
    String c[];
    Class d[];

    CodeSignatureImpl(int i, String s, Class class1, Class aclass[], String as[], Class aclass1[])
    {
        super(i, s, class1);
        b = aclass;
        c = as;
        d = aclass1;
    }

    public Class[] b()
    {
        if (b == null)
        {
            b = d(3);
        }
        return b;
    }

    public Class[] c()
    {
        if (d == null)
        {
            d = d(5);
        }
        return d;
    }
}
