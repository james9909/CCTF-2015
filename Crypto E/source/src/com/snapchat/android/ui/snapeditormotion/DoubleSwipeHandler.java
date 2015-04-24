// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            ActionHandler, TouchState, SwipeHandlerType

public class DoubleSwipeHandler
    implements ActionHandler
{

    public DoubleSwipeHandler()
    {
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i)
    {
        if (!touchstate.e() && !touchstate.f())
        {
            touchstate.b(i);
            swipedispatcher.a(touchstate.a(i));
        }
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i, int j)
    {
        boolean flag = true;
        if (i > flag)
        {
            float f = touchstate.h();
            if (Math.abs(f - touchstate.a(flag)) > (float)j)
            {
                touchstate.a(flag, 3.402823E+38F);
                if (touchstate.a())
                {
                    flag = false;
                }
                swipedispatcher.a(flag, f);
            }
        }
        return null;
    }

    public SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, MotionEvent motionevent)
    {
        if (touchstate.c())
        {
            swipedispatcher.e();
            touchstate.a(false);
            return SwipeHandlerType.a;
        }
        if (touchstate.d())
        {
            swipedispatcher.e();
        }
        return null;
    }
}
