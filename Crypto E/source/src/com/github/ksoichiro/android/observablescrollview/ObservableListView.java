// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            Scrollable, ObservableScrollViewCallbacks, ScrollState

public class ObservableListView extends ListView
    implements Scrollable
{
    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState a(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public SavedState[] a(int i1)
            {
                return new SavedState[i1];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object[] newArray(int i1)
            {
                return a(i1);
            }

        };
        int a;
        int b;
        int c;
        int d;
        int e;
        SparseIntArray f;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
            parcel.writeInt(b);
            parcel.writeInt(c);
            parcel.writeInt(d);
            parcel.writeInt(e);
            int j1;
            int k1;
            if (f == null)
            {
                j1 = 0;
            } else
            {
                j1 = f.size();
            }
            parcel.writeInt(j1);
            k1 = 0;
            if (j1 > 0)
            {
                for (; k1 < j1; k1++)
                {
                    parcel.writeInt(f.keyAt(k1));
                    parcel.writeInt(f.valueAt(k1));
                }

            }
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            b = -1;
            a = parcel.readInt();
            b = parcel.readInt();
            c = parcel.readInt();
            d = parcel.readInt();
            e = parcel.readInt();
            f = new SparseIntArray();
            int i1 = parcel.readInt();
            if (i1 > 0)
            {
                for (int j1 = 0; j1 < i1; j1++)
                {
                    int k1 = parcel.readInt();
                    int l1 = parcel.readInt();
                    f.put(k1, l1);
                }

            }
        }


        private SavedState(Parcelable parcelable)
        {
            super(parcelable);
            b = -1;
        }

    }


    private int a;
    private int b;
    private SparseIntArray c;
    private ObservableScrollViewCallbacks d;
    private ScrollState e;
    private boolean f;
    private boolean g;
    private boolean h;
    private MotionEvent i;
    private ViewGroup j;
    private android.widget.AbsListView.OnScrollListener k;
    private android.widget.AbsListView.OnScrollListener l = new android.widget.AbsListView.OnScrollListener() {

        final ObservableListView a;

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
            if (ObservableListView.a(a) != null)
            {
                ObservableListView.a(a).onScroll(abslistview, i1, j1, k1);
            }
            ObservableListView.b(a);
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
            if (ObservableListView.a(a) != null)
            {
                ObservableListView.a(a).onScrollStateChanged(abslistview, i1);
            }
        }

            
            {
                a = ObservableListView.this;
                super();
            }
    };

    public ObservableListView(Context context)
    {
        super(context);
        a();
    }

    public ObservableListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public ObservableListView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a();
    }

    static android.widget.AbsListView.OnScrollListener a(ObservableListView observablelistview)
    {
        return observablelistview.k;
    }

    private void a()
    {
        c = new SparseIntArray();
        super.setOnScrollListener(l);
    }

    private void b()
    {
        if (d != null && getChildCount() > 0)
        {
            int i1 = getFirstVisiblePosition();
            for (int j1 = 0; i1 <= getLastVisiblePosition(); j1++)
            {
                if (c.indexOfKey(i1) < 0 || getChildAt(j1).getHeight() != c.get(i1))
                {
                    c.put(i1, getChildAt(j1).getHeight());
                }
                i1++;
            }

            if (getChildAt(0) != null)
            {
                b = computeVerticalScrollOffset();
                d.a(b, f, g);
                if (f)
                {
                    f = false;
                }
                if (a < b)
                {
                    e = ScrollState.b;
                } else
                if (b < a)
                {
                    e = ScrollState.c;
                } else
                {
                    e = ScrollState.a;
                }
                a = b;
            }
        }
    }

    static void b(ObservableListView observablelistview)
    {
        observablelistview.b();
    }

    public int getCurrentScrollY()
    {
        return b;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 34;
           goto _L2 _L3
_L2:
        return super.onInterceptTouchEvent(motionevent);
_L3:
        g = true;
        f = true;
        d.a();
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        a = savedstate.d;
        b = savedstate.e;
        c = savedstate.f;
        super.onRestoreInstanceState(savedstate.getSuperState());
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.d = a;
        savedstate.e = b;
        savedstate.f = c;
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1 = 0.0F;
        if (d == null) goto _L2; else goto _L1
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
        h = false;
        g = false;
        d.a(e);
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (i == null)
        {
            i = motionevent;
        }
        float f2 = motionevent.getY() - i.getY();
        i = MotionEvent.obtainNoHistory(motionevent);
        if ((float)getCurrentScrollY() - f2 <= 0.0F)
        {
            if (h)
            {
                return false;
            }
            ViewGroup viewgroup;
            Object obj;
            float f3;
            if (j == null)
            {
                viewgroup = (ViewGroup)getParent();
            } else
            {
                viewgroup = j;
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
                h = true;
                motionevent1.setAction(0);
                post(new Runnable(viewgroup, motionevent1) {

                    final ViewGroup a;
                    final MotionEvent b;
                    final ObservableListView c;

                    public void run()
                    {
                        a.dispatchTouchEvent(b);
                    }

            
            {
                c = ObservableListView.this;
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

    public void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        k = onscrolllistener;
    }

    public void setScrollViewCallbacks(ObservableScrollViewCallbacks observablescrollviewcallbacks)
    {
        d = observablescrollviewcallbacks;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewgroup)
    {
        j = viewgroup;
    }
}
