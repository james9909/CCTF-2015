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
import android.widget.GridView;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            Scrollable, ObservableScrollViewCallbacks, ScrollState

public class ObservableGridView extends GridView
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
    private int c;
    private int d;
    private int e;
    private SparseIntArray f;
    private ObservableScrollViewCallbacks g;
    private ScrollState h;
    private boolean i;
    private boolean j;
    private boolean k;
    private MotionEvent l;
    private ViewGroup m;
    private android.widget.AbsListView.OnScrollListener n;
    private android.widget.AbsListView.OnScrollListener o = new android.widget.AbsListView.OnScrollListener() {

        final ObservableGridView a;

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
            if (ObservableGridView.a(a) != null)
            {
                ObservableGridView.a(a).onScroll(abslistview, i1, j1, k1);
            }
            ObservableGridView.b(a);
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
            if (ObservableGridView.a(a) != null)
            {
                ObservableGridView.a(a).onScrollStateChanged(abslistview, i1);
            }
        }

            
            {
                a = ObservableGridView.this;
                super();
            }
    };

    public ObservableGridView(Context context)
    {
        super(context);
        b = -1;
        a();
    }

    public ObservableGridView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = -1;
        a();
    }

    public ObservableGridView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = -1;
        a();
    }

    static android.widget.AbsListView.OnScrollListener a(ObservableGridView observablegridview)
    {
        return observablegridview.n;
    }

    private void a()
    {
        f = new SparseIntArray();
        super.setOnScrollListener(o);
    }

    private void b()
    {
        if (g != null && getChildCount() > 0)
        {
            int i1 = getFirstVisiblePosition();
            int j1 = getFirstVisiblePosition();
            for (int k1 = 0; j1 <= getLastVisiblePosition(); k1++)
            {
                if (f.indexOfKey(j1) < 0 || getChildAt(k1).getHeight() != f.get(j1))
                {
                    f.put(j1, getChildAt(k1).getHeight());
                }
                j1++;
            }

            View view = getChildAt(0);
            if (view != null)
            {
                if (a < i1)
                {
                    int j2;
                    if (i1 - a != 1)
                    {
                        int k2 = i1 - 1;
                        j2 = 0;
                        for (; k2 > a; k2--)
                        {
                            if (f.indexOfKey(k2) > 0)
                            {
                                j2 += f.get(k2);
                            }
                        }

                    } else
                    {
                        j2 = 0;
                    }
                    c = c + (j2 + b);
                    b = view.getHeight();
                } else
                if (i1 < a)
                {
                    int l1;
                    if (a - i1 != 1)
                    {
                        int i2 = -1 + a;
                        l1 = 0;
                        for (; i2 > i1; i2--)
                        {
                            if (f.indexOfKey(i2) > 0)
                            {
                                l1 += f.get(i2);
                            }
                        }

                    } else
                    {
                        l1 = 0;
                    }
                    c = c - (l1 + view.getHeight());
                    b = view.getHeight();
                } else
                if (i1 == 0)
                {
                    b = view.getHeight();
                }
                if (b < 0)
                {
                    b = 0;
                }
                e = c - view.getTop();
                a = i1;
                g.a(e, i, j);
                if (i)
                {
                    i = false;
                }
                if (d < e)
                {
                    h = ScrollState.b;
                } else
                if (e < d)
                {
                    h = ScrollState.c;
                } else
                {
                    h = ScrollState.a;
                }
                d = e;
            }
        }
    }

    static void b(ObservableGridView observablegridview)
    {
        observablegridview.b();
    }

    public int getCurrentScrollY()
    {
        return e;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 34;
           goto _L2 _L3
_L2:
        return super.onInterceptTouchEvent(motionevent);
_L3:
        j = true;
        i = true;
        g.a();
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        a = savedstate.a;
        b = savedstate.b;
        c = savedstate.c;
        d = savedstate.d;
        e = savedstate.e;
        f = savedstate.f;
        super.onRestoreInstanceState(savedstate.getSuperState());
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = a;
        savedstate.b = b;
        savedstate.c = c;
        savedstate.d = d;
        savedstate.e = e;
        savedstate.f = f;
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1 = 0.0F;
        if (g == null) goto _L2; else goto _L1
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
        k = false;
        j = false;
        g.a(h);
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (l == null)
        {
            l = motionevent;
        }
        float f2 = motionevent.getY() - l.getY();
        l = MotionEvent.obtainNoHistory(motionevent);
        if ((float)getCurrentScrollY() - f2 <= 0.0F)
        {
            if (k)
            {
                return false;
            }
            ViewGroup viewgroup;
            Object obj;
            float f3;
            if (m == null)
            {
                viewgroup = (ViewGroup)getParent();
            } else
            {
                viewgroup = m;
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
                k = true;
                motionevent1.setAction(0);
                post(new Runnable(viewgroup, motionevent1) {

                    final ViewGroup a;
                    final MotionEvent b;
                    final ObservableGridView c;

                    public void run()
                    {
                        a.dispatchTouchEvent(b);
                    }

            
            {
                c = ObservableGridView.this;
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
        n = onscrolllistener;
    }

    public void setScrollViewCallbacks(ObservableScrollViewCallbacks observablescrollviewcallbacks)
    {
        g = observablescrollviewcallbacks;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewgroup)
    {
        m = viewgroup;
    }
}
