// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public static abstract class 
{

    public void a(Canvas canvas, RecyclerView recyclerview)
    {
    }

    public void a(Canvas canvas, RecyclerView recyclerview,  )
    {
        a(canvas, recyclerview);
    }

    public void a(Rect rect, int i, RecyclerView recyclerview)
    {
        rect.set(0, 0, 0, 0);
    }

    public void a(Rect rect, View view, RecyclerView recyclerview, a a1)
    {
        a(rect, ((a)view.getLayoutParams()).a(), recyclerview);
    }

    public void b(Canvas canvas, RecyclerView recyclerview)
    {
    }

    public void b(Canvas canvas, RecyclerView recyclerview, a a1)
    {
        b(canvas, recyclerview);
    }

    public ()
    {
    }
}
