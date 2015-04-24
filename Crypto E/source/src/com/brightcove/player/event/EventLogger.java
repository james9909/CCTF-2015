// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.brightcove.player.event:
//            EventEmitter, EventListener, Event

public class EventLogger
{

    private static final String DEFAULT_TAG = "EventLogger";
    private int currentListenerToken;
    private EventEmitter emitter;
    private ArrayList excludeList;
    private EventListener genericListener;
    private String tag;
    private boolean verbose;

    public EventLogger(EventEmitter eventemitter, boolean flag)
    {
        this(eventemitter, flag, "EventLogger");
    }

    public EventLogger(EventEmitter eventemitter, boolean flag, String s)
    {
        currentListenerToken = 0;
        excludeList = new ArrayList();
        emitter = eventemitter;
        verbose = flag;
        tag = s;
        excludeList.add("bufferedUpdate");
        excludeList.add("progress");
        start();
    }

    public void addExclude(String s)
    {
        if (!excludeList.contains(s))
        {
            excludeList.add(s);
        }
    }

    public void clearExcludes()
    {
        excludeList.clear();
    }

    public void removeExclude(String s)
    {
        excludeList.remove(s);
    }

    public void setVerbose(boolean flag)
    {
        verbose = flag;
    }

    public void start()
    {
        stop();
        genericListener = new EventListener() {

            final EventLogger this$0;

            public void processEvent(Event event)
            {
                if (!excludeList.contains(event.getType()))
                {
                    StringBuffer stringbuffer = new StringBuffer(event.getType());
                    Object obj = event.properties.get("emitter");
                    if (obj != null)
                    {
                        stringbuffer.append(" (");
                        stringbuffer.append(obj);
                        stringbuffer.append(')');
                    }
                    if (verbose)
                    {
                        stringbuffer.append(" { ");
                        for (Iterator iterator = event.properties.entrySet().iterator(); iterator.hasNext(); stringbuffer.append(' '))
                        {
                            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                            stringbuffer.append((String)entry.getKey());
                            stringbuffer.append(": ");
                            stringbuffer.append(entry.getValue());
                        }

                        stringbuffer.append('}');
                    }
                    Log.d(tag, stringbuffer.toString());
                    if ("error".equals(event.getType()) && event.properties.containsKey("error"))
                    {
                        Log.e("EventLogger", "Unhandled error event", (Throwable)event.properties.get("error"));
                        return;
                    }
                }
            }

            
            {
                this$0 = EventLogger.this;
                super();
            }
        };
        currentListenerToken = emitter.on("*", genericListener);
    }

    public void stop()
    {
        if (currentListenerToken > 0)
        {
            emitter.off("*", currentListenerToken);
            currentListenerToken = 0;
        }
    }



}
