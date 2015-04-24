// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import com.github.ksoichiro.android.observablescrollview.ObservableListView;
import com.snapchat.android.Timber;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ObservableAboveTheFoldListView extends ObservableListView
    implements android.widget.AbsListView.OnScrollListener
{
    class ChatMessageClearanceObserver extends DataSetObserver
    {

        final ObservableAboveTheFoldListView a;
        private BaseAdapter b;

        private Set a()
        {
            int i1 = b.getCount();
            HashSet hashset = new HashSet(i1);
            for (int j1 = 0; j1 < i1; j1++)
            {
                Object obj = b.getItem(j1);
                if (obj != null)
                {
                    hashset.add(ObservableAboveTheFoldListView.a(a).a(obj));
                }
            }

            return hashset;
        }

        protected void a(BaseAdapter baseadapter)
        {
            if (b != null)
            {
                b.unregisterDataSetObserver(this);
            }
            b = baseadapter;
            b.registerDataSetObserver(this);
        }

        public void onChanged()
        {
            super.onChanged();
            if (b == null)
            {
                throw new NullPointerException("onChanged cannot be called without an adapter");
            } else
            {
                Set set = a();
                a.a.keySet().retainAll(set);
                return;
            }
        }

        private ChatMessageClearanceObserver()
        {
            a = ObservableAboveTheFoldListView.this;
            super();
        }

    }

    public static interface ObservableAboveTheFoldListViewInterface
    {

        public abstract String a(Object obj);

        public abstract int p();
    }

    static final class ScrollDirection extends Enum
    {

        public static final ScrollDirection a;
        public static final ScrollDirection b;
        private static final ScrollDirection c[];

        public static ScrollDirection valueOf(String s)
        {
            return (ScrollDirection)Enum.valueOf(com/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection, s);
        }

        public static ScrollDirection[] values()
        {
            return (ScrollDirection[])c.clone();
        }

        static 
        {
            a = new ScrollDirection("UP", 0);
            b = new ScrollDirection("DOWN", 1);
            ScrollDirection ascrolldirection[] = new ScrollDirection[2];
            ascrolldirection[0] = a;
            ascrolldirection[1] = b;
            c = ascrolldirection;
        }

        private ScrollDirection(String s, int i1)
        {
            super(s, i1);
        }
    }


    protected final Map a = new HashMap();
    private final View b;
    private ChatMessageClearanceObserver c;
    private int d;
    private float e;
    private boolean f;
    private float g;
    private int h;
    private boolean i;
    private View j;
    private int k;
    private float l;
    private ScrollDirection m;
    private BaseAdapter n;
    private ObservableAboveTheFoldListViewInterface o;
    private android.widget.AbsListView.OnScrollListener p;
    private int q;
    private android.view.ViewTreeObserver.OnPreDrawListener r;

    public ObservableAboveTheFoldListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = (0.0F / 0.0F);
        k = -1;
        l = -1F;
        q = 0;
        r = new android.view.ViewTreeObserver.OnPreDrawListener() {

            final ObservableAboveTheFoldListView a;

            public boolean onPreDraw()
            {
                return !a.c();
            }

            
            {
                a = ObservableAboveTheFoldListView.this;
                super();
            }
        };
        b = new View(context);
        c = new ChatMessageClearanceObserver();
        addFooterView(b, null, false);
        super.setOnScrollListener(this);
    }

    static ObservableAboveTheFoldListViewInterface a(ObservableAboveTheFoldListView observableabovethefoldlistview)
    {
        return observableabovethefoldlistview.o;
    }

    private boolean a(int i1)
    {
        if (i1 < 0)
        {
            i1 = 0;
        }
        int j1 = i1 + 1;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (j1 != d)
        {
            if ((layoutparams = b.getLayoutParams()) != null)
            {
                d = j1;
                layoutparams.height = j1;
                b.setLayoutParams(layoutparams);
                n.notifyDataSetChanged();
                f();
                return true;
            }
        }
        return false;
    }

    private void e()
    {
        i = false;
        j = null;
        k = -1;
        l = -1F;
    }

    private void f()
    {
        if (b.getBottom() + getPaddingBottom() >= getHeight())
        {
            return;
        } else
        {
            post(new Runnable() {

                final ObservableAboveTheFoldListView a;

                public void run()
                {
                    a.smoothScrollBy(-1, 100);
                }

            
            {
                a = ObservableAboveTheFoldListView.this;
                super();
            }
            });
            return;
        }
    }

    public boolean a()
    {
        return i;
    }

    public void b()
    {
        if (n == null)
        {
            throw new IllegalStateException("setAdapter() must be called first");
        }
        if (o == null)
        {
            throw new IllegalStateException("setInterface() must be called first.");
        }
        if (!f)
        {
            return;
        } else
        {
            a(0);
            setSelection(-1 + n.getCount());
            return;
        }
    }

    public boolean c()
    {
        if (!Float.isNaN(e)) goto _L2; else goto _L1
_L1:
        Timber.d("ObservableAboveTheFoldListView", "mMeasuredHeight has not been initialized yet. Aborting updateFooter().", new Object[0]);
_L4:
        return false;
_L2:
        if (!f || getChildCount() == 0) goto _L4; else goto _L3
_L3:
        int j1;
        int k1;
        int i1 = o.p() + getHeaderViewsCount();
        j1 = Math.max(getFirstVisiblePosition(), i1);
        k1 = getLastVisiblePosition();
        if (k1 < 0) goto _L4; else goto _L5
_L5:
        if (j1 <= k1 && j1 < getCount() - getFooterViewsCount()) goto _L7; else goto _L6
_L6:
        int l1;
        Iterator iterator;
        int i2;
        l1 = getMeasuredHeight() - getPaddingBottom() - getPaddingTop();
        iterator = a.entrySet().iterator();
        i2 = 0;
_L11:
        int j2;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_329;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        Object obj;
        String s;
        View view;
        int l2;
        if (entry.getValue() == null)
        {
            throw new NullPointerException();
        }
        j2 = i2 + ((Integer)entry.getValue()).intValue();
          goto _L8
_L7:
        obj = getItemAtPosition(j1);
        if (obj == null)
        {
            throw new NullPointerException();
        }
        s = o.a(obj);
        view = getChildAt(j1 - getFirstVisiblePosition());
        if (view == null)
        {
            throw new NullPointerException();
        }
        if (view != b)
        {
            l2 = view.getHeight();
            a.put(s, Integer.valueOf(l2));
        }
        j1++;
          goto _L5
_L8:
        if (j2 < l1) goto _L10; else goto _L9
_L9:
        int k2 = l1 - j2 - h;
        if (k2 < h)
        {
            k2 = h;
        }
        return a(k2);
_L10:
        i2 = j2;
          goto _L11
        j2 = i2;
          goto _L9
    }

    public void d()
    {
        post(new Runnable() {

            final ObservableAboveTheFoldListView a;

            public void run()
            {
                a.setSelection(-1 + a.getCount());
            }

            
            {
                a = ObservableAboveTheFoldListView.this;
                super();
            }
        });
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (i && motionevent.getAction() == 0)
        {
            e();
        }
        if (!i) goto _L2; else goto _L1
_L1:
        if (motionevent.getAction() != 1) goto _L4; else goto _L3
_L3:
        setSelectionFromTop(k, (getHeight() - j.getHeight()) / 2);
_L5:
        g = motionevent.getY();
        return true;
_L4:
        if (motionevent.getAction() == 2)
        {
            if (l == -1F)
            {
                setSelectionFromTop(k, (getHeight() - j.getHeight()) / 2);
                l = motionevent.getY();
                ScrollDirection scrolldirection;
                if (l - g > 0.0F)
                {
                    scrolldirection = ScrollDirection.b;
                } else
                {
                    scrolldirection = ScrollDirection.a;
                }
                m = scrolldirection;
            } else
            {
                float f1 = motionevent.getY() - l;
                if (m == ScrollDirection.b && f1 < 0.0F || m == ScrollDirection.b && f1 >= 200F || m == ScrollDirection.a && f1 > 0.0F || m == ScrollDirection.a && f1 <= -200F)
                {
                    e();
                }
            }
        }
        if (true) goto _L5; else goto _L2
_L2:
        g = motionevent.getY();
        return super.dispatchTouchEvent(motionevent);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        ViewTreeObserver viewtreeobserver = getViewTreeObserver();
        if (viewtreeobserver.isAlive())
        {
            viewtreeobserver.removeOnPreDrawListener(r);
            viewtreeobserver.addOnPreDrawListener(r);
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        e = getMeasuredHeight();
    }

    public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
    {
        if (p != null)
        {
            p.onScroll(abslistview, i1, j1, k1);
        }
    }

    public void onScrollStateChanged(AbsListView abslistview, int i1)
    {
        if (p != null)
        {
            p.onScrollStateChanged(abslistview, i1);
        }
        if (i1 == 0)
        {
            f();
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        if (f)
        {
            super.onSizeChanged(i1, j1, k1, l1);
            if (j1 > q)
            {
                q = j1;
            }
            boolean flag;
            if (q - j1 > 100)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                d();
            }
        }
    }

    public void setAdapter(BaseAdapter baseadapter)
    {
        super.setAdapter(baseadapter);
        n = baseadapter;
        if (c != null)
        {
            c.a(baseadapter);
        }
    }

    public void setInterface(ObservableAboveTheFoldListViewInterface observableabovethefoldlistviewinterface)
    {
        o = observableabovethefoldlistviewinterface;
    }

    public void setIsActive(boolean flag)
    {
        f = flag;
    }

    public void setLocked(boolean flag)
    {
        i = flag;
    }

    public void setLockedView(View view, int i1)
    {
        j = view;
        k = i1;
    }

    public void setMinimumFooterHeight(int i1)
    {
        h = i1;
    }

    public void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        p = onscrolllistener;
    }
}
