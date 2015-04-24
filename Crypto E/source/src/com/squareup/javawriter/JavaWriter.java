// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.javawriter;

import java.io.Closeable;
import java.io.Writer;
import java.util.EnumSet;
import java.util.regex.Pattern;

public class JavaWriter
    implements Closeable
{
    static final class Scope extends Enum
    {

        public static final Scope a;
        public static final Scope b;
        public static final Scope c;
        public static final Scope d;
        public static final Scope e;
        public static final Scope f;
        public static final Scope g;
        public static final Scope h;
        private static final Scope i[];

        public static Scope valueOf(String s)
        {
            return (Scope)Enum.valueOf(com/squareup/javawriter/JavaWriter$Scope, s);
        }

        public static Scope[] values()
        {
            return (Scope[])i.clone();
        }

        static 
        {
            a = new Scope("TYPE_DECLARATION", 0);
            b = new Scope("ABSTRACT_METHOD", 1);
            c = new Scope("NON_ABSTRACT_METHOD", 2);
            d = new Scope("CONSTRUCTOR", 3);
            e = new Scope("CONTROL_FLOW", 4);
            f = new Scope("ANNOTATION_ATTRIBUTE", 5);
            g = new Scope("ANNOTATION_ARRAY_VALUE", 6);
            h = new Scope("INITIALIZER", 7);
            Scope ascope[] = new Scope[8];
            ascope[0] = a;
            ascope[1] = b;
            ascope[2] = c;
            ascope[3] = d;
            ascope[4] = e;
            ascope[5] = f;
            ascope[6] = g;
            ascope[7] = h;
            i = ascope;
        }

        private Scope(String s, int j)
        {
            super(s, j);
        }
    }


    private static final Pattern a = Pattern.compile("(?:[\\w$]+\\.)*([\\w\\.*$]+)");
    private static final EnumSet c;
    private final Writer b;

    public void close()
    {
        b.close();
    }

    static 
    {
        c = EnumSet.of(Scope.c, Scope.d, Scope.e, Scope.h);
    }
}
