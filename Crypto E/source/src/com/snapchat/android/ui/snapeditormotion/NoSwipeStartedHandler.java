// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            ActionHandler, TouchState, SwipeHandlerType

public class NoSwipeStartedHandler
    implements ActionHandler
{

    public NoSwipeStartedHandler()
    {
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i)
    {
        if (i == 0)
        {
            touchstate.b(0);
            swipedispatcher.a(touchstate.g());
            return SwipeHandlerType.b;
        } else
        {
            return null;
        }
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i, int j)
    {
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, MotionEvent motionevent)
    {
        return null;
    }
}
