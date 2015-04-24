// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.animation.AnimatorEndListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

public class DSnapLoadingErrorViewHolder
{

    private final ViewGroup a;
    private final TextView b;
    private final TextView c;
    private final ImageView d;
    private final ViewGroup e;
    private final TextView f;
    private final View g;
    private final View h;
    private boolean i;
    private Animator j;

    public DSnapLoadingErrorViewHolder(DSnapView dsnapview, android.view.View.OnClickListener onclicklistener)
    {
        i = false;
        j = null;
        a = (ViewGroup)dsnapview.findViewById(0x7f0a01ad);
        h = a.findViewById(0x7f0a01b3);
        g = a.findViewById(0x7f0a01b2);
        e = (ViewGroup)a.findViewById(0x7f0a01b1);
        f = (TextView)a.findViewById(0x7f0a01b4);
        e.setOnClickListener(new android.view.View.OnClickListener(onclicklistener) {

            final android.view.View.OnClickListener a;
            final DSnapLoadingErrorViewHolder b;

            public void onClick(View view)
            {
                DSnapLoadingErrorViewHolder.a(b, true);
                if (a != null)
                {
                    a.onClick(view);
                }
            }

            
            {
                b = DSnapLoadingErrorViewHolder.this;
                a = onclicklistener;
                super();
            }
        });
        d = (ImageView)a.findViewById(0x7f0a01b0);
        b = (TextView)a.findViewById(0x7f0a01ae);
        c = (TextView)a.findViewById(0x7f0a01af);
    }

    private void a(long l, float f1, boolean flag)
    {
        j = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] {
            f1, 0.0F
        });
        j.setDuration(l);
        j.setInterpolator(new AccelerateInterpolator(1.5F));
        j.addListener(new AnimatorEndListener(flag) {

            final boolean a;
            final DSnapLoadingErrorViewHolder b;
            private boolean c;

            public void onAnimationCancel(Animator animator)
            {
                c = true;
            }

            public void onAnimationEnd(Animator animator)
            {
                if (!a || !c)
                {
                    b.c();
                }
            }

            
            {
                b = DSnapLoadingErrorViewHolder.this;
                a = flag;
                super();
                c = false;
            }
        });
        j.start();
    }

    static void a(DSnapLoadingErrorViewHolder dsnaploadingerrorviewholder, boolean flag)
    {
        dsnaploadingerrorviewholder.a(flag);
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            h.setVisibility(8);
            g.setVisibility(0);
            f.setText(0x7f0c0115);
            e.setClickable(false);
            return;
        } else
        {
            h.setVisibility(0);
            g.setVisibility(8);
            f.setText(0x7f0c00d0);
            e.setClickable(true);
            return;
        }
    }

    public void a()
    {
        if (i)
        {
            return;
        }
        i = true;
        if (j != null)
        {
            j.cancel();
            float f1 = a.getAlpha();
            long l = (long)Math.abs(300F * f1);
            Timber.a("DSnapLoadingErrorViewHolder", (new StringBuilder()).append("LOADING-STATE: Cancel slow and hide fast with duration: ").append(l).toString(), new Object[0]);
            a(l, f1, false);
            return;
        } else
        {
            Timber.a("DSnapLoadingErrorViewHolder", "LOADING-STATE: Hiding fast", new Object[0]);
            a(300);
            return;
        }
    }

    public void a(int k)
    {
        if (a.getVisibility() != 0 || j != null)
        {
            return;
        } else
        {
            Timber.a("DSnapLoadingErrorViewHolder", (new StringBuilder()).append("LOADING-STATE: Hiding with duration ").append(k).toString(), new Object[0]);
            a(k, 1.0F, true);
            return;
        }
    }

    public void a(MediaState mediastate)
    {
        int k = 0x7f0c00ce;
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[MediaState.values().length];
                try
                {
                    a[MediaState.g.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[MediaState.i.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[MediaState.k.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls3.a[mediastate.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 78
    //                   2 91;
           goto _L1 _L2 _L3
_L1:
        int l;
        int i1;
        l = 0x7f0c00cb;
        i1 = 0x7f020100;
_L5:
        b.setText(k);
        c.setText(l);
        d.setImageResource(i1);
        a.setVisibility(0);
        a(false);
        return;
_L2:
        k = 0x7f0c00ca;
        l = 0x7f0c00c9;
        i1 = 0x7f0200ff;
        continue; /* Loop/switch isn't completed */
_L3:
        l = 0x7f0c00cd;
        i1 = 0x7f020103;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void b()
    {
        a(800);
    }

    public void c()
    {
        a.setVisibility(8);
        i = false;
        j = null;
    }
}
