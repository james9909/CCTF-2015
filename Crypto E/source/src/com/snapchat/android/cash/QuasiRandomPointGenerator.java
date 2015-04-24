// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import android.graphics.Point;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

// Referenced classes of package com.snapchat.android.cash:
//            PointGenerator

public class QuasiRandomPointGenerator
    implements PointGenerator
{
    public static class Builder
    {

        private int a;
        private int b;
        private int c;

        static int a(Builder builder)
        {
            return builder.a;
        }

        static int b(Builder builder)
        {
            return builder.b;
        }

        static int c(Builder builder)
        {
            return builder.c;
        }

        public Builder a(int i)
        {
            a = i;
            return this;
        }

        public QuasiRandomPointGenerator a()
        {
            return new QuasiRandomPointGenerator(this);
        }

        public Builder b(int i)
        {
            b = i;
            return this;
        }

        public Builder c(int i)
        {
            c = i;
            return this;
        }

        public Builder()
        {
        }
    }


    private final int a;
    private final int b;
    private final int c;
    private Random d;
    private Set e;
    private final int f;

    private QuasiRandomPointGenerator(Builder builder)
    {
        d = new Random();
        e = new HashSet();
        a = Builder.a(builder);
        b = Builder.b(builder);
        c = (int)(1.5F * (float)Builder.c(builder));
        f = 1 + Math.max(a / c, b / c);
    }


    private Integer b(Point point)
    {
        return Integer.valueOf((point.x * f) / c + point.y / c);
    }

    public Point a()
    {
_L2:
label0:
        {
            Point point = new Point(d.nextInt(a - c) + c / 2, d.nextInt(b - c) + c / 2);
            Integer integer = b(point);
            synchronized (e)
            {
                if (e.contains(integer))
                {
                    break label0;
                }
                e.add(integer);
            }
            return point;
        }
        set;
        JVM INSTR monitorexit ;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Point point)
    {
        synchronized (e)
        {
            e.remove(b(point));
        }
        return;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
