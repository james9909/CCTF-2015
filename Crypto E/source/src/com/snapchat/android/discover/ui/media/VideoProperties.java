// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;


public class VideoProperties
{
    public static final class Protocol extends Enum
    {

        public static final Protocol a;
        public static final Protocol b;
        private static final Protocol c[];

        public static Protocol valueOf(String s)
        {
            return (Protocol)Enum.valueOf(com/snapchat/android/discover/ui/media/VideoProperties$Protocol, s);
        }

        public static Protocol[] values()
        {
            return (Protocol[])c.clone();
        }

        static 
        {
            a = new Protocol("MP4", 0);
            b = new Protocol("HLS", 1);
            Protocol aprotocol[] = new Protocol[2];
            aprotocol[0] = a;
            aprotocol[1] = b;
            c = aprotocol;
        }

        private Protocol(String s, int i)
        {
            super(s, i);
        }
    }


    private final Protocol a;
    private final String b;
    private final Integer c;
    private final Integer d;

    public VideoProperties(String s, Protocol protocol)
    {
        this(s, protocol, Integer.valueOf(-1), Integer.valueOf(-1));
    }

    public VideoProperties(String s, Protocol protocol, Integer integer, Integer integer1)
    {
        b = s;
        a = protocol;
        c = integer;
        d = integer1;
    }

    public String a()
    {
        return b;
    }

    public Protocol b()
    {
        return a;
    }

    public Integer c()
    {
        return c;
    }

    public Integer d()
    {
        return d;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = b().name();
        aobj[1] = a();
        return String.format("[%s %s]", aobj);
    }
}
