// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;


// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            SwipeStartHandler, NoSwipeStartedHandler, SingleSwipeHandler, DoubleSwipeHandler, 
//            SwipeHandlerType, ActionHandler

public class SwipeHandlerFactory
{

    private static SwipeHandlerFactory a;
    private final ActionHandler b = new SwipeStartHandler();
    private final ActionHandler c = new NoSwipeStartedHandler();
    private final ActionHandler d = new SingleSwipeHandler();
    private final ActionHandler e = new DoubleSwipeHandler();

    private SwipeHandlerFactory()
    {
    }

    public static SwipeHandlerFactory a()
    {
        if (a == null)
        {
            a = new SwipeHandlerFactory();
        }
        return a;
    }

    public ActionHandler a(SwipeHandlerType swipehandlertype)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[SwipeHandlerType.values().length];
                try
                {
                    a[SwipeHandlerType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[SwipeHandlerType.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[SwipeHandlerType.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[SwipeHandlerType.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[swipehandlertype.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return c;

        case 2: // '\002'
            return b;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;
        }
    }
}
