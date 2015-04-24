// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.brightcove.player.event:
//            EventEmitter, Event, InvocationContainer, EventListener

public class EventEmitterImpl
    implements EventEmitter
{

    private static final String EVENT_KEY = "event";
    private static final String PROPERTY_PREFIX_KEY = "prop_";
    private String TAG;
    protected Handler handler;
    private boolean isEnabled;
    private Map listeners;

    public EventEmitterImpl()
    {
        TAG = "EventEmitterImpl";
        isEnabled = true;
        TAG = toString();
        handler = new Handler() {

            final EventEmitterImpl this$0;

            public void handleMessage(Message message)
            {
                Map map = (Map)message.obj;
                String s = (String)map.get("event");
                Event event = new Event(s);
                unpackProperties(map, event);
                invokeListenersForEventType(event, "*");
                if (s.equals("response"))
                {
                    invokeResponseListener(event);
                    return;
                } else
                {
                    invokeListenersForEvent(event);
                    return;
                }
            }

            
            {
                this$0 = EventEmitterImpl.this;
                super();
            }
        };
        listeners = new HashMap();
    }

    private ArrayList getInvocations(String s)
    {
        if (listeners.containsKey(s))
        {
            return (ArrayList)listeners.get(s);
        } else
        {
            ArrayList arraylist = new ArrayList();
            listeners.put(s, arraylist);
            return arraylist;
        }
    }

    private void invokeListenersForEvent(Event event)
    {
        invokeListenersForEventType(event, event.getType());
    }

    private void invokeListenersForEventType(Event event, String s)
    {
        ArrayList arraylist = getInvocations(s);
        Iterator iterator = ((List)arraylist.clone()).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            InvocationContainer invocationcontainer = (InvocationContainer)iterator.next();
            if (!invocationcontainer.isDefault() && !event.isStopped() || invocationcontainer.isDefault() && !event.isPrevented())
            {
                try
                {
                    invocationcontainer.getListener().processEvent(event);
                }
                catch (Throwable throwable)
                {
                    Log.e(TAG, "processEvent() threw a throwable.", throwable);
                }
                if (invocationcontainer.shouldRemove())
                {
                    arraylist.remove(invocationcontainer);
                }
            }
        } while (true);
    }

    private void invokeResponseListener(Event event)
    {
        ArrayList arraylist = getInvocations(event.getType());
        int i = event.getIntegerProperty("requestToken");
        InvocationContainer invocationcontainer = getInvocationContainerByToken(arraylist, i);
        if (invocationcontainer != null)
        {
            try
            {
                invocationcontainer.getListener().processEvent(event);
            }
            catch (Throwable throwable)
            {
                Log.e(TAG, "processEvent() threw a throwable.", throwable);
            }
            off(event.getType(), i);
        }
    }

    private int on(String s, EventListener eventlistener, boolean flag)
    {
        int i = -1;
        if (!isEnabled) goto _L2; else goto _L1
_L1:
        if (s == null || eventlistener == null) goto _L4; else goto _L3
_L3:
        ArrayList arraylist;
        InvocationContainer invocationcontainer;
        arraylist = getInvocations(s);
        invocationcontainer = new InvocationContainer(eventlistener, flag);
        if (!invocationcontainer.isDefault() && !arraylist.isEmpty() && ((InvocationContainer)arraylist.get(-1 + arraylist.size())).isDefault()) goto _L6; else goto _L5
_L5:
        arraylist.add(invocationcontainer);
_L8:
        i = invocationcontainer.getToken();
_L2:
        return i;
_L6:
        int j = arraylist.size();
        int k = 0;
        do
        {
            if (k >= j)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (((InvocationContainer)arraylist.get(k)).isDefault())
            {
                arraylist.add(k, invocationcontainer);
                continue; /* Loop/switch isn't completed */
            }
            k++;
        } while (true);
_L4:
        Log.e(TAG, (new StringBuilder()).append("Invalid input provided to on: evenType = ").append(s).append(", listener = ").append(eventlistener).toString());
        throw new IllegalArgumentException(ErrorUtil.getMessage("eventTypeAndListenerRequired"));
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void packProperties(Map map, Map map1)
    {
        String s;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); map1.put((new StringBuilder()).append("prop_").append(s).toString(), map.get(s)))
        {
            s = (String)iterator.next();
        }

    }

    private void unpackProperties(Map map, Event event)
    {
        int i = "prop_".length();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (s.startsWith("prop_"))
            {
                event.properties.put(s.substring(i), map.get(s));
            }
        } while (true);
    }

    public void disable()
    {
        isEnabled = false;
    }

    public void emit(String s)
    {
        emit(s, Collections.emptyMap());
    }

    public void emit(String s, Map map)
    {
label0:
        {
            if (isEnabled)
            {
                if (s == null)
                {
                    break label0;
                }
                Message message = Message.obtain();
                HashMap hashmap = new HashMap();
                hashmap.put("event", s);
                if (!map.isEmpty())
                {
                    packProperties(map, hashmap);
                }
                message.obj = hashmap;
                handler.sendMessage(message);
            }
            return;
        }
        Log.e(TAG, "Received an emit without an EventType");
        throw new IllegalArgumentException(ErrorUtil.getMessage("invalidEmit"));
    }

    public void enable()
    {
        isEnabled = true;
    }

    protected InvocationContainer getInvocationContainerByToken(List list, int i)
    {
        int j = getInvocationContainerPositionByToken(list, i);
        InvocationContainer invocationcontainer = null;
        if (j >= 0)
        {
            invocationcontainer = (InvocationContainer)list.get(j);
        }
        return invocationcontainer;
    }

    protected int getInvocationContainerPositionByToken(List list, int i)
    {
        int j = list.size();
        for (int k = 0; k < j; k++)
        {
            if (((InvocationContainer)list.get(k)).getToken() == i)
            {
                return k;
            }
        }

        return -1;
    }

    public void off()
    {
        listeners.clear();
    }

    public void off(String s, int i)
    {
        if (i > -1)
        {
            ArrayList arraylist = getInvocations(s);
            int j = getInvocationContainerPositionByToken(arraylist, i);
            if (j > -1)
            {
                arraylist.remove(j);
            }
            return;
        } else
        {
            Log.w(TAG, (new StringBuilder()).append("Off attempted for invalid token of ").append(i).toString());
            return;
        }
    }

    public int on(String s, EventListener eventlistener)
    {
        return on(s, eventlistener, false);
    }

    public int once(String s, EventListener eventlistener)
    {
        return on(s, eventlistener, true);
    }

    public void request(String s, EventListener eventlistener)
    {
        request(s, ((Map) (new HashMap())), eventlistener);
    }

    public void request(String s, Map map, EventListener eventlistener)
    {
        if (isEnabled)
        {
            int i = once("response", eventlistener);
            Object obj;
            if (map == null)
            {
                obj = new HashMap();
            } else
            {
                obj = map;
            }
            try
            {
                ((Map) (obj)).put("requestToken", Integer.valueOf(i));
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                HashMap hashmap = new HashMap(((Map) (obj)));
                hashmap.put("requestToken", Integer.valueOf(i));
                obj = hashmap;
            }
            emit(s, ((Map) (obj)));
        }
    }

    public void respond(Event event)
    {
        respond(event.properties);
    }

    public void respond(Map map)
    {
label0:
        {
            if (isEnabled)
            {
                if (!map.containsKey("requestToken"))
                {
                    break label0;
                }
                emit("response", map);
            }
            return;
        }
        Log.d(TAG, "Respond attempted without an requestToken");
    }




}
