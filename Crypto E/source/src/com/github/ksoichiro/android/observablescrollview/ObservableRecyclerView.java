// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.github.ksoichiro.android.observablescrollview:
//            Scrollable, ObservableScrollViewCallbacks, ScrollState

public class ObservableRecyclerView extends RecyclerView
    implements Scrollable
{
    static class SavedState
        implements Parcelable
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
        public static final SavedState a = new SavedState() {

        };
        int b;
        int c;
        int d;
        int e;
        int f;
        SparseIntArray g;
        Parcelable h;

        public Parcelable a()
        {
            return h;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeParcelable(h, i1);
            parcel.writeInt(b);
            parcel.writeInt(c);
            parcel.writeInt(d);
            parcel.writeInt(e);
            parcel.writeInt(f);
            int j1;
            int k1;
            if (g == null)
            {
                j1 = 0;
            } else
            {
                j1 = g.size();
            }
            parcel.writeInt(j1);
            k1 = 0;
            if (j1 > 0)
            {
                for (; k1 < j1; k1++)
                {
                    parcel.writeInt(g.keyAt(k1));
                    parcel.writeInt(g.valueAt(k1));
                }

            }
        }


        private SavedState()
        {
            c = -1;
            h = null;
        }

        private SavedState(Parcel parcel)
        {
            c = -1;
            Object obj = parcel.readParcelable(android/support/v7/widget/RecyclerView.getClassLoader());
            int i1;
            if (obj == null)
            {
                obj = a;
            }
            h = ((Parcelable) (obj));
            b = parcel.readInt();
            c = parcel.readInt();
            d = parcel.readInt();
            e = parcel.readInt();
            f = parcel.readInt();
            g = new SparseIntArray();
            i1 = parcel.readInt();
            if (i1 > 0)
            {
                for (int j1 = 0; j1 < i1; j1++)
                {
                    int k1 = parcel.readInt();
                    int l1 = parcel.readInt();
                    g.put(k1, l1);
                }

            }
        }


        private SavedState(Parcelable parcelable)
        {
            c = -1;
            if (parcelable == a)
            {
                parcelable = null;
            }
            h = parcelable;
        }


    }


    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private SparseIntArray n;
    private ObservableScrollViewCallbacks o;
    private ScrollState p;
    private boolean q;
    private boolean r;
    private boolean s;
    private MotionEvent t;
    private ViewGroup u;

    public ObservableRecyclerView(Context context)
    {
        super(context);
        j = -1;
        q();
    }

    public ObservableRecyclerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = -1;
        q();
    }

    public ObservableRecyclerView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        j = -1;
        q();
    }

    private void q()
    {
        n = new SparseIntArray();
    }

    public int getCurrentScrollY()
    {
        return m;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (o == null) goto _L2; else goto _L1
_L1:
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 34;
           goto _L2 _L3
_L2:
        return super.onInterceptTouchEvent(motionevent);
_L3:
        r = true;
        q = true;
        o.a();
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        i = savedstate.b;
        j = savedstate.c;
        k = savedstate.d;
        l = savedstate.e;
        m = savedstate.f;
        n = savedstate.g;
        super.onRestoreInstanceState(savedstate.a());
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.b = i;
        savedstate.c = j;
        savedstate.d = k;
        savedstate.e = l;
        savedstate.f = m;
        savedstate.g = n;
        return savedstate;
    }

    protected void onScrollChanged(int i1, int j1, int k1, int l1)
    {
        super.onScrollChanged(i1, j1, k1, l1);
        if (o != null && getChildCount() > 0)
        {
            int i2 = c(getChildAt(0));
            int j2 = c(getChildAt(-1 + getChildCount()));
            int k2 = 0;
            for (int l2 = i2; l2 <= j2;)
            {
                if (n.indexOfKey(l2) < 0 || getChildAt(k2).getHeight() != n.get(l2))
                {
                    n.put(l2, getChildAt(k2).getHeight());
                }
                l2++;
                k2++;
            }

            View view = getChildAt(0);
            if (view != null)
            {
                if (i < i2)
                {
                    int k3;
                    if (i2 - i != 1)
                    {
                        int l3 = i2 - 1;
                        k3 = 0;
                        while (l3 > i) 
                        {
                            if (n.indexOfKey(l3) > 0)
                            {
                                k3 += n.get(l3);
                            } else
                            {
                                k3 += view.getHeight();
                            }
                            l3--;
                        }
                    } else
                    {
                        k3 = 0;
                    }
                    k = k + (k3 + j);
                    j = view.getHeight();
                } else
                if (i2 < i)
                {
                    int i3;
                    if (i - i2 != 1)
                    {
                        int j3 = -1 + i;
                        i3 = 0;
                        while (j3 > i2) 
                        {
                            if (n.indexOfKey(j3) > 0)
                            {
                                i3 += n.get(j3);
                            } else
                            {
                                i3 += view.getHeight();
                            }
                            j3--;
                        }
                    } else
                    {
                        i3 = 0;
                    }
                    k = k - (i3 + view.getHeight());
                    j = view.getHeight();
                } else
                if (i2 == 0)
                {
                    j = view.getHeight();
                }
                if (j < 0)
                {
                    j = 0;
                }
                m = k - view.getTop();
                i = i2;
                o.a(m, q, r);
                if (q)
                {
                    q = false;
                }
                if (l < m)
                {
                    p = ScrollState.b;
                } else
                if (m < l)
                {
                    p = ScrollState.c;
                } else
                {
                    p = ScrollState.a;
                }
                l = m;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f = 0.0F;
        if (o == null) goto _L2; else goto _L1
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
        s = false;
        r = false;
        o.a(p);
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        if (t == null)
        {
            t = motionevent;
        }
        float f1 = motionevent.getY() - t.getY();
        t = MotionEvent.obtainNoHistory(motionevent);
        if ((float)getCurrentScrollY() - f1 <= 0.0F)
        {
            if (s)
            {
                return false;
            }
            ViewGroup viewgroup;
            Object obj;
            float f2;
            if (u == null)
            {
                viewgroup = (ViewGroup)getParent();
            } else
            {
                viewgroup = u;
            }
            obj = this;
            f2 = 0.0F;
            for (; obj != null && obj != viewgroup; obj = (View)((View) (obj)).getParent())
            {
                f2 += ((View) (obj)).getLeft() - ((View) (obj)).getScrollX();
                f += ((View) (obj)).getTop() - ((View) (obj)).getScrollY();
            }

            MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
            motionevent1.offsetLocation(f2, f);
            if (viewgroup.onInterceptTouchEvent(motionevent1))
            {
                s = true;
                motionevent1.setAction(0);
                post(new Runnable(viewgroup, motionevent1) {

                    final ViewGroup a;
                    final MotionEvent b;
                    final ObservableRecyclerView c;

                    public void run()
                    {
                        a.dispatchTouchEvent(b);
                    }

            
            {
                c = ObservableRecyclerView.this;
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
        o = observablescrollviewcallbacks;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewgroup)
    {
        u = viewgroup;
    }
}
