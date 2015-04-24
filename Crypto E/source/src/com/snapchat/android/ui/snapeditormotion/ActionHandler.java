// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;

import android.view.MotionEvent;
import com.snapchat.android.ui.SwipeDispatcher;

// Referenced classes of package com.snapchat.android.ui.snapeditormotion:
//            TouchState, SwipeHandlerType

public interface ActionHandler
{

    public abstract SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i);

    public abstract SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, int i, int j);

    public abstract SwipeHandlerType a(SwipeDispatcher swipedispatcher, TouchState touchstate, MotionEvent motionevent);
}
