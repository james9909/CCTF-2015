// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

public class BufferingEventListener
    implements EventListener
{
    public static interface BufferingCallback
    {

        public abstract void a();

        public abstract void b();
    }


    private final BufferingCallback a;
    private int b;
    private int c;

    public BufferingEventListener(BufferingCallback bufferingcallback)
    {
        c = 0;
        a = bufferingcallback;
    }

    public void processEvent(Event event)
    {
        if (event.getType().equals("progress"))
        {
            int i = event.getIntegerProperty("playheadPosition");
            if (b == i)
            {
                c = 1 + c;
                if (c == 3)
                {
                    a.a();
                    return;
                }
            } else
            {
                if (c >= 3)
                {
                    a.b();
                }
                c = 0;
                b = i;
                return;
            }
        }
    }
}
