// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics.handledexceptions;

import java.util.Iterator;
import java.util.List;

public class IncompatibleVideoRecordedException extends Exception
{
    public static final class IncompatibleVideoType extends Enum
    {

        public static final IncompatibleVideoType a;
        public static final IncompatibleVideoType b;
        private static final IncompatibleVideoType c[];

        public static IncompatibleVideoType valueOf(String s)
        {
            return (IncompatibleVideoType)Enum.valueOf(com/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType, s);
        }

        public static IncompatibleVideoType[] values()
        {
            return (IncompatibleVideoType[])c.clone();
        }

        static 
        {
            a = new IncompatibleVideoType("AMR_NB", 0);
            b = new IncompatibleVideoType("H263", 1);
            IncompatibleVideoType aincompatiblevideotype[] = new IncompatibleVideoType[2];
            aincompatiblevideotype[0] = a;
            aincompatiblevideotype[1] = b;
            c = aincompatiblevideotype;
        }

        private IncompatibleVideoType(String s, int i)
        {
            super(s, i);
        }
    }


    public IncompatibleVideoRecordedException(List list)
    {
        super(a(list));
    }

    static String a(List list)
    {
        StringBuilder stringbuilder = new StringBuilder("Incompatibilities: ");
        Iterator iterator = list.iterator();
        for (String s = ""; iterator.hasNext(); s = " + ")
        {
            IncompatibleVideoType incompatiblevideotype = (IncompatibleVideoType)iterator.next();
            stringbuilder.append(s);
            stringbuilder.append(incompatiblevideotype.name());
        }

        return stringbuilder.toString();
    }
}
