// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SpyRelativeLayout extends RelativeLayout
{
    public static interface SpyListener
    {

        public abstract void a(MotionEvent motionevent);
    }


    private List a;

    public SpyRelativeLayout(Context context)
    {
        super(context);
        a = new ArrayList();
    }

    public SpyRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
    }

    public SpyRelativeLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new ArrayList();
    }

    public void a(SpyListener spylistener)
    {
        if (spylistener == null)
        {
            throw new NullPointerException();
        } else
        {
            a.add(spylistener);
            return;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((SpyListener)iterator.next()).a(motionevent)) { }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((SpyListener)iterator.next()).a(motionevent)) { }
        return true;
    }
}
