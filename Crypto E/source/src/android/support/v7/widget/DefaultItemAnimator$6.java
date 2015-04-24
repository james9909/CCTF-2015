// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            DefaultItemAnimator

class aListenerAdapter extends aListenerAdapter
{

    final r a;
    final int b;
    final int c;
    final ViewPropertyAnimatorCompat d;
    final DefaultItemAnimator e;

    public void onAnimationCancel(View view)
    {
        if (b != 0)
        {
            ViewCompat.setTranslationX(view, 0.0F);
        }
        if (c != 0)
        {
            ViewCompat.setTranslationY(view, 0.0F);
        }
    }

    public void onAnimationEnd(View view)
    {
        d.setListener(null);
        e.e(a);
        DefaultItemAnimator.g(e).remove(a);
        DefaultItemAnimator.e(e);
    }

    public void onAnimationStart(View view)
    {
        e.h(a);
    }

    at(DefaultItemAnimator defaultitemanimator, r r, int i, int j, ViewPropertyAnimatorCompat viewpropertyanimatorcompat)
    {
        e = defaultitemanimator;
        a = r;
        b = i;
        c = j;
        d = viewpropertyanimatorcompat;
        super(null);
    }
}
