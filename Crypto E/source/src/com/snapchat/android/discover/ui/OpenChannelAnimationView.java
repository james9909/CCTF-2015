// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.snapchat.android.ui.drawable.StrokedFilledCircleDrawable;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.discover.ui:
//            ChannelView

public class OpenChannelAnimationView extends ViewGroup
{
    public static interface AnimationEndCall
    {

        public abstract void a();
    }

    abstract class AnimatorEndListener
        implements android.animation.Animator.AnimatorListener
    {

        final OpenChannelAnimationView c;

        public void onAnimationCancel(Animator animator)
        {
        }

        public void onAnimationRepeat(Animator animator)
        {
        }

        public void onAnimationStart(Animator animator)
        {
        }

        private AnimatorEndListener()
        {
            c = OpenChannelAnimationView.this;
            super();
        }

    }


    private Context a;
    private ImageView b;
    private ChannelView c;
    private boolean d;

    public OpenChannelAnimationView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = null;
        d = false;
        a = context;
    }

    private float a(float f, float f1)
    {
        return (float)Math.sqrt(Math.pow(f, 2D) + Math.pow(f1, 2D));
    }

    private float a(Rect rect, Point point)
    {
        int i = rect.centerX();
        int j = rect.centerY();
        return (1.1F * a(Math.max(point.x - i, i), Math.max(point.y - j, j))) / (float)(rect.width() / 2);
    }

    static ImageView a(OpenChannelAnimationView openchannelanimationview)
    {
        return openchannelanimationview.b;
    }

    static boolean a(OpenChannelAnimationView openchannelanimationview, boolean flag)
    {
        openchannelanimationview.d = flag;
        return flag;
    }

    static ChannelView b(OpenChannelAnimationView openchannelanimationview)
    {
        return openchannelanimationview.c;
    }

    public void a()
    {
        setBackgroundColor(0);
        removeView(b);
        b.setY(0.0F);
        b.setX(0.0F);
        c.addView(b, 0);
        c.a(b);
        b.setAlpha(0.0F);
        b.setVisibility(4);
    }

    public void a(ChannelView channelview, AnimationEndCall animationendcall)
    {
        d = true;
        c = channelview;
        b = channelview.c();
        b.setAlpha(1.0F);
        b.setVisibility(0);
        b.setImageDrawable(new StrokedFilledCircleDrawable(c.getFillColor(), c.getWidth()));
        Rect rect = new Rect();
        Point point = new Point();
        if (!c.getGlobalVisibleRect(rect, point))
        {
            return;
        } else
        {
            Point point1 = new Point(ViewUtils.a(getContext()), ViewUtils.b(getContext()));
            c.removeView(b);
            int i = (int)ViewUtils.a(25F, a);
            addView(b, rect.width(), rect.height());
            b.setX(point.x);
            b.setY(point.y - i);
            float f = a(rect, point1);
            ArgbEvaluator argbevaluator = new ArgbEvaluator();
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(0);
            aobj[1] = Integer.valueOf(0xff000000);
            ValueAnimator valueanimator = ValueAnimator.ofObject(argbevaluator, aobj);
            valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                final OpenChannelAnimationView a;

                public void onAnimationUpdate(ValueAnimator valueanimator1)
                {
                    a.setBackgroundColor(((Integer)valueanimator1.getAnimatedValue()).intValue());
                }

            
            {
                a = OpenChannelAnimationView.this;
                super();
            }
            });
            AnimatorSet animatorset = new AnimatorSet();
            animatorset.play(ObjectAnimator.ofFloat(b, SCALE_X, new float[] {
                1.0F, f
            }).setDuration(150L)).with(ObjectAnimator.ofFloat(b, SCALE_Y, new float[] {
                1.0F, f
            }).setDuration(150L)).with(valueanimator);
            animatorset.setInterpolator(new DecelerateInterpolator());
            animatorset.addListener(new AnimatorEndListener(animationendcall) {

                final AnimationEndCall a;
                final OpenChannelAnimationView b;

                public void onAnimationEnd(Animator animator)
                {
                    OpenChannelAnimationView.a(b, false);
                    if (a != null)
                    {
                        a.a();
                    }
                }

            
            {
                b = OpenChannelAnimationView.this;
                a = animationendcall;
                super();
            }
            });
            animatorset.start();
            return;
        }
    }

    public void a(AnimationEndCall animationendcall)
    {
        ArgbEvaluator argbevaluator = new ArgbEvaluator();
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(0xff000000);
        aobj[1] = Integer.valueOf(0);
        ValueAnimator valueanimator = ValueAnimator.ofObject(argbevaluator, aobj);
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final OpenChannelAnimationView a;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                a.setBackgroundColor(((Integer)valueanimator1.getAnimatedValue()).intValue());
            }

            
            {
                a = OpenChannelAnimationView.this;
                super();
            }
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(ObjectAnimator.ofFloat(b, SCALE_X, new float[] {
            1.0F
        }).setDuration(150L)).with(ObjectAnimator.ofFloat(b, SCALE_Y, new float[] {
            1.0F
        }).setDuration(150L)).with(valueanimator);
        animatorset.setInterpolator(new AccelerateInterpolator());
        animatorset.addListener(new AnimatorEndListener(animationendcall) {

            final AnimationEndCall a;
            final OpenChannelAnimationView b;

            public void onAnimationEnd(Animator animator)
            {
                android.view.ViewParent viewparent = OpenChannelAnimationView.a(b).getParent();
                if (viewparent != null)
                {
                    ((ViewGroup)viewparent).removeView(OpenChannelAnimationView.a(b));
                }
                OpenChannelAnimationView.a(b).setY(0.0F);
                OpenChannelAnimationView.a(b).setX(0.0F);
                OpenChannelAnimationView.b(b).addView(OpenChannelAnimationView.a(b), 0);
                OpenChannelAnimationView.b(b).a(OpenChannelAnimationView.a(b));
                ObjectAnimator objectanimator = ObjectAnimator.ofFloat(OpenChannelAnimationView.a(b), View.ALPHA, new float[] {
                    1.0F, 0.0F
                });
                objectanimator.setDuration(50L);
                objectanimator.addListener(new AnimatorEndListener(this) {

                    final _cls4 a;

                    public void onAnimationEnd(Animator animator)
                    {
                        OpenChannelAnimationView.a(a.b).setVisibility(4);
                    }

            
            {
                a = _pcls4;
                _pcls4.b. super();
            }
                });
                objectanimator.start();
                OpenChannelAnimationView.a(b).setVisibility(4);
                if (a != null)
                {
                    a.a();
                }
            }

            
            {
                b = OpenChannelAnimationView.this;
                a = animationendcall;
                super();
            }
        });
        animatorset.start();
    }

    public boolean b()
    {
        return d;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
    }
}
