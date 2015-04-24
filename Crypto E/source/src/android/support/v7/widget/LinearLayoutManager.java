// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            OrientationHelper, ScrollbarHelper, RecyclerView, LinearSmoothScroller

public class LinearLayoutManager extends RecyclerView.LayoutManager
{
    class AnchorInfo
    {

        int a;
        int b;
        boolean c;
        final LinearLayoutManager d;

        void a()
        {
            a = -1;
            b = 0x80000000;
            c = false;
        }

        public void a(View view)
        {
            if (c)
            {
                b = d.j.b(view) + d.j.b();
            } else
            {
                b = d.j.a(view);
            }
            a = d.d(view);
        }

        public boolean a(View view, RecyclerView.State state)
        {
            RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
            if (!layoutparams.c() && layoutparams.e() >= 0 && layoutparams.e() < state.e())
            {
                a(view);
                return true;
            } else
            {
                return false;
            }
        }

        void b()
        {
            int i1;
            if (c)
            {
                i1 = d.j.d();
            } else
            {
                i1 = d.j.c();
            }
            b = i1;
        }

        public String toString()
        {
            return (new StringBuilder()).append("AnchorInfo{mPosition=").append(a).append(", mCoordinate=").append(b).append(", mLayoutFromEnd=").append(c).append('}').toString();
        }

        AnchorInfo()
        {
            d = LinearLayoutManager.this;
            super();
        }
    }

    public static class LayoutChunkResult
    {

        public int a;
        public boolean b;
        public boolean c;
        public boolean d;

        void a()
        {
            a = 0;
            b = false;
            c = false;
            d = false;
        }

        protected LayoutChunkResult()
        {
        }
    }

    static class LayoutState
    {

        boolean a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        boolean i;
        List j;

        private View a()
        {
            int i1;
            int j1;
            int k1;
            Object obj;
            i1 = j.size();
            j1 = 0x7fffffff;
            k1 = 0;
            obj = null;
_L2:
            RecyclerView.ViewHolder viewholder;
            int i2;
            RecyclerView.ViewHolder viewholder1;
            if (k1 >= i1)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            viewholder = (RecyclerView.ViewHolder)j.get(k1);
            if (i || !viewholder.p())
            {
                break; /* Loop/switch isn't completed */
            }
            i2 = j1;
            viewholder1 = obj;
_L3:
            k1++;
            obj = viewholder1;
            j1 = i2;
            if (true) goto _L2; else goto _L1
_L1:
            int l1;
label0:
            {
                l1 = (viewholder.d() - d) * e;
                if (l1 >= 0)
                {
                    break label0;
                }
                i2 = j1;
                viewholder1 = obj;
            }
              goto _L3
            if (l1 >= j1) goto _L5; else goto _L4
_L4:
            if (l1 != 0) goto _L7; else goto _L6
_L6:
            if (viewholder != null)
            {
                d = viewholder.d() + e;
                return viewholder.a;
            } else
            {
                return null;
            }
_L7:
            viewholder1 = viewholder;
            i2 = l1;
              goto _L3
_L5:
            i2 = j1;
            viewholder1 = obj;
              goto _L3
            viewholder = obj;
              goto _L6
        }

        View a(RecyclerView.Recycler recycler)
        {
            if (j != null)
            {
                return a();
            } else
            {
                View view = recycler.c(d);
                d = d + e;
                return view;
            }
        }

        boolean a(RecyclerView.State state)
        {
            return d >= 0 && d < state.e();
        }

        LayoutState()
        {
            a = true;
            h = 0;
            i = false;
            j = null;
        }
    }

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
        int a;
        int b;
        boolean c;

        boolean a()
        {
            return a >= 0;
        }

        void b()
        {
            a = -1;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            int j1;
            if (c)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            parcel.writeInt(j1);
        }


