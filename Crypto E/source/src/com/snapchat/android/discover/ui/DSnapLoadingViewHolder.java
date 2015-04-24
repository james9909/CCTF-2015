// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.animation.AnimatorEndListener;
import com.snapchat.android.util.bitmap.AsyncBitmapLoader;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

public class DSnapLoadingViewHolder
{

    private final int a;
    private final Context b;
    private final View c;
    private final ImageView d;
    private final ImageView e;
    private final AnimationDrawable f;
    private final ObjectAnimator g;
    private final AsyncBitmapLoader h;
    private boolean i;
    private Animator j;
    private final OnBitmapDecodedCallback k;

    public DSnapLoadingViewHolder(Context context, DSnapView dsnapview)
    {
        this(context, dsnapview, new AsyncBitmapLoader(context));
    }

    DSnapLoadingViewHolder(Context context, DSnapView dsnapview, AsyncBitmapLoader asyncbitmaploader)
    {
        i = false;
        k = new OnBitmapDecodedCallback() {

            final DSnapLoadingViewHolder a;

            public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
            {
                super.a(bitmapdecoderesult, asyncloadbitmaprequest);
                DSnapLoadingViewHolder.b(a).post(new Runnable(this) {

                    final _cls1 a;

                    public void run()
                    {
                        DSnapLoadingViewHolder.a(a.a).start();
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                a = DSnapLoadingViewHolder.this;
                super();
            }
        };
        h = asyncbitmaploader;
        b = context;
        a = b.getResources().getDimensionPixelSize(0x7f090029);
        c = dsnapview.findViewById(0x7f0a01a9);
        d = (ImageView)dsnapview.findViewById(0x7f0a01ab);
        e = (ImageView)dsnapview.findViewById(0x7f0a01aa);
        g = ObjectAnimator.ofFloat(d, View.ALPHA, new float[] {
            0.0F
        });
        g.setDuration(800L);
        g.setRepeatCount(-1);
        g.setRepeatMode(2);
        f = (AnimationDrawable)context.getResources().getDrawable(0x7f0200fd);
    }

    static ObjectAnimator a(DSnapLoadingViewHolder dsnaploadingviewholder)
    {
        return dsnaploadingviewholder.g;
    }

    private void a(long l, float f1, boolean flag)
    {
        j = ObjectAnimator.ofFloat(c, View.ALPHA, new float[] {
            f1, 0.0F
        });
        j.setDuration(l);
        j.setInterpolator(new AccelerateInterpolator(1.5F));
        j.addListener(new AnimatorEndListener(flag) {

            final boolean a;
            final DSnapLoadingViewHolder b;
            private boolean c;

            public void onAnimationCancel(Animator animator)
            {
                c = true;
            }

            public void onAnimationEnd(Animator animator)
            {
                if (!a || !c)
                {
                    b.d();
                }
            }

            
            {
                b = DSnapLoadingViewHolder.this;
                a = flag;
                super();
                c = false;
            }
        });
        j.start();
    }

    static ImageView b(DSnapLoadingViewHolder dsnaploadingviewholder)
    {
        return dsnaploadingviewholder.d;
    }

    public void a()
    {
        d();
    }

    public void a(int l)
    {
        if (c.getVisibility() != 0 || j != null)
        {
            return;
        } else
        {
            Timber.a("DSnapLoadingViewHolder", (new StringBuilder()).append("LOADING-STATE: Hiding with duration ").append(l).toString(), new Object[0]);
            a(l, 1.0F, true);
            return;
        }
    }

    public void a(String s, MediaState mediastate, int l)
    {
        c.setBackgroundColor(l);
        Timber.a("DSnapLoadingViewHolder", "LOADING-STATE %s: state: %s", new Object[] {
            s, mediastate
        });
        if (s != null || mediastate != MediaState.f) goto _L2; else goto _L1
_L1:
        e.setVisibility(0);
        d.setVisibility(8);
        g.cancel();
        if (!f.isRunning()) goto _L4; else goto _L3
_L3:
        return;
_L4:
        ViewUtils.a(e, f);
        f.start();
_L6:
        c.setVisibility(0);
        return;
_L2:
        e.setVisibility(8);
        d.setVisibility(0);
        f.stop();
        if (g.isRunning())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s != null)
        {
            AsyncLoadBitmapRequest asyncloadbitmaprequest = (new com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest.Builder()).a(s).a(d).a(k).b(a).a(a).a(true).a();
            h.a(asyncloadbitmaprequest);
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L3; else goto _L7
_L7:
    }

    public void b()
    {
        if (i)
        {
            return;
        }
        i = true;
        if (j != null)
        {
            j.cancel();
            float f1 = c.getAlpha();
            long l = (long)Math.abs(300F * f1);
            Timber.a("DSnapLoadingViewHolder", (new StringBuilder()).append("LOADING-STATE: Cancel slow and hide fast with duration: ").append(l).toString(), new Object[0]);
            a(l, f1, false);
            return;
        } else
        {
            Timber.a("DSnapLoadingViewHolder", "LOADING-STATE: Hiding fast", new Object[0]);
            a(300);
            return;
        }
    }

    public void c()
    {
        a(800);
    }

    public void d()
    {
        c.setVisibility(8);
        f.stop();
        g.cancel();
        d.clearAnimation();
        i = false;
        j = null;
        h.a(d);
    }
}
