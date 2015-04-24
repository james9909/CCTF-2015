// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.ptr;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrUIHandler;

public class DancingGhostPtrHeader extends FrameLayout
    implements PtrUIHandler
{

    private AnimationDrawable a;
    private Context b;

    public DancingGhostPtrHeader(Context context)
    {
        super(context);
        setBackgroundColor(getResources().getColor(0x7f080036));
        b = context;
    }

    static AnimationDrawable a(DancingGhostPtrHeader dancingghostptrheader)
    {
        return dancingghostptrheader.a;
    }

    private void e()
    {
        if (a != null)
        {
            return;
        } else
        {
            ImageView imageview = (ImageView)((ViewGroup)LayoutInflater.from(b).inflate(0x7f04006f, this)).findViewById(0x7f0a025c);
            imageview.setBackgroundResource(0x7f0200fd);
            a = (AnimationDrawable)imageview.getBackground();
            return;
        }
    }

    protected void a(int i)
    {
        setBackgroundResource(i);
        TransitionDrawable transitiondrawable = (TransitionDrawable)getBackground();
        if (transitiondrawable != null)
        {
            transitiondrawable.setCrossFadeEnabled(true);
            transitiondrawable.startTransition(1000);
        }
        postDelayed(new Runnable(i) {

            final int a;
            final DancingGhostPtrHeader b;

            public void run()
            {
                if (!DancingGhostPtrHeader.a(b).isRunning())
                {
                    return;
                }
                switch (a)
                {
                default:
                    return;

                case 2130837641: 
                    b.a(0x7f0200fc);
                    return;

                case 2130838013: 
                    b.a(0x7f0201b1);
                    return;

                case 2130837937: 
                    b.a(0x7f020151);
                    return;

                case 2130837841: 
                    b.a(0x7f020089);
                    return;

                case 2130837756: 
                    b.a(0x7f0201fd);
                    return;
                }
            }

            
            {
                b = DancingGhostPtrHeader.this;
                a = i;
                super();
            }
        }, 1000L);
    }

    public void a(PtrFrameLayout ptrframelayout)
    {
        d();
    }

    public void a(PtrFrameLayout ptrframelayout, boolean flag, byte byte0, int i, int j, float f, float f1)
    {
        e();
    }

    public boolean a()
    {
        return a != null && a.isRunning();
    }

    protected void b()
    {
        if (a != null)
        {
            a.start();
        }
        a(0x7f0201fd);
    }

    public void b(PtrFrameLayout ptrframelayout)
    {
        c();
    }

    protected void c()
    {
        if (a != null)
        {
            a.stop();
        }
    }

    public void c(PtrFrameLayout ptrframelayout)
    {
        b();
    }

    public void d()
    {
        if (a != null)
        {
            a.stop();
            a.selectDrawable(0);
        }
        setBackgroundColor(getResources().getColor(0x7f080036));
    }

    public void d(PtrFrameLayout ptrframelayout)
    {
        c();
    }
}
