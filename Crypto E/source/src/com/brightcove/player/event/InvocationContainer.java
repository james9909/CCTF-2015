// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.brightcove.player.event:
//            Event, Default, EventListener

class InvocationContainer
{

    private static String PROCESS_EVENT_METHOD_NAME = "processEvent";
    private static final String TAG = com/brightcove/player/event/InvocationContainer.getName();
    private static AtomicInteger count;
    private int id;
    private boolean isDefault;
    private EventListener listener;
    private boolean shouldRemove;

    public InvocationContainer(EventListener eventlistener, boolean flag)
    {
        if (eventlistener == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("listenerRequired"));
        }
        if (count == null)
        {
            count = new AtomicInteger();
        }
        id = count.incrementAndGet();
        listener = eventlistener;
        isDefault = isDefaultListener(eventlistener);
        shouldRemove = flag;
    }

    private static boolean isDefaultListener(EventListener eventlistener)
    {
        if (eventlistener != null)
        {
            boolean flag;
            try
            {
                flag = eventlistener.getClass().getMethod(PROCESS_EVENT_METHOD_NAME, new Class[] {
                    com/brightcove/player/event/Event
                }).isAnnotationPresent(com/brightcove/player/event/Default);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e(TAG, (new StringBuilder()).append(PROCESS_EVENT_METHOD_NAME).append(" method seems to be missing from this handler!").toString());
                return false;
            }
            return flag;
        } else
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("listenerRequired"));
        }
    }

    public EventListener getListener()
    {
        return listener;
    }

    public int getToken()
    {
        return id;
    }

    public int getTotalCount()
    {
        return count.get();
    }

    public boolean isDefault()
    {
        return isDefault;
    }

    public boolean shouldRemove()
    {
        return shouldRemove;
    }

    public String toString()
    {
        return (new StringBuilder()).append("InvocationContainer (").append(id).append(")").toString();
    }

}
