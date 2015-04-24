// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


public class ShortNumberUtil
{
    public static final class ShortNumberCost extends Enum
    {

        public static final ShortNumberCost a;
        public static final ShortNumberCost b;
        public static final ShortNumberCost c;
        public static final ShortNumberCost d;
        private static final ShortNumberCost e[];

        public static ShortNumberCost valueOf(String s)
        {
            return (ShortNumberCost)Enum.valueOf(com/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost, s);
        }

        public static ShortNumberCost[] values()
        {
            return (ShortNumberCost[])e.clone();
        }

        static 
        {
            a = new ShortNumberCost("TOLL_FREE", 0);
            b = new ShortNumberCost("STANDARD_RATE", 1);
            c = new ShortNumberCost("PREMIUM_RATE", 2);
            d = new ShortNumberCost("UNKNOWN_COST", 3);
            ShortNumberCost ashortnumbercost[] = new ShortNumberCost[4];
            ashortnumbercost[0] = a;
            ashortnumbercost[1] = b;
            ashortnumbercost[2] = c;
            ashortnumbercost[3] = d;
            e = ashortnumbercost;
        }

        private ShortNumberCost(String s, int i)
        {
            super(s, i);
        }
    }


    public ShortNumberUtil()
    {
    }
}
