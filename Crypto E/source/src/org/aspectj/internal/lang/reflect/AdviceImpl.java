// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import org.aspectj.lang.annotation.AdviceName;
import org.aspectj.lang.reflect.Advice;
import org.aspectj.lang.reflect.AdviceKind;
import org.aspectj.lang.reflect.AjType;
import org.aspectj.lang.reflect.AjTypeSystem;
import org.aspectj.lang.reflect.PointcutExpression;

public class AdviceImpl
    implements Advice
{

    private final AdviceKind a;
    private final Method b;
    private PointcutExpression c;
    private boolean d;
    private AjType e[];
    private AjType f[];

    public AjType[] a()
    {
        if (e == null)
        {
            Class aclass[] = b.getParameterTypes();
            int i = aclass.length;
            int j = 0;
            int k = 0;
            for (; j < i; j++)
            {
                if (aclass[j].getPackage().getName().equals("org.aspectj.runtime.internal"))
                {
                    k++;
                }
            }

            e = new AjType[aclass.length - k];
            for (int l = 0; l < e.length; l++)
            {
                e[l] = AjTypeSystem.a(aclass[l]);
            }

        }
        return e;
    }

    public AjType[] b()
    {
        if (f == null)
        {
            Class aclass[] = b.getExceptionTypes();
            f = new AjType[aclass.length];
            for (int i = 0; i < aclass.length; i++)
            {
                f[i] = AjTypeSystem.a(aclass[i]);
            }

        }
        return f;
    }

    public AdviceKind c()
    {
        return a;
    }

    public String d()
    {
label0:
        {
            String s = b.getName();
            if (s.startsWith("ajc$"))
            {
                AdviceName advicename = (AdviceName)b.getAnnotation(org/aspectj/lang/annotation/AdviceName);
                if (advicename == null)
                {
                    break label0;
                }
                s = advicename.a();
            }
            return s;
        }
        return "";
    }

    public PointcutExpression e()
    {
        return c;
    }

    public String toString()
    {
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer();
        if (d().length() > 0)
        {
            stringbuffer.append("@AdviceName(\"");
            stringbuffer.append(d());
            stringbuffer.append("\") ");
        }
        if (c() == AdviceKind.e)
        {
            stringbuffer.append(b.getGenericReturnType().toString());
            stringbuffer.append(" ");
        }
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[AdviceKind.values().length];
                try
                {
                    a[AdviceKind.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[AdviceKind.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[AdviceKind.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[AdviceKind.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[AdviceKind.a.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        _cls1.a[c().ordinal()];
        JVM INSTR tableswitch 1 5: default 120
    //                   1 185
    //                   2 195
    //                   3 205
    //                   4 215
    //                   5 225;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        AjType aajtype[];
        int i;
        aajtype = a();
        i = aajtype.length;
        if (d)
        {
            i--;
        }
        for (int j = 0; j < i; j++)
        {
            stringbuffer.append(aajtype[j].a());
            if (j + 1 < i)
            {
                stringbuffer.append(",");
            }
        }

        break; /* Loop/switch isn't completed */
_L2:
        stringbuffer.append("after(");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuffer.append("after(");
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuffer.append("after(");
        continue; /* Loop/switch isn't completed */
_L5:
        stringbuffer.append("around(");
        continue; /* Loop/switch isn't completed */
_L6:
        stringbuffer.append("before(");
        if (true) goto _L1; else goto _L7
_L7:
        stringbuffer.append(") ");
        _cls1.a[c().ordinal()];
        JVM INSTR tableswitch 2 3: default 276
    //                   2 344
    //                   3 388;
           goto _L8 _L9 _L10
_L9:
        stringbuffer.append("returning");
        if (d)
        {
            stringbuffer.append("(");
            stringbuffer.append(aajtype[i - 1].a());
            stringbuffer.append(") ");
        }
_L10:
        stringbuffer.append("throwing");
        if (d)
        {
            stringbuffer.append("(");
            stringbuffer.append(aajtype[i - 1].a());
            stringbuffer.append(") ");
        }
_L8:
        AjType aajtype1[] = b();
        if (aajtype1.length > 0)
        {
            stringbuffer.append("throws ");
            for (int k = 0; k < aajtype1.length; k++)
            {
                stringbuffer.append(aajtype1[k].a());
                if (k + 1 < aajtype1.length)
                {
                    stringbuffer.append(",");
                }
            }

            stringbuffer.append(" ");
        }
        stringbuffer.append(": ");
        stringbuffer.append(e().a());
        return stringbuffer.toString();
    }
}
