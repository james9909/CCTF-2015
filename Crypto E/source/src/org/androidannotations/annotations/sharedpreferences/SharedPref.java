// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidannotations.annotations.sharedpreferences;

import java.lang.annotation.Annotation;

public interface SharedPref
    extends Annotation
{
    public static final class Scope extends Enum
    {

        public static final Scope a;
        public static final Scope b;
        public static final Scope c;
        public static final Scope d;
        private static final Scope e[];

        public static Scope valueOf(String s)
        {
            return (Scope)Enum.valueOf(org/androidannotations/annotations/sharedpreferences/SharedPref$Scope, s);
        }

        public static Scope[] values()
        {
            return (Scope[])e.clone();
        }

        static 
        {
            a = new Scope("APPLICATION_DEFAULT", 0);
            b = new Scope("ACTIVITY", 1);
            c = new Scope("ACTIVITY_DEFAULT", 2);
            d = new Scope("UNIQUE", 3);
            Scope ascope[] = new Scope[4];
            ascope[0] = a;
            ascope[1] = b;
            ascope[2] = c;
            ascope[3] = d;
            e = ascope;
        }

        private Scope(String s, int i)
        {
            super(s, i);
        }
    }

}
