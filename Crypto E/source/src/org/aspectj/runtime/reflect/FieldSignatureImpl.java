// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.FieldSignature;

// Referenced classes of package org.aspectj.runtime.reflect:
//            MemberSignatureImpl, SignatureImpl, StringMaker

public class FieldSignatureImpl extends MemberSignatureImpl
    implements FieldSignature
{

    Class a;

    protected String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(stringmaker.a(e()));
        if (stringmaker.b)
        {
            stringbuffer.append(stringmaker.a(b()));
        }
        if (stringmaker.b)
        {
            stringbuffer.append(" ");
        }
        stringbuffer.append(stringmaker.a(f(), g()));
        stringbuffer.append(".");
        stringbuffer.append(a());
        return stringbuffer.toString();
    }

    public Class b()
    {
        if (a == null)
        {
            a = c(3);
        }
        return a;
    }
}
