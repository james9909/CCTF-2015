// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.internal.lang.reflect;

import org.aspectj.lang.reflect.PerClauseKind;
import org.aspectj.lang.reflect.PointcutBasedPerClause;
import org.aspectj.lang.reflect.PointcutExpression;

// Referenced classes of package org.aspectj.internal.lang.reflect:
//            PerClauseImpl

public class PointcutBasedPerClauseImpl extends PerClauseImpl
    implements PointcutBasedPerClause
{

    private final PointcutExpression a;

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[PerClauseKind.values().length];
                try
                {
                    a[PerClauseKind.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[PerClauseKind.e.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[PerClauseKind.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[PerClauseKind.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls1.a[a().ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 74
    //                   2 84
    //                   3 94
    //                   4 104;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        stringbuffer.append(a.a());
        stringbuffer.append(")");
        return stringbuffer.toString();
_L2:
        stringbuffer.append("percflow(");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuffer.append("percflowbelow(");
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuffer.append("pertarget(");
        continue; /* Loop/switch isn't completed */
_L5:
        stringbuffer.append("perthis(");
        if (true) goto _L1; else goto _L6
_L6:
    }
}
