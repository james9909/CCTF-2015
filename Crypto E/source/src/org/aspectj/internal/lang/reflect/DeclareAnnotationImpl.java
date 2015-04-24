// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.DeclareAnnotation;
import org.aspectj.lang.reflect.SignaturePattern;
import org.aspectj.lang.reflect.TypePattern;

public class DeclareAnnotationImpl
    implements DeclareAnnotation
{

    private String a;
    private org.aspectj.lang.reflect.DeclareAnnotation.Kind b;
    private TypePattern c;
    private SignaturePattern d;

    public org.aspectj.lang.reflect.DeclareAnnotation.Kind a()
    {
        return b;
    }

    public SignaturePattern b()
    {
        return d;
    }

    public TypePattern c()
    {
        return c;
    }

    public String d()
    {
        return a;
    }

    public String toString()
    {
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer();
        stringbuffer.append("declare @");
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[org.aspectj.lang.reflect.DeclareAnnotation.Kind.values().length];
                try
                {
                    a[org.aspectj.lang.reflect.DeclareAnnotation.Kind.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[org.aspectj.lang.reflect.DeclareAnnotation.Kind.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[org.aspectj.lang.reflect.DeclareAnnotation.Kind.a.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[org.aspectj.lang.reflect.DeclareAnnotation.Kind.c.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls1.a[a().ordinal()];
        JVM INSTR tableswitch 1 4: default 56
    //                   1 77
    //                   2 101
    //                   3 125
    //                   4 149;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        stringbuffer.append(" : ");
        stringbuffer.append(d());
        return stringbuffer.toString();
_L2:
        stringbuffer.append("type : ");
        stringbuffer.append(c().a());
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuffer.append("method : ");
        stringbuffer.append(b().a());
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuffer.append("field : ");
        stringbuffer.append(b().a());
        continue; /* Loop/switch isn't completed */
_L5:
        stringbuffer.append("constructor : ");
        stringbuffer.append(b().a());
        if (true) goto _L1; else goto _L6
_L6:
    }
}
