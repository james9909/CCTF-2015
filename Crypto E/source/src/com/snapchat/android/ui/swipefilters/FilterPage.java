// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipefilters;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.snapchat.android.ui.swipefilters:
//            FilterPageType

public abstract class FilterPage
{

    protected Paint a;

    public FilterPage()
    {
    }

    public abstract String a();

    public void a(Paint paint)
    {
        a = paint;
    }

    public void a(boolean flag, Bitmap bitmap)
    {
    }

    public boolean a(MotionEvent motionevent)
    {
        return false;
    }

    public abstract FilterPageType b();

    public Paint c()
    {
        return a;
    }

    public View d()
    {
        return null;
    }

    public void e()
    {
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof FilterPage))
        {
            return false;
        } else
        {
            FilterPage filterpage = (FilterPage)obj;
            return TextUtils.equals(a(), filterpage.a());
        }
    }

    public int hashCode()
    {
        return a().hashCode();
    }
}
