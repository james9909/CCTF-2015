// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class LoadSnapMediaEvent
{
    public static final class LoadSnapMediaEventType extends Enum
    {

        public static final LoadSnapMediaEventType a;
        public static final LoadSnapMediaEventType b;
        private static final LoadSnapMediaEventType c[];

        public static LoadSnapMediaEventType valueOf(String s)
        {
            return (LoadSnapMediaEventType)Enum.valueOf(com/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType, s);
        }

        public static LoadSnapMediaEventType[] values()
        {
            return (LoadSnapMediaEventType[])c.clone();
        }

        static 
        {
            a = new LoadSnapMediaEventType("INITIATED", 0);
            b = new LoadSnapMediaEventType("ENDED", 1);
            LoadSnapMediaEventType aloadsnapmediaeventtype[] = new LoadSnapMediaEventType[2];
            aloadsnapmediaeventtype[0] = a;
            aloadsnapmediaeventtype[1] = b;
            c = aloadsnapmediaeventtype;
        }

        private LoadSnapMediaEventType(String s, int i)
        {
            super(s, i);
        }
    }


    public LoadSnapMediaEventType a;

    public LoadSnapMediaEvent(LoadSnapMediaEventType loadsnapmediaeventtype)
    {
        a = loadsnapmediaeventtype;
    }
}
