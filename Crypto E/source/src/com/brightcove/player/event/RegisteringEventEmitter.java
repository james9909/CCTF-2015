// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.event:
//            EventEmitter, Emits, ListensFor, EventListener, 
//            Event

public class RegisteringEventEmitter
    implements EventEmitter
{

    private static String ANNOTATION_EVENTS_PROPERTY = "events";
    private String componentType;
    private boolean debug;
    private List emit;
    private EventEmitter emitter;
    private List listenFor;

    public RegisteringEventEmitter(EventEmitter eventemitter, Class class1)
    {
        debug = false;
        if (eventemitter == null || class1 == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("eventEmitterAndComponentRequired"));
        } else
        {
            emitter = eventemitter;
            componentType = class1.getSimpleName();
            emit = convertEventsFromAnnotation(class1, com/brightcove/player/event/Emits);
            listenFor = convertEventsFromAnnotation(class1, com/brightcove/player/event/ListensFor);
            eventemitter.on("debug", new EventListener() {

                final RegisteringEventEmitter this$0;

                public void processEvent(Event event)
                {
                    debug = Boolean.parseBoolean(event.properties.get("debug").toString());
                }

            
            {
                this$0 = RegisteringEventEmitter.this;
                super();
            }
            });
            return;
        }
    }

    private Map addEmitterIfDebugging(Map map)
    {
        if (!debug)
        {
            return map;
        } else
        {
            HashMap hashmap = new HashMap(1 + map.size());
            hashmap.putAll(map);
            hashmap.put("emitter", componentType);
            return hashmap;
        }
    }

    public static RegisteringEventEmitter build(EventEmitter eventemitter, Class class1)
    {
        if (eventemitter instanceof RegisteringEventEmitter)
        {
            eventemitter = ((RegisteringEventEmitter)eventemitter).getRootEmitter();
        }
        return new RegisteringEventEmitter(eventemitter, class1);
    }

    private List getAnnotations(Class class1, Class class2)
    {
        ArrayList arraylist = new ArrayList();
        Class class3 = class1.getSuperclass();
        if (class3 != null)
        {
            arraylist.addAll(getAnnotations(class3, class2));
        }
        Annotation annotation = class1.getAnnotation(class2);
        if (annotation != null)
        {
            arraylist.add(annotation);
        }
        return arraylist;
    }

    protected List convertEventsFromAnnotation(Class class1, Class class2)
    {
        String as[] = new String[0];
        ArrayList arraylist = new ArrayList();
        List list = getAnnotations(class1, class2);
        if (list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            String as1[] = as;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Annotation annotation = (Annotation)iterator.next();
                String as2[];
                try
                {
                    as2 = (String[])(String[])annotation.getClass().getMethod(ANNOTATION_EVENTS_PROPERTY, new Class[0]).invoke(annotation, new Object[0]);
                }
                catch (Exception exception)
                {
                    Log.e("Component", (new StringBuilder()).append("Error attempting to invoke ").append(ANNOTATION_EVENTS_PROPERTY).append(" on annotation ").append(class2.getName()).append(": ").append(exception.getMessage()).toString());
                    as2 = as1;
                }
                arraylist.addAll(Arrays.asList(as2));
                as1 = as2;
            } while (true);
        } else
        {
            String s = ErrorUtil.getMessage("annotationRequired");
            Object aobj[] = new Object[1];
            aobj[0] = class2.getName();
            throw new RuntimeException(String.format(s, aobj));
        }
        return arraylist;
    }

    public void disable()
    {
        emitter.disable();
    }

    public void emit(String s)
    {
        Map map;
        if (debug)
        {
            map = Collections.singletonMap("emitter", componentType);
        } else
        {
            map = Collections.emptyMap();
        }
        if (emit.contains(s))
        {
            emitter.emit(s, map);
            return;
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] {
                s
            }));
        }
    }

    public void emit(String s, Map map)
    {
        if (emit.contains(s))
        {
            emitter.emit(s, addEmitterIfDebugging(map));
            return;
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] {
                s
            }));
        }
    }

    public void enable()
    {
        emitter.enable();
    }

    public List getAllowedEmittedEvents()
    {
        return emit;
    }

    public List getAllowedListenEvents()
    {
        return listenFor;
    }

    public EventEmitter getRootEmitter()
    {
        return emitter;
    }

    public void off()
    {
        emitter.off();
    }

    public void off(String s, int i)
    {
        emitter.off(s, i);
    }

    public int on(String s, EventListener eventlistener)
    {
        if (listenFor.contains(s))
        {
            return emitter.on(s, eventlistener);
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToListen"), new Object[] {
                s
            }));
        }
    }

    public int once(String s, EventListener eventlistener)
    {
        if (listenFor.contains(s))
        {
            return emitter.once(s, eventlistener);
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToListen"), new Object[] {
                s
            }));
        }
    }

    public void request(String s, EventListener eventlistener)
    {
        if (emit.contains(s))
        {
            emitter.request(s, eventlistener);
            return;
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] {
                s
            }));
        }
    }

    public void request(String s, Map map, EventListener eventlistener)
    {
        if (emit.contains(s))
        {
            emitter.request(s, map, eventlistener);
            return;
        } else
        {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] {
                s
            }));
        }
    }

    public void respond(Event event)
    {
        emitter.respond(event);
    }

    public void respond(Map map)
    {
        emitter.respond(map);
    }



/*
    static boolean access$002(RegisteringEventEmitter registeringeventemitter, boolean flag)
    {
        registeringeventemitter.debug = flag;
        return flag;
    }

*/
}
