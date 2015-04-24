// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang.reflect;


public interface DeclareAnnotation
{
    public static final class Kind extends Enum
    {

        public static final Kind a;
        public static final Kind b;
        public static final Kind c;
        public static final Kind d;
        private static final Kind e[];

        public static Kind valueOf(String s)
        {
            return (Kind)Enum.valueOf(org/aspectj/lang/reflect/DeclareAnnotation$Kind, s);
        }

        public static Kind[] values()
        {
            return (Kind[])e.clone();
        }

        static 
        {
            a = new Kind("Field", 0);
            b = new Kind("Method", 1);
            c = new Kind("Constructor", 2);
            d = new Kind("Type", 3);
            Kind akind[] = new Kind[4];
            akind[0] = a;
            akind[1] = b;
            akind[2] = c;
            akind[3] = d;
            e = akind;
        }

        private Kind(String s, int i)
        {
            super(s, i);
        }
    }

}
