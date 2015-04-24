// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

public class ChannelGroupView extends AdapterView
{
    static final class Layout extends Enum
    {

        public static final Layout a;
        public static final Layout b;
        public static final Layout c;
        public static final Layout d;
        public static final Layout e;
        public static final Layout f;
        public static final Layout g;
        public static final Layout h;
        public static final Layout i;
        public static final Layout j;
        public static final Layout k;
        public static final Layout l;
        public static final Layout m;
        private static final Layout o[];
        private final int n[];

        public static Layout valueOf(String s)
        {
            return (Layout)Enum.valueOf(com/snapchat/android/discover/ui/ChannelGroupView$Layout, s);
        }

        public static Layout[] values()
        {
            return (Layout[])o.clone();
        }

        public int[] a()
        {
            return n;
        }

        static 
        {
            a = new Layout("ZERO", 0, new int[0]);
            b = new Layout("ONE", 1, new int[] {
                1
            });
            c = new Layout("TWO", 2, new int[] {
                1, 1
            });
            d = new Layout("THREE", 3, new int[] {
                1, 1, 1
            });
            e = new Layout("FOUR", 4, new int[] {
                1, 1, 1, 1
            });
            f = new Layout("FIVE", 5, new int[] {
                1, 3, 1
            });
            g = new Layout("SIX", 6, new int[] {
                3, 2, 1
            });
            h = new Layout("SEVEN", 7, new int[] {
                2, 3, 2
            });
            i = new Layout("EIGHT", 8, new int[] {
                2, 3, 2, 1
            });
            j = new Layout("NINE", 9, new int[] {
                2, 3, 3, 1
            });
            k = new Layout("TEN", 10, new int[] {
                2, 3, 3, 2
            });
            l = new Layout("ELEVEN", 11, new int[] {
                3, 3, 3, 2
            });
            m = new Layout("TWELVE", 12, new int[] {
                3, 3, 3, 3
            });
            Layout alayout[] = new Layout[13];
            alayout[0] = a;
            alayout[1] = b;
            alayout[2] = c;
            alayout[3] = d;
            alayout[4] = e;
            alayout[5] = f;
            alayout[6] = g;
            alayout[7] = h;
            alayout[8] = i;
            alayout[9] = j;
            alayout[10] = k;
            alayout[11] = l;
            alayout[12] = m;
            o = alayout;
        }

        private Layout(String s, int i1, int ai[])
        {
            super(s, i1);
            n = ai;
        }
    }


    final int a = 10;
    final int b = 3;
    final int c = 2;
    private BaseAdapter d;
    private int e[];
    private int f;
    private DataSetObserver g;

    public ChannelGroupView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = new DataSetObserver() {

            final ChannelGroupView a;

            public void onChanged()
            {
                ChannelGroupView.a(a);
                a.requestLayout();
            }

            public void onInvalidated()
            {
                ChannelGroupView.a(a);
                a.requestLayout();
            }

            
            {
                a = ChannelGroupView.this;
                super();
            }
        };
    }

    private int a(int i)
    {
        if (e == null || e.length <= i)
        {
            return 0;
        } else
        {
            return ((4 - e[i]) * f - (-1 + e[i]) * getGapFromDiameter()) / 2;
        }
    }

    private int a(int i, int j)
    {
        int k = i / 4;
        return Math.min((int)((float)j * d()), k);
    }

    private void a()
    {
        b();
        c();
    }

    static void a(ChannelGroupView channelgroupview)
    {
        channelgroupview.a();
    }

    private void b()
    {
        if (d.getCount() > 12)
        {
            e = Layout.values()[12].a();
            return;
        } else
        {
            e = Layout.values()[d.getCount()].a();
            return;
        }
    }

    private void c()
    {
        if (d != null)
        {
            int i = Math.min(12, d.getCount());
            int j = getChildCount();
            for (int k = j - 1; k >= i; k--)
            {
                View view2 = getChildAt(k);
                if (view2 != null)
                {
                    removeViewInLayout(view2);
                }
            }

            int l = 0;
            while (l < i) 
            {
                View view = null;
                if (l < j)
                {
                    view = getChildAt(l);
                }
                View view1 = d.getView(l, view, this);
                if (l >= j)
                {
                    addViewInLayout(view1, -1, new android.view.ViewGroup.LayoutParams(-2, -2), true);
                }
                l++;
            }
        }
    }

    private float d()
    {
        return 10F / (float)(6 + 2 * (-1 + e.length) + 10 * e.length);
    }

    private int getGapFromDiameter()
    {
        return (2 * f) / 10;
    }

    private int getMarginFromDiameter()
    {
        return (3 * f) / 10;
    }

    public volatile Adapter getAdapter()
    {
        return getAdapter();
    }

    public BaseAdapter getAdapter()
    {
        return d;
    }

    public View getSelectedView()
    {
        return null;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (d != null)
        {
            d.unregisterDataSetObserver(g);
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (d != null && !d.isEmpty())
        {
            int i1 = a(0);
            int j1 = getMarginFromDiameter();
            int k1 = Math.min(Math.min(12, d.getCount()), getChildCount());
            int l1 = 0;
            int i2 = 0;
            int j2 = 0;
            while (l1 < k1) 
            {
                getChildAt(l1).layout(i1, j1, i1 + f, j1 + f);
                if (++i2 == e[j2])
                {
                    int k2 = Math.min(j2 + 1, -1 + e.length);
                    i1 = a(k2);
                    j1 += getGapFromDiameter() + f;
                    j2 = k2;
                    i2 = 0;
                } else
                {
                    i1 += getGapFromDiameter() + f;
                }
                l1++;
            }
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k = 0;
        if (d == null || d.isEmpty())
        {
            setMeasuredDimension(0, 0);
            return;
        }
        f = a(android.view.View.MeasureSpec.getSize(i), android.view.View.MeasureSpec.getSize(j));
        for (int l = Math.min(d.getCount(), getChildCount()); k < l; k++)
        {
            View view = getChildAt(k);
            int i1 = android.view.View.MeasureSpec.makeMeasureSpec(f, 0x40000000);
            view.measure(i1, i1);
        }

        setMeasuredDimension(4 * f, (int)((float)f / d()));
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((BaseAdapter)adapter);
    }

    public void setAdapter(BaseAdapter baseadapter)
    {
        if (d != null)
        {
            d.unregisterDataSetObserver(g);
        }
        d = baseadapter;
        d.registerDataSetObserver(g);
        a();
    }

    public void setSelection(int i)
    {
    }
}
