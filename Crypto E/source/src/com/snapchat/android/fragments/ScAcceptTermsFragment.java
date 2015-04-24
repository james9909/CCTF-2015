// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.BounceInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.FontUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Random;

public class ScAcceptTermsFragment extends SnapchatFragment
{

    private static Random a = new Random();
    private final SnapchatServiceManager b;

    public ScAcceptTermsFragment()
    {
        this(SnapchatServiceManager.a());
    }

    ScAcceptTermsFragment(SnapchatServiceManager snapchatservicemanager)
    {
        b = snapchatservicemanager;
    }

    static void a(ScAcceptTermsFragment scaccepttermsfragment)
    {
        scaccepttermsfragment.h();
    }

    static View b(ScAcceptTermsFragment scaccepttermsfragment)
    {
        return scaccepttermsfragment.x;
    }

    private void b()
    {
        String s = getString(0x7f0c0213);
        String s1 = getString(0x7f0c0215);
        String s2 = getString(0x7f0c0214, new Object[] {
            s1, s, s, s1
        });
        int j = s2.lastIndexOf(s);
        SpannableString spannablestring = new SpannableString(s2);
        spannablestring.setSpan(new ClickableSpan(s) {

            final String a;
            final ScAcceptTermsFragment b;

            public void onClick(View view)
            {
                view.invalidate();
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://www.snapchat.com/privacy", a)));
            }

            public void updateDrawState(TextPaint textpaint)
            {
                super.updateDrawState(textpaint);
                textpaint.setUnderlineText(false);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = s;
                super();
            }
        }, j, j + s.length(), 33);
        int i1 = s2.lastIndexOf(s1);
        spannablestring.setSpan(new ClickableSpan(s1) {

            final String a;
            final ScAcceptTermsFragment b;

            public void onClick(View view)
            {
                view.invalidate();
                BusProvider.a().a(new StartFragmentEvent(new WebFragment("https://www.snapchat.com/terms", a)));
            }

            public void updateDrawState(TextPaint textpaint)
            {
                super.updateDrawState(textpaint);
                textpaint.setUnderlineText(false);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = s;
                super();
            }
        }, i1, i1 + s1.length(), 33);
        TextView textview = (TextView)d(0x7f0a0263);
        textview.setText(spannablestring);
        textview.setMovementMethod(LinkMovementMethod.getInstance());
        Button button = (Button)d(0x7f0a0268);
        FontUtils.a(button, I());
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ScAcceptTermsFragment a;

            public void onClick(View view)
            {
                UserPrefs.H();
                a.getActivity().finish();
            }

            
            {
                a = ScAcceptTermsFragment.this;
                super();
            }
        });
        String s3 = getString(0x7f0c0212);
        SpannableString spannablestring1 = new SpannableString(s3);
        spannablestring1.setSpan(new ClickableSpan() {

            final ScAcceptTermsFragment a;

            public void onClick(View view)
            {
                view.invalidate();
                ScAcceptTermsFragment.e(a);
            }

            public void updateDrawState(TextPaint textpaint)
            {
                super.updateDrawState(textpaint);
                textpaint.setUnderlineText(false);
            }

            
            {
                a = ScAcceptTermsFragment.this;
                super();
            }
        }, 0, s3.length(), 33);
        TextView textview1 = (TextView)d(0x7f0a0264);
        textview1.setText(spannablestring1);
        textview1.setMovementMethod(LinkMovementMethod.getInstance());
    }

    static View c(ScAcceptTermsFragment scaccepttermsfragment)
    {
        return scaccepttermsfragment.x;
    }

    static View d(ScAcceptTermsFragment scaccepttermsfragment)
    {
        return scaccepttermsfragment.x;
    }

    static void e(ScAcceptTermsFragment scaccepttermsfragment)
    {
        scaccepttermsfragment.q();
    }

    static SnapchatServiceManager f(ScAcceptTermsFragment scaccepttermsfragment)
    {
        return scaccepttermsfragment.b;
    }

    private void h()
    {
        Animator animator = i();
        Animator animator1 = k();
        Animator animator2 = l();
        Animator animator3 = n();
        Animator animator4 = o();
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(animator);
        animatorset.play(animator1).with(animator2).after(animator);
        animatorset.play(animator3).after(animator2);
        animatorset.play(animator4).after(animator3);
        animatorset.start();
    }

    private Animator i()
    {
        ImageView imageview = (ImageView)d(0x7f0a0261);
        ImageView imageview1 = (ImageView)d(0x7f0a0260);
        ImageView imageview2 = (ImageView)d(0x7f0a0262);
        float f1 = -1F * (float)(imageview1.getMeasuredWidth() / 2);
        float f2 = imageview1.getY() - imageview.getY();
        float f3 = (float)imageview1.getBottom() - imageview.getY();
        TextView textview = (TextView)d(0x7f0a0263);
        if (f3 + (float)(imageview.getBottom() - imageview.getPaddingBottom()) > (float)textview.getTop())
        {
            float f5 = imageview.getHeight() - imageview.getPaddingBottom();
            f3 = (float)textview.getTop() - imageview.getY() - f5;
            float f6 = f3 + imageview.getY();
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)imageview1.getLayoutParams();
            layoutparams.height = (int)f6;
            imageview1.setLayoutParams(layoutparams);
        }
        float f4 = f3;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(imageview, "translationY", new float[] {
            0.0F, f2, f4
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(imageview, "translationX", new float[] {
            0.0F, f1
        });
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(imageview2, "translationY", new float[] {
            0.0F, f2, f4
        });
        ObjectAnimator objectanimator3 = ObjectAnimator.ofFloat(imageview2, "translationX", new float[] {
            0.0F, f1
        });
        objectanimator.setDuration(260L);
        objectanimator1.setDuration(260L);
        objectanimator2.setDuration(260L);
        objectanimator3.setDuration(260L);
        ObjectAnimator objectanimator4 = ObjectAnimator.ofFloat(imageview2, "alpha", new float[] {
            0.0F, 1.0F
        });
        objectanimator4.setDuration(300L);
        objectanimator4.addListener(new android.animation.Animator.AnimatorListener(imageview2) {

            final ImageView a;
            final ScAcceptTermsFragment b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = imageview;
                super();
            }
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator1).after(objectanimator4).with(objectanimator).with(objectanimator3).with(objectanimator2);
        animatorset.setStartDelay(100L);
        return animatorset;
    }

    private Animator k()
    {
        TextView textview = (TextView)d(0x7f0a0263);
        TextView textview1 = (TextView)d(0x7f0a0264);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(textview, "alpha", new float[] {
            0.0F, 1.0F
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(textview1, "alpha", new float[] {
            0.0F, 1.0F
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator).with(objectanimator1);
        animatorset.setDuration(130L);
        animatorset.addListener(new android.animation.Animator.AnimatorListener(textview, textview1) {

            final TextView a;
            final TextView b;
            final ScAcceptTermsFragment c;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
                b.setVisibility(0);
            }

            
            {
                c = ScAcceptTermsFragment.this;
                a = textview;
                b = textview1;
                super();
            }
        });
        return animatorset;
    }

    private Animator l()
    {
        ImageView imageview = (ImageView)d(0x7f0a0260);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(imageview, "scaleX", new float[] {
            0.0F, 1.0F
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(imageview, "scaleY", new float[] {
            0.0F, 1.0F
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator).with(objectanimator1);
        animatorset.setDuration(230L);
        animatorset.setInterpolator(new BounceInterpolator());
        animatorset.addListener(new android.animation.Animator.AnimatorListener(imageview) {

            final ImageView a;
            final ScAcceptTermsFragment b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = imageview;
                super();
            }
        });
        return animatorset;
    }

    private Animator n()
    {
        ImageView imageview = (ImageView)d(0x7f0a0265);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(imageview, "rotation", new float[] {
            -20F
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(imageview, "alpha", new float[] {
            0.0F, 1.0F
        });
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator).with(objectanimator1);
        animatorset.setDuration(130L);
        animatorset.addListener(new android.animation.Animator.AnimatorListener(imageview) {

            final ImageView a;
            final ScAcceptTermsFragment b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = imageview;
                super();
            }
        });
        return animatorset;
    }

    private Animator o()
    {
        ImageView imageview = (ImageView)d(0x7f0a0266);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(imageview, "alpha", new float[] {
            0.0F, 0.8F
        });
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(imageview, "alpha", new float[] {
            0.8F, 0.0F
        });
        objectanimator.setDuration(182L);
        objectanimator1.setDuration(182L);
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator1).after(objectanimator);
        animatorset.addListener(new android.animation.Animator.AnimatorListener(imageview) {

            final ImageView a;
            final ScAcceptTermsFragment b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = imageview;
                super();
            }
        });
        ImageView imageview1 = (ImageView)d(0x7f0a0267);
        imageview1.setPivotY(imageview1.getMeasuredHeight());
        imageview1.setPivotX(imageview1.getMeasuredWidth() / 2);
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(imageview1, "rotation", new float[] {
            0.0F, -110F
        });
        ObjectAnimator objectanimator3 = ObjectAnimator.ofFloat(imageview1, "rotation", new float[] {
            -110F, 0.0F
        });
        objectanimator2.setDuration(365L);
        objectanimator3.setDuration(365L);
        AnimatorSet animatorset1 = new AnimatorSet();
        animatorset1.play(objectanimator3).after(objectanimator2);
        animatorset1.play(animatorset).after(objectanimator2);
        int j = 4 + a.nextInt(5);
        for (int i1 = 0; i1 < j; i1++)
        {
            animatorset1.play(p()).after(objectanimator2);
        }

        animatorset1.addListener(new android.animation.Animator.AnimatorListener(imageview1, animatorset1) {

            final ImageView a;
            final AnimatorSet b;
            final ScAcceptTermsFragment c;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                b.start();
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                c = ScAcceptTermsFragment.this;
                a = imageview;
                b = animatorset;
                super();
            }
        });
        return animatorset1;
    }

    private Animator p()
    {
        RelativeLayout relativelayout = (RelativeLayout)d(0x7f0a025f);
        ImageView imageview = new ImageView(getActivity());
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(2, 0x7f0a0268);
        layoutparams.addRule(0, 0x7f0a0267);
        imageview.setVisibility(4);
        imageview.setLayoutParams(layoutparams);
        imageview.setImageDrawable(getResources().getDrawable(0x7f0201fc));
        int j = 1 + a.nextInt(5);
        imageview.setScaleX((float)j / 10F);
        imageview.setScaleY((float)j / 10F);
        relativelayout.addView(imageview);
        imageview.setY(75F);
        int i1 = -1 * (10 + a.nextInt(71));
        int j1 = -1 * (-80 + a.nextInt(160));
        float af[] = new float[1];
        af[0] = j1;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(imageview, "translationX", af);
        float af1[] = new float[1];
        af1[0] = i1;
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(imageview, "translationY", af1);
        AnimatorSet animatorset = new AnimatorSet();
        animatorset.play(objectanimator).with(objectanimator1);
        animatorset.addListener(new android.animation.Animator.AnimatorListener(imageview) {

            final ImageView a;
            final ScAcceptTermsFragment b;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                a.setVisibility(4);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.setVisibility(0);
            }

            
            {
                b = ScAcceptTermsFragment.this;
                a = imageview;
                super();
            }
        });
        animatorset.setDuration(182L);
        return animatorset;
    }

    private void q()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getActivity());
        builder.setMessage(0x7f0c01b4);
        builder.setCancelable(true);
        builder.setPositiveButton(0x7f0c022a, new android.content.DialogInterface.OnClickListener() {

            final ScAcceptTermsFragment a;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                ScAcceptTermsFragment.f(a).d();
                UserPrefs.m();
                FragmentActivity fragmentactivity = a.getActivity();
                fragmentactivity.setResult(1);
                fragmentactivity.finish();
            }

            
            {
                a = ScAcceptTermsFragment.this;
                super();
            }
        });
        builder.setNegativeButton(0x7f0c0130, null);
        builder.show();
    }

    public boolean e()
    {
        q();
        return true;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f040072, viewgroup, false);
        b();
        x.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final ScAcceptTermsFragment a;

            public void onGlobalLayout()
            {
label0:
                {
                    ScAcceptTermsFragment.a(a);
                    if (ScAcceptTermsFragment.b(a).getViewTreeObserver().isAlive())
                    {
                        if (android.os.Build.VERSION.SDK_INT < 16)
                        {
                            break label0;
                        }
                        ScAcceptTermsFragment.c(a).getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    return;
                }
                ScAcceptTermsFragment.d(a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                a = ScAcceptTermsFragment.this;
                super();
            }
        });
        return x;
    }

}
