// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;


// Referenced classes of package android.support.v7.widget:
//            RecyclerView

class a
    implements Runnable
{

    final RecyclerView a;

    public void run()
    {
        if (a.e != null)
        {
            a.e.a();
        }
        RecyclerView.a(a, false);
    }

    emAnimator(RecyclerView recyclerview)
    {
        a = recyclerview;
        super();
    }
}
