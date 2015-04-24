// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            ActionHandler, TouchState, SwipeHandlerType

public class SwipeStartHandler
    implements ActionHandler
{

    public SwipeStartHandler()
    {
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i)
    {
        float f = touchstate.g();
        touchstate.b(i);
        swipedispatcher.a(f);
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i, int j)
    {
        if (Math.abs(touchstate.g() - touchstate.a(0)) > (float)j && i == 1 && !swipedispatcher.f())
        {
            return SwipeHandlerType.c;
        }
        if (i > 1 && Math.abs(touchstate.h() - touchstate.a(1)) > (float)j && !swipedispatcher.f())
        {
            touchstate.a(swipedispatcher.d());
            return SwipeHandlerType.d;
        } else
        {
            return null;
        }
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, MotionEvent motionevent)
    {
        swipedispatcher.a(motionevent);
        return SwipeHandlerType.a;
    }
}
