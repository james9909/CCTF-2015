// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.util.ViewUtils;

public class SendToBottomPanelView extends RelativeLayout
{

    private ImageView a;
    private HorizontalScrollView b;
    private LinearLayout c;
    private TextView d;
    private TextView e;
    private Animator f;
    private boolean g;
    private boolean h;

    public SendToBottomPanelView(Context context)
    {
        this(context, null);
    }

    public SendToBottomPanelView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SendToBottomPanelView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        g = false;
        h = false;
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040076, this, true);
        a = (ImageView)findViewById(0x7f0a0278);
        b = (HorizontalScrollView)findViewById(0x7f0a0279);
        c = (LinearLayout)findViewById(0x7f0a027a);
        d = (TextView)findViewById(0x7f0a027b);
        e = (TextView)findViewById(0x7f0a027c);
    }

    static TextView a(SendToBottomPanelView sendtobottompanelview)
    {
        return sendtobottompanelview.d;
    }

    static TextView b(SendToBottomPanelView sendtobottompanelview)
    {
        return sendtobottompanelview.e;
    }

    public void a()
    {
        if (f != null && f.isStarted())
        {
            return;
        } else
        {
            float f1 = (float)ViewUtils.b(e) / 2.0F;
            TextView textview = d;
            float af[] = new float[1];
            af[0] = -1F * f1;
            ObjectAnimator objectanimator = ObjectAnimator.ofFloat(textview, "translationY", af);
            objectanimator.setDuration(200L);
            objectanimator.addListener(new android.animation.Animator.AnimatorListener() {

                final SendToBottomPanelView a;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    SendToBottomPanelView.a(a).setTranslationY(0.0F);
                    SendToBottomPanelView.b(a).setAlpha(1.0F);
                    SendToBottomPanelView.b(a).setVisibility(0);
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                a = SendToBottomPanelView.this;
                super();
            }
            });
            ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(e, "alpha", new float[] {
                0.0F
            });
            objectanimator1.setDuration(200L);
            objectanimator1.setStartDelay(3000L);
            ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(d, "translationY", new float[] {
                f1
            });
            AnimatorSet animatorset = new AnimatorSet();
            animatorset.play(objectanimator1).with(objectanimator2).after(objectanimator);
            animatorset.addListener(new android.animation.Animator.AnimatorListener() {

                final SendToBottomPanelView a;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    SendToBottomPanelView.a(a).setTranslationY(0.0F);
                    SendToBottomPanelView.b(a).setVisibility(8);
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                a = SendToBottomPanelView.this;
                super();
            }
            });
            f = animatorset;
            animatorset.start();
            return;
        }
    }

    public void a(boolean flag)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(getLayoutParams());
        layoutparams.bottomMargin = (int)ViewUtils.a(0.0F, getContext());
        layoutparams.addRule(12);
        if (flag)
        {
            setVisibility(0);
        } else
        {
            setVisibility(8);
        }
        setLayoutParams(layoutparams);
        h = true;
    }

    public HorizontalScrollView getScrollView()
    {
        return b;
    }

    public ImageView getSendButton()
    {
        return a;
    }

    protected void onAnimationEnd()
    {
        super.onAnimationEnd();
        if (!h)
        {
            a(false);
        }
        if (!g)
        {
            setVisibility(0);
        }
    }

    protected void onAnimationStart()
    {
        super.onAnimationStart();
        if (getVisibility() != 8)
        {
            g = true;
            setVisibility(8);
            return;
        } else
        {
            g = false;
            return;
        }
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        super.setOnClickListener(onclicklistener);
        b.setOnClickListener(onclicklistener);
        c.setOnClickListener(onclicklistener);
        d.setOnClickListener(onclicklistener);
        e.setOnClickListener(onclicklistener);
    }

    public void setSendButtonOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        a.setOnClickListener(onclicklistener);
    }

    public void setSendButtonOnTouchListener(android.view.View.OnTouchListener ontouchlistener)
    {
        a.setOnTouchListener(ontouchlistener);
    }

    public void setText(String s)
    {
        d.setText(s);
        ImageView imageview = a;
        boolean flag;
        if (!TextUtils.isEmpty(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        imageview.setEnabled(flag);
    }
}
