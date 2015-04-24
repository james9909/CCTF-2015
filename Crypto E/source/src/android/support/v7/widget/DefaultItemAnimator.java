// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator extends RecyclerView.ItemAnimator
{
    static class ChangeInfo
    {

        public RecyclerView.ViewHolder a;
        public RecyclerView.ViewHolder b;
        public int c;
        public int d;
        public int e;
        public int f;

        public String toString()
        {
            return (new StringBuilder()).append("ChangeInfo{oldHolder=").append(a).append(", newHolder=").append(b).append(", fromX=").append(c).append(", fromY=").append(d).append(", toX=").append(e).append(", toY=").append(f).append('}').toString();
        }

        private ChangeInfo(RecyclerView.ViewHolder viewholder, RecyclerView.ViewHolder viewholder1)
        {
            a = viewholder;
            b = viewholder1;
        }

        private ChangeInfo(RecyclerView.ViewHolder viewholder, RecyclerView.ViewHolder viewholder1, int l, int i1, int j1, int k1)
        {
            this(viewholder, viewholder1);
            c = l;
            d = i1;
            e = j1;
            f = k1;
        }

    }

    static class MoveInfo
    {

        public RecyclerView.ViewHolder a;
        public int b;
        public int c;
        public int d;
        public int e;

        private MoveInfo(RecyclerView.ViewHolder viewholder, int l, int i1, int j1, int k1)
        {
            a = viewholder;
            b = l;
            c = i1;
            d = j1;
            e = k1;
        }

    }

    static class VpaListenerAdapter
        implements ViewPropertyAnimatorListener
    {

        public void onAnimationCancel(View view)
        {
        }

        public void onAnimationEnd(View view)
        {
        }

        public void onAnimationStart(View view)
        {
        }

        private VpaListenerAdapter()
        {
        }

    }


    private ArrayList a;
    private ArrayList b;
    private ArrayList c;
    private ArrayList d;
    private ArrayList e;
    private ArrayList f;
    private ArrayList g;
    private ArrayList h;
    private ArrayList i;
    private ArrayList j;
    private ArrayList k;

    public DefaultItemAnimator()
    {
        a = new ArrayList();
        b = new ArrayList();
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        i = new ArrayList();
        j = new ArrayList();
        k = new ArrayList();
    }

    static ArrayList a(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.f;
    }

    private void a(ChangeInfo changeinfo)
    {
        RecyclerView.ViewHolder viewholder = changeinfo.a;
        View view;
        RecyclerView.ViewHolder viewholder1;
        View view1;
        if (viewholder == null)
        {
            view = null;
        } else
        {
            view = viewholder.a;
        }
        viewholder1 = changeinfo.b;
        view1 = null;
        if (viewholder1 != null)
        {
            view1 = viewholder1.a;
        }
        if (view != null)
        {
            k.add(changeinfo.a);
            ViewPropertyAnimatorCompat viewpropertyanimatorcompat1 = ViewCompat.animate(view).setDuration(g());
            viewpropertyanimatorcompat1.translationX(changeinfo.e - changeinfo.c);
            viewpropertyanimatorcompat1.translationY(changeinfo.f - changeinfo.d);
            viewpropertyanimatorcompat1.alpha(0.0F).setListener(new VpaListenerAdapter(changeinfo, viewpropertyanimatorcompat1) {

                final ChangeInfo a;
                final ViewPropertyAnimatorCompat b;
                final DefaultItemAnimator c;

                public void onAnimationEnd(View view2)
                {
                    b.setListener(null);
                    ViewCompat.setAlpha(view2, 1.0F);
                    ViewCompat.setTranslationX(view2, 0.0F);
                    ViewCompat.setTranslationY(view2, 0.0F);
                    c.a(a.a, true);
                    DefaultItemAnimator.h(c).remove(a.a);
                    DefaultItemAnimator.e(c);
                }

                public void onAnimationStart(View view2)
                {
                    c.b(a.a, true);
                }

            
            {
                c = DefaultItemAnimator.this;
                a = changeinfo;
                b = viewpropertyanimatorcompat;
                super();
            }
            }).start();
        }
        if (view1 != null)
        {
            k.add(changeinfo.b);
            ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(view1);
            viewpropertyanimatorcompat.translationX(0.0F).translationY(0.0F).setDuration(g()).alpha(1.0F).setListener(new VpaListenerAdapter(changeinfo, viewpropertyanimatorcompat, view1) {

                final ChangeInfo a;
                final ViewPropertyAnimatorCompat b;
                final View c;
                final DefaultItemAnimator d;

                public void onAnimationEnd(View view2)
                {
                    b.setListener(null);
                    ViewCompat.setAlpha(c, 1.0F);
                    ViewCompat.setTranslationX(c, 0.0F);
                    ViewCompat.setTranslationY(c, 0.0F);
                    d.a(a.b, false);
                    DefaultItemAnimator.h(d).remove(a.b);
                    DefaultItemAnimator.e(d);
                }

                public void onAnimationStart(View view2)
                {
                    d.b(a.b, false);
                }

            
            {
                d = DefaultItemAnimator.this;
                a = changeinfo;
                b = viewpropertyanimatorcompat;
                c = view;
                super();
            }
            }).start();
        }
    }

    static void a(DefaultItemAnimator defaultitemanimator, ChangeInfo changeinfo)
    {
        defaultitemanimator.a(changeinfo);
    }

    static void a(DefaultItemAnimator defaultitemanimator, RecyclerView.ViewHolder viewholder)
    {
        defaultitemanimator.q(viewholder);
    }

    static void a(DefaultItemAnimator defaultitemanimator, RecyclerView.ViewHolder viewholder, int l, int i1, int j1, int k1)
    {
        defaultitemanimator.b(viewholder, l, i1, j1, k1);
    }

    private void a(List list, RecyclerView.ViewHolder viewholder)
    {
        for (int l = -1 + list.size(); l >= 0; l--)
        {
            ChangeInfo changeinfo = (ChangeInfo)list.get(l);
            if (a(changeinfo, viewholder) && changeinfo.a == null && changeinfo.b == null)
            {
                list.remove(changeinfo);
            }
        }

    }

    private boolean a(ChangeInfo changeinfo, RecyclerView.ViewHolder viewholder)
    {
        boolean flag = false;
        if (changeinfo.b != viewholder) goto _L2; else goto _L1
_L1:
        changeinfo.b = null;
_L6:
        boolean flag1;
        ViewCompat.setAlpha(viewholder.a, 1.0F);
        ViewCompat.setTranslationX(viewholder.a, 0.0F);
        ViewCompat.setTranslationY(viewholder.a, 0.0F);
        a(viewholder, flag);
        flag1 = true;
_L4:
        return flag1;
_L2:
        RecyclerView.ViewHolder viewholder1;
        viewholder1 = changeinfo.a;
        flag1 = false;
        if (viewholder1 != viewholder) goto _L4; else goto _L3
_L3:
        changeinfo.a = null;
        flag = true;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static ArrayList b(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.g;
    }

    private void b(ChangeInfo changeinfo)
    {
        if (changeinfo.a != null)
        {
            a(changeinfo, changeinfo.a);
        }
        if (changeinfo.b != null)
        {
            a(changeinfo, changeinfo.b);
        }
    }

    private void b(RecyclerView.ViewHolder viewholder, int l, int i1, int j1, int k1)
    {
        View view = viewholder.a;
        int l1 = j1 - l;
        int i2 = k1 - i1;
        if (l1 != 0)
        {
            ViewCompat.animate(view).translationX(0.0F);
        }
        if (i2 != 0)
        {
            ViewCompat.animate(view).translationY(0.0F);
        }
        i.add(viewholder);
        ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(view);
        viewpropertyanimatorcompat.setDuration(d()).setListener(new VpaListenerAdapter(viewholder, l1, i2, viewpropertyanimatorcompat) {

            final RecyclerView.ViewHolder a;
            final int b;
            final int c;
            final ViewPropertyAnimatorCompat d;
            final DefaultItemAnimator e;

            public void onAnimationCancel(View view1)
            {
                if (b != 0)
                {
                    ViewCompat.setTranslationX(view1, 0.0F);
                }
                if (c != 0)
                {
                    ViewCompat.setTranslationY(view1, 0.0F);
                }
            }

            public void onAnimationEnd(View view1)
            {
                d.setListener(null);
                e.e(a);
                DefaultItemAnimator.g(e).remove(a);
                DefaultItemAnimator.e(e);
            }

            public void onAnimationStart(View view1)
            {
                e.h(a);
            }

            
            {
                e = DefaultItemAnimator.this;
                a = viewholder;
                b = l;
                c = i1;
                d = viewpropertyanimatorcompat;
                super();
            }
        }).start();
    }

    static ArrayList c(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.e;
    }

    static ArrayList d(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.j;
    }

    static void e(DefaultItemAnimator defaultitemanimator)
    {
        defaultitemanimator.j();
    }

    static ArrayList f(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.h;
    }

    static ArrayList g(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.i;
    }

    static ArrayList h(DefaultItemAnimator defaultitemanimator)
    {
        return defaultitemanimator.k;
    }

    private void j()
    {
        if (!b())
        {
            i();
        }
    }

    private void p(RecyclerView.ViewHolder viewholder)
    {
        ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(viewholder.a);
        viewpropertyanimatorcompat.setDuration(f()).alpha(0.0F).setListener(new VpaListenerAdapter(viewholder, viewpropertyanimatorcompat) {

            final RecyclerView.ViewHolder a;
            final ViewPropertyAnimatorCompat b;
            final DefaultItemAnimator c;

            public void onAnimationEnd(View view)
            {
                b.setListener(null);
                ViewCompat.setAlpha(view, 1.0F);
                c.d(a);
                DefaultItemAnimator.d(c).remove(a);
                DefaultItemAnimator.e(c);
            }

            public void onAnimationStart(View view)
            {
                c.g(a);
            }

            
            {
                c = DefaultItemAnimator.this;
                a = viewholder;
                b = viewpropertyanimatorcompat;
                super();
            }
        }).start();
        j.add(viewholder);
    }

    private void q(RecyclerView.ViewHolder viewholder)
    {
        View view = viewholder.a;
        h.add(viewholder);
        ViewPropertyAnimatorCompat viewpropertyanimatorcompat = ViewCompat.animate(view);
        viewpropertyanimatorcompat.alpha(1.0F).setDuration(e()).setListener(new VpaListenerAdapter(viewholder, viewpropertyanimatorcompat) {

            final RecyclerView.ViewHolder a;
            final ViewPropertyAnimatorCompat b;
            final DefaultItemAnimator c;

            public void onAnimationCancel(View view1)
            {
                ViewCompat.setAlpha(view1, 1.0F);
            }

            public void onAnimationEnd(View view1)
            {
                b.setListener(null);
                c.f(a);
                DefaultItemAnimator.f(c).remove(a);
                DefaultItemAnimator.e(c);
            }

            public void onAnimationStart(View view1)
            {
                c.i(a);
            }

            
            {
                c = DefaultItemAnimator.this;
                a = viewholder;
                b = viewpropertyanimatorcompat;
                super();
            }
        }).start();
    }

    public void a()
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (!a.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!c.isEmpty())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!d.isEmpty())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!b.isEmpty())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag || flag1 || flag3 || flag2)
        {
            for (Iterator iterator = a.iterator(); iterator.hasNext(); p((RecyclerView.ViewHolder)iterator.next())) { }
            a.clear();
            if (flag1)
            {
                ArrayList arraylist = new ArrayList();
                arraylist.addAll(c);
                f.add(arraylist);
                c.clear();
                Runnable runnable = new Runnable(arraylist) {

                    final ArrayList a;
                    final DefaultItemAnimator b;

                    public void run()
                    {
                        MoveInfo moveinfo;
                        for (Iterator iterator1 = a.iterator(); iterator1.hasNext(); DefaultItemAnimator.a(b, moveinfo.a, moveinfo.b, moveinfo.c, moveinfo.d, moveinfo.e))
                        {
                            moveinfo = (MoveInfo)iterator1.next();
                        }

                        a.clear();
                        DefaultItemAnimator.a(b).remove(a);
                    }

            
            {
                b = DefaultItemAnimator.this;
                a = arraylist;
                super();
            }
                };
                ArrayList arraylist1;
                ArrayList arraylist2;
                long l3;
                if (flag)
                {
                    ViewCompat.postOnAnimationDelayed(((MoveInfo)arraylist.get(0)).a.a, runnable, f());
                } else
                {
                    runnable.run();
                }
            }
            if (flag2)
            {
                arraylist1 = new ArrayList();
                arraylist1.addAll(d);
                g.add(arraylist1);
                d.clear();
                Runnable runnable1 = new Runnable(arraylist1) {

                    final ArrayList a;
                    final DefaultItemAnimator b;

                    public void run()
                    {
                        ChangeInfo changeinfo;
                        for (Iterator iterator1 = a.iterator(); iterator1.hasNext(); DefaultItemAnimator.a(b, changeinfo))
                        {
                            changeinfo = (ChangeInfo)iterator1.next();
                        }

                        a.clear();
                        DefaultItemAnimator.b(b).remove(a);
                    }

            
            {
                b = DefaultItemAnimator.this;
                a = arraylist;
                super();
            }
                };
                if (flag)
                {
                    ViewCompat.postOnAnimationDelayed(((ChangeInfo)arraylist1.get(0)).a.a, runnable1, f());
                } else
                {
                    runnable1.run();
                }
            }
            if (flag3)
            {
                arraylist2 = new ArrayList();
                arraylist2.addAll(b);
                e.add(arraylist2);
                b.clear();
                Runnable runnable2 = new Runnable(arraylist2) {

                    final ArrayList a;
                    final DefaultItemAnimator b;

                    public void run()
                    {
                        RecyclerView.ViewHolder viewholder;
                        for (Iterator iterator1 = a.iterator(); iterator1.hasNext(); DefaultItemAnimator.a(b, viewholder))
                        {
                            viewholder = (RecyclerView.ViewHolder)iterator1.next();
                        }

                        a.clear();
                        DefaultItemAnimator.c(b).remove(a);
                    }

            
            {
                b = DefaultItemAnimator.this;
                a = arraylist;
                super();
            }
                };
                if (flag || flag1 || flag2)
                {
                    long l;
                    long l1;
                    long l2;
                    if (flag)
                    {
                        l = f();
                    } else
                    {
                        l = 0L;
                    }
                    if (flag1)
                    {
                        l1 = d();
                    } else
                    {
                        l1 = 0L;
                    }
                    if (flag2)
                    {
                        l2 = g();
                    } else
                    {
                        l2 = 0L;
                    }
                    l3 = l + Math.max(l1, l2);
                    ViewCompat.postOnAnimationDelayed(((RecyclerView.ViewHolder)arraylist2.get(0)).a, runnable2, l3);
                    return;
                } else
                {
                    runnable2.run();
                    return;
                }
            }
        }
    }

    void a(List list)
    {
        for (int l = -1 + list.size(); l >= 0; l--)
        {
            ViewCompat.animate(((RecyclerView.ViewHolder)list.get(l)).a).cancel();
        }

    }

    public boolean a(RecyclerView.ViewHolder viewholder)
    {
        c(viewholder);
        a.add(viewholder);
        return true;
    }

    public boolean a(RecyclerView.ViewHolder viewholder, int l, int i1, int j1, int k1)
    {
        View view = viewholder.a;
        int l1 = (int)((float)l + ViewCompat.getTranslationX(viewholder.a));
        int i2 = (int)((float)i1 + ViewCompat.getTranslationY(viewholder.a));
        c(viewholder);
        int j2 = j1 - l1;
        int k2 = k1 - i2;
        if (j2 == 0 && k2 == 0)
        {
            e(viewholder);
            return false;
        }
        if (j2 != 0)
        {
            ViewCompat.setTranslationX(view, -j2);
        }
        if (k2 != 0)
        {
            ViewCompat.setTranslationY(view, -k2);
        }
        c.add(new MoveInfo(viewholder, l1, i2, j1, k1));
        return true;
    }

    public boolean a(RecyclerView.ViewHolder viewholder, RecyclerView.ViewHolder viewholder1, int l, int i1, int j1, int k1)
    {
        float f1 = ViewCompat.getTranslationX(viewholder.a);
        float f2 = ViewCompat.getTranslationY(viewholder.a);
        float f3 = ViewCompat.getAlpha(viewholder.a);
        c(viewholder);
        int l1 = (int)((float)(j1 - l) - f1);
        int i2 = (int)((float)(k1 - i1) - f2);
        ViewCompat.setTranslationX(viewholder.a, f1);
        ViewCompat.setTranslationY(viewholder.a, f2);
        ViewCompat.setAlpha(viewholder.a, f3);
        if (viewholder1 != null && viewholder1.a != null)
        {
            c(viewholder1);
            ViewCompat.setTranslationX(viewholder1.a, -l1);
            ViewCompat.setTranslationY(viewholder1.a, -i2);
            ViewCompat.setAlpha(viewholder1.a, 0.0F);
        }
        d.add(new ChangeInfo(viewholder, viewholder1, l, i1, j1, k1));
        return true;
    }

    public boolean b()
    {
        return !b.isEmpty() || !d.isEmpty() || !c.isEmpty() || !a.isEmpty() || !i.isEmpty() || !j.isEmpty() || !h.isEmpty() || !k.isEmpty() || !f.isEmpty() || !e.isEmpty() || !g.isEmpty();
    }

    public boolean b(RecyclerView.ViewHolder viewholder)
    {
        c(viewholder);
        ViewCompat.setAlpha(viewholder.a, 0.0F);
        b.add(viewholder);
        return true;
    }

    public void c()
    {
        for (int l = -1 + c.size(); l >= 0; l--)
        {
            MoveInfo moveinfo1 = (MoveInfo)c.get(l);
            View view1 = moveinfo1.a.a;
            ViewCompat.setTranslationY(view1, 0.0F);
            ViewCompat.setTranslationX(view1, 0.0F);
            e(moveinfo1.a);
            c.remove(l);
        }

        for (int i1 = -1 + a.size(); i1 >= 0; i1--)
        {
            d((RecyclerView.ViewHolder)a.get(i1));
            a.remove(i1);
        }

        for (int j1 = -1 + b.size(); j1 >= 0; j1--)
        {
            RecyclerView.ViewHolder viewholder1 = (RecyclerView.ViewHolder)b.get(j1);
            ViewCompat.setAlpha(viewholder1.a, 1.0F);
            f(viewholder1);
            b.remove(j1);
        }

        for (int k1 = -1 + d.size(); k1 >= 0; k1--)
        {
            b((ChangeInfo)d.get(k1));
        }

        d.clear();
        if (!b())
        {
            return;
        }
        for (int l1 = -1 + f.size(); l1 >= 0; l1--)
        {
            ArrayList arraylist2 = (ArrayList)f.get(l1);
            for (int i3 = -1 + arraylist2.size(); i3 >= 0; i3--)
            {
                MoveInfo moveinfo = (MoveInfo)arraylist2.get(i3);
                View view = moveinfo.a.a;
                ViewCompat.setTranslationY(view, 0.0F);
                ViewCompat.setTranslationX(view, 0.0F);
                e(moveinfo.a);
                arraylist2.remove(i3);
                if (arraylist2.isEmpty())
                {
                    f.remove(arraylist2);
                }
            }

        }

        for (int i2 = -1 + e.size(); i2 >= 0; i2--)
        {
            ArrayList arraylist1 = (ArrayList)e.get(i2);
            for (int l2 = -1 + arraylist1.size(); l2 >= 0; l2--)
            {
                RecyclerView.ViewHolder viewholder = (RecyclerView.ViewHolder)arraylist1.get(l2);
                ViewCompat.setAlpha(viewholder.a, 1.0F);
                f(viewholder);
                arraylist1.remove(l2);
                if (arraylist1.isEmpty())
                {
                    e.remove(arraylist1);
                }
            }

        }

        for (int j2 = -1 + g.size(); j2 >= 0; j2--)
        {
            ArrayList arraylist = (ArrayList)g.get(j2);
            for (int k2 = -1 + arraylist.size(); k2 >= 0; k2--)
            {
                b((ChangeInfo)arraylist.get(k2));
                if (arraylist.isEmpty())
                {
                    g.remove(arraylist);
                }
            }

        }

        a(j);
        a(i);
        a(h);
        a(k);
        i();
    }

    public void c(RecyclerView.ViewHolder viewholder)
    {
        View view = viewholder.a;
        ViewCompat.animate(view).cancel();
        for (int l = -1 + c.size(); l >= 0; l--)
        {
            if (((MoveInfo)c.get(l)).a == viewholder)
            {
                ViewCompat.setTranslationY(view, 0.0F);
                ViewCompat.setTranslationX(view, 0.0F);
                e(viewholder);
                c.remove(l);
            }
        }

        a(d, viewholder);
        if (a.remove(viewholder))
        {
            ViewCompat.setAlpha(view, 1.0F);
            d(viewholder);
        }
        if (b.remove(viewholder))
        {
            ViewCompat.setAlpha(view, 1.0F);
            f(viewholder);
        }
        for (int i1 = -1 + g.size(); i1 >= 0; i1--)
        {
            ArrayList arraylist2 = (ArrayList)g.get(i1);
            a(arraylist2, viewholder);
            if (arraylist2.isEmpty())
            {
                g.remove(i1);
            }
        }

        int j1 = -1 + f.size();
label0:
        do
        {
            if (j1 >= 0)
            {
                ArrayList arraylist1 = (ArrayList)f.get(j1);
                int l1 = -1 + arraylist1.size();
                do
                {
label1:
                    {
                        if (l1 >= 0)
                        {
                            if (((MoveInfo)arraylist1.get(l1)).a != viewholder)
                            {
                                break label1;
                            }
                            ViewCompat.setTranslationY(view, 0.0F);
                            ViewCompat.setTranslationX(view, 0.0F);
                            e(viewholder);
                            arraylist1.remove(l1);
                            if (arraylist1.isEmpty())
                            {
                                f.remove(j1);
                            }
                        }
                        j1--;
                        continue label0;
                    }
                    l1--;
                } while (true);
            }
            for (int k1 = -1 + e.size(); k1 >= 0; k1--)
            {
                ArrayList arraylist = (ArrayList)e.get(k1);
                if (!arraylist.remove(viewholder))
                {
                    continue;
                }
                ViewCompat.setAlpha(view, 1.0F);
                f(viewholder);
                if (arraylist.isEmpty())
                {
                    e.remove(k1);
                }
            }

            if (!j.remove(viewholder));
            if (!h.remove(viewholder));
            if (!k.remove(viewholder));
            if (!i.remove(viewholder));
            j();
            return;
        } while (true);
    }
}
