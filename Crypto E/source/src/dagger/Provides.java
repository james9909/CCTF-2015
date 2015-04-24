// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger;

import java.lang.annotation.Annotation;

public interface Provides
    extends Annotation
{
    public static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        public static final Type c;
        private static final Type d[];

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(dagger/Provides$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])d.clone();
        }

        static 
        {
            a = new Type("UNIQUE", 0);
            b = new Type("SET", 1);
            c = new Type("SET_VALUES", 2);
            Type atype[] = new Type[3];
            atype[0] = a;
            atype[1] = b;
            atype[2] = c;
            d = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

}
