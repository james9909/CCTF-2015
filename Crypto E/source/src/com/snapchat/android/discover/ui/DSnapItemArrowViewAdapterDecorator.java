// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.bitmap.BitmapRecycling;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemViewAdapterDecorator, DSnapView, DSnapItemViewAdapter

public class DSnapItemArrowViewAdapterDecorator extends DSnapItemViewAdapterDecorator
{

    private final LayoutInflater e;
    private final Context f;
    private final BitmapRecycling g;
    private View h;
    private int i;
    private ImageView j;
    private AnimatorSet k;
    private android.animation.Animator.AnimatorListener l;
    private boolean m;

    DSnapItemArrowViewAdapterDecorator(Context context, DSnapItemViewAdapter dsnapitemviewadapter)
    {
        this((LayoutInflater)context.getSystemService("layout_inflater"), context, dsnapitemviewadapter, new BitmapRecycling());
    }

    DSnapItemArrowViewAdapterDecorator(LayoutInflater layoutinflater, Context context, DSnapItemViewAdapter dsnapitemviewadapter, BitmapRecycling bitmaprecycling)
    {
        super(dsnapitemviewadapter);
        f = context;
        e = layoutinflater;
        g = bitmaprecycling;
    }

    private Paint a(int i1, int j1)
    {
        Paint paint = new Paint();
        paint.setColor(i1);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(j1);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        paint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        paint.setPathEffect(new CornerPathEffect(3F));
        return paint;
    }

    static boolean a(DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        return dsnapitemarrowviewadapterdecorator.m;
    }

    static AnimatorSet b(DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        return dsnapitemarrowviewadapterdecorator.k;
    }

    static int c(DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        return dsnapitemarrowviewadapterdecorator.i;
    }

    static View d(DSnapItemArrowViewAdapterDecorator dsnapitemarrowviewadapterdecorator)
    {
        return dsnapitemarrowviewadapterdecorator.h;
    }

    private AnimatorSet h()
    {
        AnimatorSet animatorset = new AnimatorSet();
        float f1 = ViewUtils.a(-5F, f);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(h, View.Y, new float[] {
            0.0F, f1
        });
        objectanimator.setRepeatCount(1);
        objectanimator.setRepeatMode(2);
        animatorset.play(objectanimator);
        animatorset.setDuration(200L);
        animatorset.setStartDelay(1400L);
        return animatorset;
    }

    protected void a(ImageView imageview, int i1, int j1)
    {
        int k1 = (int)Math.abs(0.1F * (float)ViewUtils.a(f));
        int l1 = (int)Math.abs(0.26F * (float)k1);
        int i2 = (int)Math.abs(0.1F * (float)k1);
        int j2 = i2 + 2 * (int)Math.abs(0.375F * (float)i2);
        float f1 = (float)j2 / 2.0F;
        Bitmap bitmap = Bitmap.createBitmap(k1 + j2, l1 + j2, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = a(i1, i2);
        Paint paint1 = a(j1, j2);
        Path path = new Path();
        path.moveTo(f1, l1);
        path.rLineTo((float)k1 / 2.0F, -((float)l1 - f1));
        path.rLineTo((float)k1 / 2.0F, (float)l1 - f1);
        canvas.drawPath(path, paint1);
        canvas.drawPath(path, paint);
        imageview.setImageBitmap(bitmap);
        i = (int)(0.080000000000000002D * (double)ViewUtils.b(f));
        h = a.findViewById(0x7f0a01a4);
        h.setY(i);
        k = h();
        l = new com.snapchat.android.ui.CashSwiperView.AnimationEndListener() {

            final DSnapItemArrowViewAdapterDecorator a;

            public void onAnimationEnd(Animator animator)
            {
                if (DSnapItemArrowViewAdapterDecorator.a(a))
                {
                    DSnapItemArrowViewAdapterDecorator.b(a).start();
                    return;
                } else
                {
                    DSnapItemArrowViewAdapterDecorator.d(a).setY(DSnapItemArrowViewAdapterDecorator.c(a));
                    DSnapItemArrowViewAdapterDecorator.d(a).invalidate();
                    return;
                }
            }

            
            {
                a = DSnapItemArrowViewAdapterDecorator.this;
                super();
            }
        };
        k.addListener(l);
    }

    public boolean a(DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        super.a(dsnapview, dsnappage, dsnappanel);
        a = e.inflate(0x7f040044, null);
        c = (FrameLayout)a.findViewById(0x7f0a01a3);
        j = (ImageView)a.findViewById(0x7f0a01a6);
        a(j, dsnapview.getPublisherPrimaryColor(), dsnapview.getPublisherSecondaryColor());
        a.findViewById(0x7f0a01a5).setOnClickListener(new android.view.View.OnClickListener(dsnapview) {

            final DSnapView a;
            final DSnapItemArrowViewAdapterDecorator b;

            public void onClick(View view)
            {
                a.b(1);
            }

            
            {
                b = DSnapItemArrowViewAdapterDecorator.this;
                a = dsnapview;
                super();
            }
        });
        return true;
    }

    public void c()
    {
        super.c();
        if (j != null)
        {
            g.a(j);
        }
    }

    public void n_()
    {
        super.n_();
        h.animate().y(0.0F).setDuration(200L);
        if (m)
        {
            return;
        } else
        {
            k.start();
            m = true;
            return;
        }
    }

    public void o_()
    {
        super.o_();
        m = false;
        k.cancel();
        (new Handler()).postDelayed(new Runnable() {

            final DSnapItemArrowViewAdapterDecorator a;

            public void run()
            {
                if (!DSnapItemArrowViewAdapterDecorator.a(a))
                {
                    DSnapItemArrowViewAdapterDecorator.d(a).setY(DSnapItemArrowViewAdapterDecorator.c(a));
                    DSnapItemArrowViewAdapterDecorator.d(a).invalidate();
                }
            }

            
            {
                a = DSnapItemArrowViewAdapterDecorator.this;
                super();
            }
        }, k.getDuration());
    }
}
