// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ViewUtils;
import java.util.ArrayList;
import java.util.List;

public class TapToSkipInstructorView extends ViewGroup
{

    private ImageView a;
    private ImageView b;
    private ImageView c;
    private ImageView d;
    private TextView e;
    private Context f;
    private Bitmap g;
    private AnimatorSet h;

    public TapToSkipInstructorView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = context;
    }

    private Animator a(View view, float f1, float f2, long l)
    {
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, ROTATION_X, new float[] {
            f1, f2
        });
        objectanimator.setDuration(l);
        return objectanimator;
    }

    private Animator a(View view, Property property, float f1, float f2, long l)
    {
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, property, new float[] {
            f1, f2
        });
        objectanimator.setDuration(l);
        return objectanimator;
    }

    private Animator a(View view, boolean flag, long l, long l1)
    {
        ObjectAnimator objectanimator;
        if (flag)
        {
            objectanimator = ObjectAnimator.ofFloat(view, ALPHA, new float[] {
                0.0F, 1.0F
            });
        } else
        {
            objectanimator = ObjectAnimator.ofFloat(view, ALPHA, new float[] {
                1.0F, 0.0F
            });
        }
        objectanimator.setDuration(l1);
        objectanimator.setStartDelay(l);
        return objectanimator;
    }

    private AnimatorSet a(AnimatorSet animatorset)
    {
        Animator aanimator[] = new Animator[6];
        aanimator[0] = a(((View) (a)), SCALE_X, 1.0F, 1.5F, 0L);
        aanimator[1] = a(((View) (a)), SCALE_Y, 1.0F, 1.5F, 0L);
        aanimator[2] = a(((View) (a)), true, 0L, 200L);
        aanimator[3] = a(((View) (a)), false, 0L, 200L);
        aanimator[4] = a(((View) (a)), true, 1600L, 200L);
        aanimator[5] = a(((View) (a)), false, 0L, 200L);
        animatorset.playSequentially(aanimator);
        return animatorset;
    }

    private AnimatorSet b(AnimatorSet animatorset)
    {
        b.setTranslationX(-0.02F * (float)ViewUtils.a(f));
        b.setTranslationY(-0.02F * (float)ViewUtils.b(f));
        Animator aanimator[] = new Animator[4];
        aanimator[0] = a(b, SCALE_X, 1.0F, 0.75F, 0L);
        aanimator[1] = a(b, SCALE_Y, 1.0F, 0.75F, 0L);
        aanimator[2] = a(b, true, 0L, 200L);
        aanimator[3] = a(b, false, 1800L, 200L);
        animatorset.playSequentially(aanimator);
        return animatorset;
    }

    private void b()
    {
        a = (ImageView)findViewById(0x7f0a030f);
        b = (ImageView)findViewById(0x7f0a0310);
        c = (ImageView)findViewById(0x7f0a0311);
        e = (TextView)findViewById(0x7f0a0313);
        d = (ImageView)findViewById(0x7f0a0312);
        if (g == null)
        {
            g = c();
        }
        d.setImageBitmap(g);
        h = new AnimatorSet();
        h = a(h);
        h = b(h);
        h = c(h);
        h = d(h);
        h = e(h);
    }

    private AnimatorSet c(AnimatorSet animatorset)
    {
        c.setTranslationX(-0.13F * (float)ViewUtils.a(f));
        c.setTranslationY(-0.11F * (float)ViewUtils.b(f));
        c.setPivotY(0.235F * (float)ViewUtils.b(f));
        ArrayList arraylist = new ArrayList();
        arraylist.add(a(c, true, 0L, 200L));
        for (int i = 0; i < 3; i++)
        {
            arraylist.add(a(c, 0.0F, 9F, 533L / 2L));
            arraylist.add(a(c, 9F, 0.0F, 533L / 2L));
        }

        arraylist.add(a(c, false, 0L, 200L));
        animatorset.playSequentially(arraylist);
        return animatorset;
    }

    private Bitmap c()
    {
        Bitmap bitmap = SnapMediaUtils.a(500, 500, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(10F);
        paint.setColor(-1);
        canvas.drawCircle(250F, 250F, 240F, paint);
        return bitmap;
    }

    private AnimatorSet d(AnimatorSet animatorset)
    {
        e.setTranslationX(-0.02F * (float)ViewUtils.a(f));
        e.setTranslationY(-0.15F * (float)ViewUtils.b(f));
        Animator aanimator[] = new Animator[2];
        aanimator[0] = a(e, true, 0L, 200L);
        aanimator[1] = a(e, false, 1800L, 200L);
        animatorset.playSequentially(aanimator);
        return animatorset;
    }

    private AnimatorSet e(AnimatorSet animatorset)
    {
        d.setTranslationX(-0.15F * (float)ViewUtils.a(f));
        d.setTranslationY(-0.25F * (float)ViewUtils.b(f));
        Animator animator = a(d, true, 400L, 0L);
        animatorset.play(animator);
        int i = 0;
        Animator animator3;
        for (Animator animator1 = null; i < 3; animator1 = animator3)
        {
            Animator animator2 = a(d, true, 0L, 533L / 2L);
            android.animation.AnimatorSet.Builder builder = animatorset.play(a(d, SCALE_X, 0.2F, 0.7F, 533L)).with(a(d, SCALE_Y, 0.2F, 0.7F, 533L)).with(animator2);
            if (i == 0)
            {
                animator1 = animator;
            }
            builder.after(animator1);
            animator3 = a(d, false, 0L, 533L / 2L);
            animatorset.play(animator3).after(animator2);
            i++;
        }

        return animatorset;
    }

    public void a()
    {
        h.start();
    }

    public void onFinishInflate()
    {
        b();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            getChildAt(j1).layout(0, 0, k - i, l - j);
        }

    }

    protected void onMeasure(int i, int j)
    {
        int k = getChildCount();
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        while (l < k) 
        {
            View view = getChildAt(l);
            view.measure(i, j);
            int k1;
            int l1;
            int i2;
            if (view instanceof ImageView)
            {
                int j2 = Math.max(j1, ((ImageView)view).getDrawable().getIntrinsicWidth());
                l1 = Math.max(i1, ((ImageView)view).getDrawable().getIntrinsicHeight());
                i2 = j2;
            } else
            {
                l1 = i1;
                i2 = j1;
            }
            l++;
            j1 = i2;
            i1 = l1;
        }
        k1 = android.view.View.MeasureSpec.getSize(i);
        if (j1 > 0 && i1 > 0)
        {
            setMeasuredDimension(k1, (k1 * i1) / j1);
        }
    }
}
