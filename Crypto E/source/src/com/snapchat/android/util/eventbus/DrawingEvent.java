// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class DrawingEvent
{
    public static final class DrawingEventType extends Enum
    {

        public static final DrawingEventType a;
        public static final DrawingEventType b;
        private static final DrawingEventType c[];

        public static DrawingEventType valueOf(String s)
        {
            return (DrawingEventType)Enum.valueOf(com/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType, s);
        }

        public static DrawingEventType[] values()
        {
            return (DrawingEventType[])c.clone();
        }

        static 
        {
            a = new DrawingEventType("COMPLETED_STROKE", 0);
            b = new DrawingEventType("STARTED_STROKE", 1);
            DrawingEventType adrawingeventtype[] = new DrawingEventType[2];
            adrawingeventtype[0] = a;
            adrawingeventtype[1] = b;
            c = adrawingeventtype;
        }

        private DrawingEventType(String s, int i)
        {
            super(s, i);
        }
    }


    private final DrawingEventType a;

    public DrawingEvent(DrawingEventType drawingeventtype)
    {
        a = drawingeventtype;
    }

    public DrawingEventType a()
    {
        return a;
    }
}
