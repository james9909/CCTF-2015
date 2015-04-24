// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl;

import android.util.Log;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.listener.AddLiveServiceListener;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

// Referenced classes of package com.addlive.impl:
//            ADLNativeWrapperImpl, Log, ServiceEvent, EventDescription

class data
    implements Runnable
{

    private String data;
    final ADLNativeWrapperImpl this$0;

    public void run()
    {
        ServiceEvent serviceevent;
        if (ADLNativeWrapperImpl.access$000(ADLNativeWrapperImpl.this).isInteractionsLoggingEnabled())
        {
            Log.i(ADLNativeWrapperImpl.access$000(ADLNativeWrapperImpl.this).getInteractionsLogTag(), (new StringBuilder()).append("[App <---- SDK] Event: ").append(data).toString());
        }
        Log.v("AddLive_SDK", (new StringBuilder()).append("Got an event: ").append(data).toString());
        serviceevent = new ServiceEvent(data);
        if (!serviceevent.getEvent().equals("onUserEvent")) goto _L2; else goto _L1
_L1:
        ADLNativeWrapperImpl.access$100(ADLNativeWrapperImpl.this, serviceevent);
_L5:
        EventDescription eventdescription = (EventDescription)ADLNativeWrapperImpl.access$400(ADLNativeWrapperImpl.this).get(serviceevent.getEvent());
        if (eventdescription == null)
        {
            Constructor constructor;
            Object aobj[];
            Object obj;
            Iterator iterator;
            AddLiveServiceListener addliveservicelistener;
            try
            {
                Log.e("AddLive_SDK", (new StringBuilder()).append("Cannot process an event as the event type is not supported: ").append(serviceevent.getEvent()).toString());
                return;
            }
            catch (JSONException jsonexception)
            {
                Log.e("AddLive_SDK", "Cannot process an event as there was a parse error", jsonexception);
                return;
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", invocationtargetexception);
                return;
            }
            catch (InstantiationException instantiationexception)
            {
                Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", instantiationexception);
                return;
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", illegalaccessexception);
                return;
            }
            catch (Throwable throwable)
            {
                Log.e("AddLive_SDK", "Unknown error passing an event: ", throwable);
            }
            break MISSING_BLOCK_LABEL_369;
        }
        break MISSING_BLOCK_LABEL_245;
_L2:
        if (!serviceevent.getEvent().equals("onMediaStreamEvent")) goto _L4; else goto _L3
_L3:
        ADLNativeWrapperImpl.access$200(ADLNativeWrapperImpl.this, serviceevent);
          goto _L5
_L4:
        if (!serviceevent.getEvent().equals("onConnectionLost")) goto _L5; else goto _L6
_L6:
        ADLNativeWrapperImpl.access$300(ADLNativeWrapperImpl.this, serviceevent);
          goto _L5
        constructor = eventdescription.eventConstructor;
        aobj = new Object[1];
        aobj[0] = serviceevent.getParams();
        obj = constructor.newInstance(aobj);
        for (iterator = ADLNativeWrapperImpl.access$500(ADLNativeWrapperImpl.this).iterator(); iterator.hasNext(); eventdescription.handlerMethod.invoke(addliveservicelistener, new Object[] {
    obj
}))
        {
            addliveservicelistener = (AddLiveServiceListener)iterator.next();
        }

    }

    public ner(String s)
    {
        this$0 = ADLNativeWrapperImpl.this;
        super();
        data = s;
    }
}
