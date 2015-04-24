// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import java.util.LinkedList;
import java.util.Queue;

public class InAppNotificationManager
{
    class NotificationItem
    {

        public int a;
        public CharSequence b;
        public CharSequence c;
        public int d;
        public int e;
        public int f;
        final InAppNotificationManager g;

        public NotificationItem(int i1, CharSequence charsequence, CharSequence charsequence1, int j1, int k1, int l1)
        {
            g = InAppNotificationManager.this;
            super();
            a = i1;
            b = charsequence;
            c = charsequence1;
            d = j1;
            e = k1;
            f = l1;
        }
    }


    private final int a;
    private final int b;
    private final Resources c;
    private int d;
    private boolean e;
    private View f;
    private View g;
    private View h;
    private TextView i;
    private TextView j;
    private ImageView k;
    private AnimatorSet l;
    private Queue m;

    public InAppNotificationManager(Context context, View view)
    {
        e = true;
        m = new LinkedList();
        f = view;
        g = view.findViewById(0x7f0a0200);
        h = view.findViewById(0x7f0a01d9);
        i = (TextView)view.findViewById(0x7f0a0202);
        j = (TextView)view.findViewById(0x7f0a0203);
        k = (ImageView)view.findViewById(0x7f0a0201);
        c = context.getResources();
        b = c.getDimensionPixelSize(0x7f090042);
        a = c.getDimensionPixelSize(0x7f09005f);
        d = c.getDimensionPixelSize(0x7f09005f);
        a(8);
    }

    static void a(InAppNotificationManager inappnotificationmanager)
    {
        inappnotificationmanager.d();
    }

    private void b(int i1)
    {
        if (l != null)
        {
            l.cancel();
        }
        View view = f;
        float af[] = new float[2];
        af[0] = -i1;
        af[1] = 0.0F;
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, "translationY", af);
        objectanimator.addListener(new android.animation.Animator.AnimatorListener() {

            final InAppNotificationManager a;

            public void onAnimationCancel(Animator animator)
            {
                a.a(8);
            }

            public void onAnimationEnd(Animator animator)
            {
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
                a.a(0);
            }

            
            {
                a = InAppNotificationManager.this;
                super();
            }
        });
        View view1 = f;
        float af1[] = new float[2];
        af1[0] = 0.0F;
        af1[1] = -i1;
        ObjectAnimator objectanimator1 = ObjectAnimator.ofFloat(view1, "translationY", af1);
        objectanimator1.setStartDelay(3000L);
        objectanimator1.addListener(new android.animation.Animator.AnimatorListener() {

            final InAppNotificationManager a;

            public void onAnimationCancel(Animator animator)
            {
                a.a(8);
            }

            public void onAnimationEnd(Animator animator)
            {
                a.a(8);
                InAppNotificationManager.a(a);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                a = InAppNotificationManager.this;
                super();
            }
        });
        l = new AnimatorSet();
        l.play(objectanimator).before(objectanimator1);
        l.start();
    }

    private boolean b()
    {
        return f.getVisibility() == 0;
    }

    private boolean c()
    {
        return h.getVisibility() == 0;
    }

    private void d()
    {
        if ((!b() || c()) && !m.isEmpty())
        {
            NotificationItem notificationitem = (NotificationItem)m.poll();
            f.setBackgroundColor(notificationitem.d);
            android.view.ViewGroup.LayoutParams layoutparams = f.getLayoutParams();
            layoutparams.height = notificationitem.f;
            f.setLayoutParams(layoutparams);
            if (notificationitem.a == 0)
            {
                k.setVisibility(8);
            } else
            {
                k.setVisibility(0);
                k.setImageResource(notificationitem.a);
            }
            if (notificationitem.b == null)
            {
                i.setVisibility(8);
            } else
            {
                i.setVisibility(0);
                i.setText(notificationitem.b);
                i.setTextColor(notificationitem.e);
            }
            if (notificationitem.c == null)
            {
                j.setVisibility(8);
            } else
            {
                j.setVisibility(0);
                j.setText(notificationitem.c);
                j.setTextColor(notificationitem.e);
            }
            g.setVisibility(0);
            h.setVisibility(8);
            b(notificationitem.f);
        }
    }

    public void a()
    {
        if (b() && m.isEmpty())
        {
            g.setVisibility(8);
            h.setVisibility(0);
            b(b);
        }
    }

    protected void a(int i1)
    {
        View view = f;
        if (!e)
        {
            i1 = 8;
        }
        view.setVisibility(i1);
    }

    public void a(int i1, CharSequence charsequence, CharSequence charsequence1, int j1, int k1, int l1)
    {
        m.offer(new NotificationItem(i1, charsequence, charsequence1, j1, k1, l1));
        d();
    }

    public void a(DisplayInAppNotificationEvent displayinappnotificationevent)
    {
        if (displayinappnotificationevent.d)
        {
            a();
            return;
        }
        int i1;
        int j1;
        int k1;
        if (displayinappnotificationevent.e)
        {
            i1 = c.getColor(0x7f08002d);
            j1 = c.getColor(0x7f08002e);
        } else
        {
            i1 = displayinappnotificationevent.f;
            j1 = displayinappnotificationevent.g;
        }
        if (displayinappnotificationevent.h)
        {
            k1 = a;
        } else
        {
            k1 = b;
        }
        a(displayinappnotificationevent.a, displayinappnotificationevent.b, displayinappnotificationevent.c, i1, j1, k1);
    }

    public void a(boolean flag)
    {
        e = flag;
        if (!e)
        {
            a(8);
        }
    }

    public void b(boolean flag)
    {
        ViewPropertyAnimator viewpropertyanimator = f.animate();
        float f1;
        if (flag)
        {
            f1 = d;
        } else
        {
            f1 = 0.0F;
        }
        viewpropertyanimator.translationY(f1).start();
    }
}
