// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.runtime.reflect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.SourceLocation;

// Referenced classes of package org.aspectj.runtime.reflect:
//            StringMaker, SignatureImpl

class JoinPointImpl
    implements ProceedingJoinPoint
{
    static class EnclosingStaticPartImpl extends StaticPartImpl
        implements org.aspectj.lang.JoinPoint.EnclosingStaticPart
    {
    }

    static class StaticPartImpl
        implements org.aspectj.lang.JoinPoint.StaticPart
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

        public StaticPartImpl(int i, String s, Signature signature, SourceLocation sourcelocation)
        {
            a = s;
            b = signature;
            c = sourcelocation;
            d = i;
        }
    }


    Object a;
    Object b;
    Object c[];
    org.aspectj.lang.JoinPoint.StaticPart d;

    public JoinPointImpl(org.aspectj.lang.JoinPoint.StaticPart staticpart, Object obj, Object obj1, Object aobj[])
    {
        d = staticpart;
        a = obj;
        b = obj1;
        c = aobj;
    }

    public Object a()
    {
        return b;
    }

    public final String toString()
    {
        return d.toString();
    }
}
