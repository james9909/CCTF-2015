// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.NoAspectBoundException;

// Referenced classes of package com.googlecode.mp4parser:
//            AbstractBox

public class RequiresParseDetailAspect
{

    public static final RequiresParseDetailAspect a;
    private static Throwable b;

    public RequiresParseDetailAspect()
    {
    }

    public static RequiresParseDetailAspect a()
    {
        if (a == null)
        {
            throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", b);
        } else
        {
            return a;
        }
    }

    private static void b()
    {
        a = new RequiresParseDetailAspect();
    }

    public void a(JoinPoint joinpoint)
    {
        if (joinpoint.a() instanceof AbstractBox)
        {
            if (!((AbstractBox)joinpoint.a()).p())
            {
                ((AbstractBox)joinpoint.a()).n();
            }
            return;
        } else
        {
            throw new RuntimeException((new StringBuilder("Only methods in subclasses of ")).append(com/googlecode/mp4parser/AbstractBox.getName()).append(" can  be annotated with ParseDetail").toString());
        }
    }

    static 
    {
        try
        {
            b();
        }
        catch (Throwable throwable)
        {
            b = throwable;
        }
    }
}
