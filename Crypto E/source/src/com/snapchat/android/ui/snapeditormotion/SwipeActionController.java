// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            SwipeHandlerFactory, NoSwipeStartedHandler, TouchState, ActionHandler

public class SwipeActionController
{

    private ActionHandler a;
    private int b;
    private final TouchState c;
    private final SwipeDispatcher d;
    private final SwipeHandlerFactory e = SwipeHandlerFactory.a();

    public SwipeActionController(int i, SwipeDispatcher swipedispatcher, TouchState touchstate)
    {
        b = i;
        c = touchstate;
        d = swipedispatcher;
        a(new NoSwipeStartedHandler());
    }

    public void a(MotionEvent motionevent)
    {
        int i = motionevent.getActionMasked();
        int j = motionevent.getActionIndex();
        int k = motionevent.getPointerId(j);
        if (j <= 1 || i != 0 && i != 5 && i != 2)
        {
            boolean flag;
            SwipeHandlerType swipehandlertype;
            if (i == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c.a(motionevent);
            if (flag || i == 5)
            {
                int l = 0;
                if (!flag)
                {
                    l = 1;
                }
                swipehandlertype = a.a(d, c, l);
            } else
            if (i == 2)
            {
                int i1 = motionevent.getPointerCount();
                swipehandlertype = a.a(d, c, i1, b);
            } else
            if (i == 1 || i == 6 || i == 3)
            {
                c.a(k, -1);
                swipehandlertype = a.a(d, c, motionevent);
            } else
            {
                swipehandlertype = null;
            }
            if (swipehandlertype != null)
            {
                a = e.a(swipehandlertype);
                return;
            }
        }
    }

    protected void a(ActionHandler actionhandler)
    {
        a = actionhandler;
    }
}
