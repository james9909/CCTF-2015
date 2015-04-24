// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.SourceLocation;

// Referenced classes of package org.aspectj.runtime.reflect:
//            StringMaker, SignatureImpl, JoinPointImpl

static class d
    implements org.aspectj.lang.icPartImpl
{

    String a;
    Signature b;
    SourceLocation c;
    private int d;

    public String a()
    {
        return a;
    }

    String a(StringMaker stringmaker)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(stringmaker.a(a()));
        stringbuffer.append("(");
        stringbuffer.append(((SignatureImpl)b()).b(stringmaker));
        stringbuffer.append(")");
        return stringbuffer.toString();
    }

    public Signature b()
    {
        return b;
    }

    public final String toString()
    {
        return a(StringMaker.k);
    }

    public (int i, String s, Signature signature, SourceLocation sourcelocation)
    {
        a = s;
        b = signature;
        c = sourcelocation;
        d = i;
    }
}
