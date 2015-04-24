// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            Scrollable, ObservableScrollViewCallbacks, ScrollState

public class ObservableScrollView extends ScrollView
    implements Scrollable
{
    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState a(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public SavedState[] a(int j)
            {
                return new SavedState[j];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int j)
            {
                return a(j);
            }

        };
        int a;
        int b;

        public void writeToParcel(Parcel parcel, int j)
        {
            super.writeToParcel(parcel, j);
            parcel.writeInt(a);
            parcel.writeInt(b);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readInt();
            b = parcel.readInt();
        }


        private SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }

    }


    private int a;
    private int b;
    private ObservableScrollViewCallbacks c;
    private ScrollState d;
    private boolean e;
    private boolean f;
    private boolean g;
    private MotionEvent h;
    private ViewGroup i;

    public ObservableScrollView(Context context)
    {
        super(context);
    }

    public ObservableScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ObservableScrollView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
    }

    public int getCurrentScrollY()
    {
        return b;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (c == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 34;
           goto _L2 _L3
_L2:
        return super.onInterceptTouchEvent(motionevent);
_L3:
        f = true;
        e = true;
        c.a();
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        a = savedstate.a;
        b = savedstate.b;
        super.onRestoreInstanceState(savedstate.getSuperState());
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = a;
        savedstate.b = b;
        return savedstate;
    }

    protected void onScrollChanged(int j, int k, int l, int i1)
    {
        super.onScrollChanged(j, k, l, i1);
        if (c == null) goto _L2; else goto _L1
_L1:
        b = k;
        c.a(k, e, f);
        if (e)
        {
            e = false;
        }
        if (a >= k) goto _L4; else goto _L3
_L3:
        d = ScrollState.b;
_L6:
        a = k;
_L2:
        return;
_L4:
        if (k < a)
        {
            d = ScrollState.c;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1 = 0.0F;
        if (c == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 1 3: default 40
    //                   1 46
    //                   2 72
    //                   3 46;
           goto _L2 _L3 _L4 _L3
_L2:
        return super.onTouchEvent(motionevent);
_L3:
        g = false;
        f = false;
        c.a(d);
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (h == null)
        {
            h = motionevent;
        }
        float f2 = motionevent.getY() - h.getY();
        h = MotionEvent.obtainNoHistory(motionevent);
        if ((float)getCurrentScrollY() - f2 <= 0.0F)
        {
            if (g)
            {
                return false;
            }
            ViewGroup viewgroup;
            Object obj;
            float f3;
            if (i == null)
            {
                viewgroup = (ViewGroup)getParent();
            } else
            {
                viewgroup = i;
            }
            obj = this;
            f3 = 0.0F;
            for (; obj != null && obj != viewgroup; obj = (View)((View) (obj)).getParent())
            {
                f3 += ((View) (obj)).getLeft() - ((View) (obj)).getScrollX();
                f1 += ((View) (obj)).getTop() - ((View) (obj)).getScrollY();
            }

            MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
            motionevent1.offsetLocation(f3, f1);
            if (viewgroup.onInterceptTouchEvent(motionevent1))
            {
                g = true;
                motionevent1.setAction(0);
                post(new Runnable(viewgroup, motionevent1) {

                    final ViewGroup a;
                    final MotionEvent b;
                    final ObservableScrollView c;

                    public void run()
                    {
                        a.dispatchTouchEvent(b);
                    }

            
            {
                c = ObservableScrollView.this;
                a = viewgroup;
                b = motionevent;
                super();
            }
                });
                return false;
            } else
            {
                return super.onTouchEvent(motionevent);
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void setScrollViewCallbacks(ObservableScrollViewCallbacks observablescrollviewcallbacks)
    {
        c = observablescrollviewcallbacks;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewgroup)
    {
        i = viewgroup;
    }
}