        public SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            boolean flag = true;
            super();
            a = parcel.readInt();
            b = parcel.readInt();
            if (parcel.readInt() != flag)
            {
                flag = false;
            }
            c = flag;
        }

        public SavedState(SavedState savedstate)
        {
            a = savedstate.a;
            b = savedstate.b;
            c = savedstate.c;
        }
    }


    private LayoutState a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    int i;
    OrientationHelper j;
    boolean k;
    int l;
    int m;
    SavedState n;
    final AnchorInfo o;

    public LinearLayoutManager(Context context)
    {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i1, boolean flag)
    {
        c = false;
        k = false;
        d = false;
        e = true;
        l = -1;
        m = 0x80000000;
        n = null;
        o = new AnchorInfo();
        a(i1);
        a(flag);
    }

    private View A()
    {
        int i1;
        if (k)
        {
            i1 = -1 + n();
        } else
        {
            i1 = 0;
        }
        return g(i1);
    }

    private View B()
    {
        int i1;
        if (k)
        {
            i1 = 0;
        } else
        {
            i1 = -1 + n();
        }
        return g(i1);
    }

    private int a(int i1, RecyclerView.Recycler recycler, RecyclerView.State state, boolean flag)
    {
        int j1 = j.d() - i1;
        if (j1 > 0)
        {
            int k1 = -c(-j1, recycler, state);
            int l1 = i1 + k1;
            if (flag)
            {
                int i2 = j.d() - l1;
                if (i2 > 0)
                {
                    j.a(i2);
                    k1 += i2;
                }
            }
            return k1;
        } else
        {
            return 0;
        }
    }

    private View a(int i1, int j1, int k1)
    {
        View view;
        int l1;
        int i2;
        View view1;
        View view2;
        View view3;
        view = null;
        h();
        l1 = j.c();
        i2 = j.d();
        int j2;
        int k2;
        if (j1 > i1)
        {
            j2 = 1;
        } else
        {
            j2 = -1;
        }
        view1 = null;
        if (i1 == j1) goto _L2; else goto _L1
_L1:
        view2 = g(i1);
        k2 = d(view2);
        if (k2 < 0 || k2 >= k1)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        if (!((RecyclerView.LayoutParams)view2.getLayoutParams()).c()) goto _L4; else goto _L3
_L3:
        if (view1 != null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        view3 = view;
_L7:
        i1 += j2;
        view = view3;
        view1 = view2;
        break MISSING_BLOCK_LABEL_36;
_L4:
        if (j.a(view2) >= i2 || j.b(view2) < l1)
        {
            if (view != null)
            {
                break MISSING_BLOCK_LABEL_175;
            }
            view3 = view2;
            view2 = view1;
            continue; /* Loop/switch isn't completed */
        }
          goto _L5
_L2:
        if (view == null)
        {
            view = view1;
        }
        view2 = view;
_L5:
        return view2;
        view3 = view;
        view2 = view1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void a(int i1, int j1, boolean flag, RecyclerView.State state)
    {
        int k1 = -1;
        int l1 = 1;
        a.h = a(state);
        a.f = i1;
        int i2;
        if (i1 == l1)
        {
            LayoutState layoutstate3 = a;
            layoutstate3.h = layoutstate3.h + j.g();
            View view1 = B();
            LayoutState layoutstate4 = a;
            LayoutState layoutstate2;
            if (!k)
            {
                k1 = l1;
            }
            layoutstate4.e = k1;
            a.d = d(view1) + a.e;
            a.b = j.b(view1);
            i2 = j.b(view1) - j.d();
        } else
        {
            View view = A();
            LayoutState layoutstate = a;
            layoutstate.h = layoutstate.h + j.c();
            LayoutState layoutstate1 = a;
            if (!k)
            {
                l1 = k1;
            }
            layoutstate1.e = l1;
            a.d = d(view) + a.e;
            a.b = j.a(view);
            i2 = -j.a(view) + j.c();
        }
        a.c = j1;
        if (flag)
        {
            layoutstate2 = a;
            layoutstate2.c = layoutstate2.c - i2;
        }
        a.g = i2;
    }

    private void a(AnchorInfo anchorinfo)
    {
        c(anchorinfo.a, anchorinfo.b);
    }

    private void a(RecyclerView.Recycler recycler, int i1)
    {
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1;
        j1 = n();
        if (!k)
        {
            break; /* Loop/switch isn't completed */
        }
        int l1 = j1 - 1;
        while (l1 >= 0) 
        {
            View view1 = g(l1);
            if (j.b(view1) > i1)
            {
                a(recycler, j1 - 1, l1);
                return;
            }
            l1--;
        }
        if (true) goto _L1; else goto _L3
_L3:
        int k1 = 0;
        while (k1 < j1) 
        {
            View view = g(k1);
            if (j.b(view) > i1)
            {
                a(recycler, 0, k1);
                return;
            }
            k1++;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void a(RecyclerView.Recycler recycler, int i1, int j1)
    {
        if (i1 != j1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (j1 <= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        int k1 = j1 - 1;
        while (k1 >= i1) 
        {
            a(k1, recycler);
            k1--;
        }
        if (true) goto _L1; else goto _L3
_L3:
        while (i1 > j1) 
        {
            a(i1, recycler);
            i1--;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void a(RecyclerView.Recycler recycler, LayoutState layoutstate)
    {
        if (!layoutstate.a)
        {
            return;
        }
        if (layoutstate.f == -1)
        {
            b(recycler, layoutstate.g);
            return;
        } else
        {
            a(recycler, layoutstate.g);
            return;
        }
    }

    private int b(int i1, RecyclerView.Recycler recycler, RecyclerView.State state, boolean flag)
    {
        int j1 = i1 - j.c();
        if (j1 > 0)
        {
            int k1 = -c(j1, recycler, state);
            int l1 = i1 + k1;
            if (flag)
            {
                int i2 = l1 - j.c();
                if (i2 > 0)
                {
                    j.a(-i2);
                    k1 -= i2;
                }
            }
            return k1;
        } else
        {
            return 0;
        }
    }

    private void b(AnchorInfo anchorinfo)
    {
        d(anchorinfo.a, anchorinfo.b);
    }

    private void b(RecyclerView.Recycler recycler, int i1)
    {
        int j1 = n();
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k1;
        k1 = j.e() - i1;
        if (!k)
        {
            break; /* Loop/switch isn't completed */
        }
        int i2 = 0;
        while (i2 < j1) 
        {
            View view1 = g(i2);
            if (j.a(view1) < k1)
            {
                a(recycler, 0, i2);
                return;
            }
            i2++;
        }
        if (true) goto _L1; else goto _L3
_L3:
        int l1 = j1 - 1;
        while (l1 >= 0) 
        {
            View view = g(l1);
            if (j.a(view) < k1)
            {
                a(recycler, j1 - 1, l1);
                return;
            }
            l1--;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void b(RecyclerView.Recycler recycler, RecyclerView.State state, int i1, int j1)
    {
        if (!state.b() || n() == 0 || state.a() || !b())
        {
            return;
        }
        int k1 = 0;
        int l1 = 0;
        List list = recycler.b();
        int i2 = list.size();
        int j2 = d(g(0));
        int k2 = 0;
        while (k2 < i2) 
        {
            RecyclerView.ViewHolder viewholder = (RecyclerView.ViewHolder)list.get(k2);
            boolean flag;
            byte byte1;
            int k3;
            int l3;
            if (viewholder.d() < j2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag != k)
            {
                byte1 = -1;
            } else
            {
                byte1 = 1;
            }
            if (byte1 == -1)
            {
                l3 = k1 + j.c(viewholder.a);
                k3 = l1;
            } else
            {
                k3 = l1 + j.c(viewholder.a);
                l3 = k1;
            }
            k2++;
            k1 = l3;
            l1 = k3;
        }
        a.j = list;
        if (k1 > 0)
        {
            d(d(A()), i1);
            a.h = k1;
            a.c = 0;
            LayoutState layoutstate1 = a;
            int i3 = layoutstate1.d;
            LayoutState layoutstate;
            int l2;
            int j3;
            if (k)
            {
                j3 = 1;
            } else
            {
                j3 = -1;
            }
            layoutstate1.d = j3 + i3;
            a(recycler, a, state, false);
        }
        if (l1 > 0)
        {
            c(d(B()), j1);
            a.h = l1;
            a.c = 0;
            layoutstate = a;
            l2 = layoutstate.d;
            byte byte0;
            if (k)
            {
                byte0 = -1;
            } else
            {
                byte0 = 1;
            }
            layoutstate.d = byte0 + l2;
            a(recycler, a, state, false);
        }
        a.j = null;
    }

    private void b(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        while (d(state, anchorinfo) || c(state, anchorinfo)) 
        {
            return;
        }
        anchorinfo.b();
        int i1;
        if (d)
        {
            i1 = -1 + state.e();
        } else
        {
            i1 = 0;
        }
        anchorinfo.a = i1;
    }

    private void c(int i1, int j1)
    {
        a.c = j.d() - j1;
        LayoutState layoutstate = a;
        int k1;
        if (k)
        {
            k1 = -1;
        } else
        {
            k1 = 1;
        }
        layoutstate.e = k1;
        a.d = i1;
        a.f = 1;
        a.b = j1;
        a.g = 0x80000000;
    }

    private boolean c(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        if (n() != 0)
        {
            View view = u();
            if (view != null && anchorinfo.a(view, state))
            {
                return true;
            }
            if (b == d)
            {
                View view1;
                if (anchorinfo.c)
                {
                    view1 = k(state);
                } else
                {
                    view1 = l(state);
                }
                if (view1 != null)
                {
label0:
                    {
                        boolean flag;
label1:
                        {
                            anchorinfo.a(view1);
                            if (state.a() || !b())
                            {
                                break label0;
                            }
                            if (j.a(view1) < j.d())
                            {
                                int j1 = j.b(view1);
                                int k1 = j.c();
                                flag = false;
                                if (j1 >= k1)
                                {
                                    break label1;
                                }
                            }
                            flag = true;
                        }
                        if (flag)
                        {
                            int i1;
                            if (anchorinfo.c)
                            {
                                i1 = j.d();
                            } else
                            {
                                i1 = j.c();
                            }
                            anchorinfo.b = i1;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private void d(int i1, int j1)
    {
        a.c = j1 - j.c();
        a.d = i1;
        LayoutState layoutstate = a;
        int k1;
        if (k)
        {
            k1 = 1;
        } else
        {
            k1 = -1;
        }
        layoutstate.e = k1;
        a.f = -1;
        a.b = j1;
        a.g = 0x80000000;
    }

    private boolean d(RecyclerView.State state, AnchorInfo anchorinfo)
    {
        if (state.a() || l == -1)
        {
            return false;
        }
        if (l < 0 || l >= state.e())
        {
            l = -1;
            m = 0x80000000;
            return false;
        }
        anchorinfo.a = l;
        if (n != null && n.a())
        {
            anchorinfo.c = n.c;
            if (anchorinfo.c)
            {
                anchorinfo.b = j.d() - n.b;
                return true;
            } else
            {
                anchorinfo.b = j.c() + n.b;
                return true;
            }
        }
        if (m == 0x80000000)
        {
            View view = b(l);
            if (view != null)
            {
                if (j.c(view) > j.f())
                {
                    anchorinfo.b();
                    return true;
                }
                if (j.a(view) - j.c() < 0)
                {
                    anchorinfo.b = j.c();
                    anchorinfo.c = false;
                    return true;
                }
                if (j.d() - j.b(view) < 0)
                {
                    anchorinfo.b = j.d();
                    anchorinfo.c = true;
                    return true;
                }
                int j1;
                if (anchorinfo.c)
                {
                    j1 = j.b(view) + j.b();
                } else
                {
                    j1 = j.a(view);
                }
                anchorinfo.b = j1;
                return true;
            }
            if (n() > 0)
            {
                int i1 = d(g(0));
                boolean flag;
                boolean flag1;
                boolean flag2;
                if (l < i1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                flag1 = k;
                flag2 = false;
                if (flag == flag1)
                {
                    flag2 = true;
                }
                anchorinfo.c = flag2;
            }
            anchorinfo.b();
            return true;
        }
        anchorinfo.c = k;
        if (k)
        {
            anchorinfo.b = j.d() - m;
            return true;
        } else
        {
            anchorinfo.b = j.c() + m;
            return true;
        }
    }

    private int h(RecyclerView.State state)
    {
        if (n() == 0)
        {
            return 0;
        } else
        {
            h();
            return ScrollbarHelper.a(state, j, A(), B(), this, e, k);
        }
    }

    private int i(RecyclerView.State state)
    {
        if (n() == 0)
        {
            return 0;
        } else
        {
            h();
            return ScrollbarHelper.a(state, j, A(), B(), this, e);
        }
    }

    private int j(RecyclerView.State state)
    {
        if (n() == 0)
        {
            return 0;
        } else
        {
            h();
            return ScrollbarHelper.b(state, j, A(), B(), this, e);
        }
    }

    private int k(int i1)
    {
        int j1;
        int k1;
        int l1;
        j1 = -1;
        k1 = 1;
        l1 = 0x80000000;
        i1;
        JVM INSTR lookupswitch 6: default 68
    //                   1: 71
    //                   2: 73
    //                   17: 100
    //                   33: 75
    //                   66: 110
    //                   130: 86;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L2:
        break MISSING_BLOCK_LABEL_71;
_L1:
        j1 = l1;
_L9:
        return j1;
_L3:
        return k1;
_L5:
        if (i == k1) goto _L9; else goto _L8
_L8:
        return l1;
_L7:
        if (i == k1)
        {
            l1 = k1;
        }
        return l1;
_L4:
        if (i == 0) goto _L9; else goto _L10
_L10:
        return l1;
_L6:
        if (i != 0)
        {
            k1 = l1;
        }
        return k1;
    }

    private View k(RecyclerView.State state)
    {
        if (k)
        {
            return l(state.e());
        } else
        {
            return m(state.e());
        }
    }

    private View l(int i1)
    {
        return a(0, n(), i1);
    }

    private View l(RecyclerView.State state)
    {
        if (k)
        {
            return m(state.e());
        } else
        {
            return l(state.e());
        }
    }

    private View m(int i1)
    {
        return a(-1 + n(), -1, i1);
    }

    private void z()
    {
        boolean flag = true;
        if (i == flag || !g())
        {
            k = c;
            return;
        }
        if (c)
        {
            flag = false;
        }
        k = flag;
    }

    public int a(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 1)
        {
            return 0;
        } else
        {
            return c(i1, recycler, state);
        }
    }

    int a(RecyclerView.Recycler recycler, LayoutState layoutstate, RecyclerView.State state, boolean flag)
    {
        int i1;
        int j1;
        LayoutChunkResult layoutchunkresult;
        i1 = layoutstate.c;
        if (layoutstate.g != 0x80000000)
        {
            if (layoutstate.c < 0)
            {
                layoutstate.g = layoutstate.g + layoutstate.c;
            }
            a(recycler, layoutstate);
        }
        j1 = layoutstate.c + layoutstate.h;
        layoutchunkresult = new LayoutChunkResult();
_L4:
        if (j1 <= 0 || !layoutstate.a(state)) goto _L2; else goto _L1
_L1:
        layoutchunkresult.a();
        a(recycler, state, layoutstate, layoutchunkresult);
        if (!layoutchunkresult.b) goto _L3; else goto _L2
_L2:
        return i1 - layoutstate.c;
_L3:
        layoutstate.b = layoutstate.b + layoutchunkresult.a * layoutstate.f;
        if (!layoutchunkresult.c || a.j != null || !state.a())
        {
            layoutstate.c = layoutstate.c - layoutchunkresult.a;
            j1 -= layoutchunkresult.a;
        }
        if (layoutstate.g != 0x80000000)
        {
            layoutstate.g = layoutstate.g + layoutchunkresult.a;
            if (layoutstate.c < 0)
            {
                layoutstate.g = layoutstate.g + layoutstate.c;
            }
            a(recycler, layoutstate);
        }
        if (!flag || !layoutchunkresult.d) goto _L4; else goto _L2
    }

    protected int a(RecyclerView.State state)
    {
        if (state.d())
        {
            return j.f();
        } else
        {
            return 0;
        }
    }

    public RecyclerView.LayoutParams a()
    {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    View a(int i1, int j1, boolean flag)
    {
        h();
        int k1 = j.c();
        int l1 = j.d();
        byte byte0;
        if (j1 > i1)
        {
            byte0 = 1;
        } else
        {
            byte0 = -1;
        }
        for (; i1 != j1; i1 += byte0)
        {
            View view = g(i1);
            int i2 = j.a(view);
            int j2 = j.b(view);
            if (i2 >= l1 || j2 <= k1)
            {
                continue;
            }
            if (flag)
            {
                if (i2 >= k1 && j2 <= l1)
                {
                    return view;
                }
            } else
            {
                return view;
            }
        }

        return null;
    }

    public View a(View view, int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        z();
        int j1;
        if (n() != 0)
        {
            if ((j1 = k(i1)) != 0x80000000)
            {
                h();
                View view1;
                if (j1 == -1)
                {
                    view1 = l(state);
                } else
                {
                    view1 = k(state);
                }
                if (view1 != null)
                {
                    h();
                    a(j1, (int)(0.33F * (float)j.f()), false, state);
                    a.g = 0x80000000;
                    a.a = false;
                    a(recycler, a, state, true);
                    View view2;
                    if (j1 == -1)
                    {
                        view2 = A();
                    } else
                    {
                        view2 = B();
                    }
                    if (view2 != view1 && view2.isFocusable())
                    {
                        return view2;
                    }
                }
            }
        }
        return null;
    }

    public void a(int i1)
    {
        if (i1 != 0 && i1 != 1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("invalid orientation:").append(i1).toString());
        }
        a(((String) (null)));
        if (i1 == i)
        {
            return;
        } else
        {
            i = i1;
            j = null;
            k();
            return;
        }
    }

    public void a(Parcelable parcelable)
    {
        if (parcelable instanceof SavedState)
        {
            n = (SavedState)parcelable;
            k();
        }
    }

    void a(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutstate, LayoutChunkResult layoutchunkresult)
    {
        View view = layoutstate.a(recycler);
        if (view == null)
        {
            layoutchunkresult.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
        int i1;
        int j1;
        int i2;
        int j2;
        if (layoutstate.j == null)
        {
            boolean flag2 = k;
            int k3;
            boolean flag3;
            if (layoutstate.f == -1)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (flag2 == flag3)
            {
                b(view);
            } else
            {
                b(view, 0);
            }
        } else
        {
            boolean flag = k;
            boolean flag1;
            if (layoutstate.f == -1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag == flag1)
            {
                a(view);
            } else
            {
                a(view, 0);
            }
        }
        a(view, 0, 0);
        layoutchunkresult.a = j.c(view);
        if (i == 1)
        {
            int l2;
            if (g())
            {
                l2 = o() - s();
                i2 = l2 - j.d(view);
            } else
            {
                i2 = q();
                l2 = i2 + j.d(view);
            }
            if (layoutstate.f == -1)
            {
                k3 = layoutstate.b;
                i1 = layoutstate.b - layoutchunkresult.a;
                j2 = l2;
                j1 = k3;
            } else
            {
                int i3 = layoutstate.b;
                int j3 = layoutstate.b + layoutchunkresult.a;
                i1 = i3;
                j2 = l2;
                j1 = j3;
            }
        } else
        {
            i1 = r();
            j1 = i1 + j.d(view);
            if (layoutstate.f == -1)
            {
                int k2 = layoutstate.b;
                i2 = layoutstate.b - layoutchunkresult.a;
                j2 = k2;
            } else
            {
                int k1 = layoutstate.b;
                int l1 = layoutstate.b + layoutchunkresult.a;
                i2 = k1;
                j2 = l1;
            }
        }
        a(view, i2 + layoutparams.leftMargin, i1 + layoutparams.topMargin, j2 - layoutparams.rightMargin, j1 - layoutparams.bottomMargin);
        if (layoutparams.c() || layoutparams.d())
        {
            layoutchunkresult.c = true;
        }
        layoutchunkresult.d = view.isFocusable();
    }

    void a(RecyclerView.State state, AnchorInfo anchorinfo)
    {
    }

    public void a(RecyclerView recyclerview, RecyclerView.Recycler recycler)
    {
        super.a(recyclerview, recycler);
        if (f)
        {
            c(recycler);
            recycler.a();
        }
    }

    public void a(AccessibilityEvent accessibilityevent)
    {
        super.a(accessibilityevent);
        if (n() > 0)
        {
            AccessibilityRecordCompat accessibilityrecordcompat = AccessibilityEventCompat.asRecord(accessibilityevent);
            accessibilityrecordcompat.setFromIndex(i());
            accessibilityrecordcompat.setToIndex(j());
        }
    }

    public void a(String s)
    {
        if (n == null)
        {
            super.a(s);
        }
    }

    public void a(boolean flag)
    {
        a(((String) (null)));
        if (flag == c)
        {
            return;
        } else
        {
            c = flag;
            k();
            return;
        }
    }

    public int b(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (i == 0)
        {
            return 0;
        } else
        {
            return c(i1, recycler, state);
        }
    }

    public int b(RecyclerView.State state)
    {
        return h(state);
    }

    public View b(int i1)
    {
        int j1 = n();
        int k1;
        if (j1 != 0)
        {
            if ((k1 = i1 - d(g(0))) >= 0 && k1 < j1)
            {
                return g(k1);
            }
        }
        return null;
    }

    public boolean b()
    {
        return n == null && b == d;
    }

    int c(int i1, RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (n() == 0 || i1 == 0)
        {
            return 0;
        }
        a.a = true;
        h();
        int j1;
        int k1;
        int l1;
        if (i1 > 0)
        {
            j1 = 1;
        } else
        {
            j1 = -1;
        }
        k1 = Math.abs(i1);
        a(j1, k1, true, state);
        l1 = a.g + a(recycler, a, state, false);
        if (l1 < 0)
        {
            return 0;
        }
        if (k1 > l1)
        {
            i1 = j1 * l1;
        }
        j.a(-i1);
        return i1;
    }

    public int c(RecyclerView.State state)
    {
        return h(state);
    }

    public PointF c(int i1)
    {
        int j1 = 1;
        if (n() == 0)
        {
            return null;
        }
        int k1 = d(g(0));
        int l1 = 0;
        if (i1 < k1)
        {
            l1 = j1;
        }
        if (l1 != k)
        {
            j1 = -1;
        }
        if (i == 0)
        {
            return new PointF(j1, 0.0F);
        } else
        {
            return new PointF(0.0F, j1);
        }
    }

    public Parcelable c()
    {
        if (n != null)
        {
            return new SavedState(n);
        }
        SavedState savedstate = new SavedState();
        if (n() > 0)
        {
            h();
            boolean flag = b ^ k;
            savedstate.c = flag;
            if (flag)
            {
                View view1 = B();
                savedstate.b = j.d() - j.b(view1);
                savedstate.a = d(view1);
                return savedstate;
            } else
            {
                View view = A();
                savedstate.a = d(view);
                savedstate.b = j.a(view) - j.c();
                return savedstate;
            }
        } else
        {
            savedstate.b();
            return savedstate;
        }
    }

    public void c(RecyclerView.Recycler recycler, RecyclerView.State state)
    {
        if (n != null && n.a())
        {
            l = n.a;
        }
        h();
        a.a = false;
        z();
        o.a();
        o.c = k ^ d;
        b(state, o);
        int i1 = a(state);
        boolean flag;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        if (state.c() < o.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag == k)
        {
            j1 = i1;
            i1 = 0;
        } else
        {
            j1 = 0;
        }
        k1 = i1 + j.c();
        l1 = j1 + j.g();
        if (state.a() && l != -1 && m != 0x80000000)
        {
            View view = b(l);
            if (view != null)
            {
                int k3;
                int l3;
                int i4;
                int j4;
                LayoutState layoutstate1;
                int l4;
                if (k)
                {
                    l4 = j.d() - j.b(view) - m;
                } else
                {
                    int k4 = j.a(view) - j.c();
                    l4 = m - k4;
                }
                if (l4 > 0)
                {
                    k1 += l4;
                } else
                {
                    l1 -= l4;
                }
            }
        }
        a(state, o);
        a(recycler);
        a.i = state.a();
        if (o.c)
        {
            b(o);
            a.h = k1;
            a(recycler, a, state, false);
            j2 = a.b;
            if (a.c > 0)
            {
                l1 += a.c;
            }
            a(o);
            a.h = l1;
            layoutstate1 = a;
            layoutstate1.d = layoutstate1.d + a.e;
            a(recycler, a, state, false);
            i2 = a.b;
        } else
        {
            a(o);
            a.h = l1;
            a(recycler, a, state, false);
            i2 = a.b;
            if (a.c > 0)
            {
                k1 += a.c;
            }
            b(o);
            a.h = k1;
            LayoutState layoutstate = a;
            layoutstate.d = layoutstate.d + a.e;
            a(recycler, a, state, false);
            j2 = a.b;
        }
        if (n() > 0)
        {
            if (k ^ d)
            {
                k3 = a(i2, recycler, state, true);
                l3 = j2 + k3;
                i4 = i2 + k3;
                j4 = b(l3, recycler, state, false);
                j2 = l3 + j4;
                i2 = i4 + j4;
            } else
            {
                int k2 = b(j2, recycler, state, true);
                int l2 = j2 + k2;
                int i3 = i2 + k2;
                int j3 = a(i3, recycler, state, false);
                j2 = l2 + j3;
                i2 = i3 + j3;
            }
        }
        b(recycler, state, j2, i2);
        if (!state.a())
        {
            l = -1;
            m = 0x80000000;
            j.a();
        }
        b = d;
        n = null;
    }

    public int d(RecyclerView.State state)
    {
        return i(state);
    }

    public void d(int i1)
    {
        l = i1;
        m = 0x80000000;
        if (n != null)
        {
            n.b();
        }
        k();
    }

    public boolean d()
    {
        return i == 0;
    }

    public int e(RecyclerView.State state)
    {
        return i(state);
    }

    public boolean e()
    {
        return i == 1;
    }

    public int f()
    {
        return i;
    }

    public int f(RecyclerView.State state)
    {
        return j(state);
    }

    public int g(RecyclerView.State state)
    {
        return j(state);
    }

    protected boolean g()
    {
        return m() == 1;
    }

    void h()
    {
        if (a == null)
        {
            a = new LayoutState();
        }
        if (j == null)
        {
            j = OrientationHelper.a(this, i);
        }
    }

    public int i()
    {
        View view = a(0, n(), false);
        if (view == null)
        {
            return -1;
        } else
        {
            return d(view);
        }
    }

    public int j()
    {
        View view = a(-1 + n(), -1, false);
        if (view == null)
        {
            return -1;
        } else
        {
            return d(view);
        }
    }

    // Unreferenced inner class android/support/v7/widget/LinearLayoutManager$1

/* anonymous class */
    class _cls1 extends LinearSmoothScroller
    {

        final LinearLayoutManager a;

        public PointF a(int i1)
        {
            return a.c(i1);
        }
    }

}
