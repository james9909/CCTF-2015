// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            ActionHandler, TouchState, SwipeHandlerType

public class SingleSwipeHandler
    implements ActionHandler
{

    public SingleSwipeHandler()
    {
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i)
    {
        touchstate.b(i);
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i, int j)
    {
        swipedispatcher.a(false, touchstate.g());
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, MotionEvent motionevent)
    {
        if (touchstate.b() == 0 || touchstate.c())
        {
            swipedispatcher.e();
            return SwipeHandlerType.a;
        } else
        {
            return null;
        }
    }
}
