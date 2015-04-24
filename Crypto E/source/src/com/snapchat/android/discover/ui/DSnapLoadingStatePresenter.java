// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView, DSnapLoadingViewHolder, DSnapLoadingErrorViewHolder

public class DSnapLoadingStatePresenter
{
    public static interface OnTapToRetryListener
    {

        public abstract void a(MediaState mediastate);
    }


    private final Context a;
    private DSnapView b;
    private DSnapLoadingViewHolder c;
    private DSnapLoadingErrorViewHolder d;
    private boolean e;
    private boolean f;
    private MediaState g;
    private String h;
    private MediaState i;
    private int j;
    private OnTapToRetryListener k;

    public DSnapLoadingStatePresenter(Context context)
    {
        e = false;
        f = false;
        k = null;
        g = MediaState.a;
        a = context;
    }

    private String d()
    {
        if (b.getDSnapPage() == null)
        {
            return "?";
        } else
        {
            return b.getDSnapPage().a();
        }
    }

    public void a()
    {
        if (c != null)
        {
            c.a();
        }
    }

    public void a(MediaState mediastate)
    {
        if (b == null)
        {
            Timber.e("DSnapLoadingStatePresenter", "LOADING-STATE: Can't set loading state on uninitialized presenter.", new Object[0]);
            return;
        }
        if (!e)
        {
            if (g == mediastate)
            {
                Object aobj2[] = new Object[2];
                aobj2[0] = d();
                aobj2[1] = mediastate;
                Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: Same loading state. ", aobj2);
                return;
            }
            if (g.a() && mediastate.a())
            {
                Object aobj1[] = new Object[3];
                aobj1[0] = d();
                aobj1[1] = g;
                aobj1[2] = mediastate;
                Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: Still loading %s, %s", aobj1);
                return;
            }
            if (f && g.b() && mediastate.a())
            {
                Object aobj[] = new Object[1];
                aobj[0] = d();
                Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: We are retrying an error.", aobj);
                return;
            }
        }
        b(mediastate);
        g = mediastate;
        e = false;
        f = false;
    }

    public void a(OnTapToRetryListener ontaptoretrylistener)
    {
        k = ontaptoretrylistener;
    }

    public void a(DSnapView dsnapview)
    {
        a(dsnapview, new DSnapLoadingViewHolder(a, dsnapview), new DSnapLoadingErrorViewHolder(dsnapview, new android.view.View.OnClickListener() {

            final DSnapLoadingStatePresenter a;

            public void onClick(View view)
            {
                a.c();
            }

            
            {
                a = DSnapLoadingStatePresenter.this;
                super();
            }
        }));
    }

    protected void a(DSnapView dsnapview, DSnapLoadingViewHolder dsnaploadingviewholder, DSnapLoadingErrorViewHolder dsnaploadingerrorviewholder)
    {
        b = dsnapview;
        c = dsnaploadingviewholder;
        d = dsnaploadingerrorviewholder;
        e = true;
    }

    public void a(String s)
    {
        int l = Color.parseColor(s);
        if (l != j)
        {
            j = l;
            e = true;
            a(g);
        }
    }

    public void a(String s, MediaState mediastate)
    {
        if (h == null || !TextUtils.equals(h, s))
        {
            h = s;
            i = mediastate;
            e = true;
            a(g);
        }
    }

    public void b()
    {
        Object aobj[] = new Object[1];
        aobj[0] = d();
        Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: Hiding loading state quickly.", aobj);
        d.a();
        c.b();
    }

    protected void b(MediaState mediastate)
    {
        Object aobj[] = new Object[2];
        aobj[0] = d();
        aobj[1] = mediastate;
        Timber.a("DSnapLoadingStatePresenter", "LOADING-STATE %s: New loading state %s", aobj);
        if (mediastate.a())
        {
            d.b();
            c.a(h, i, j);
        } else
        if (mediastate.b())
        {
            c.c();
            d.a(mediastate);
            return;
        }
    }

    protected void c()
    {
        f = true;
        if (k != null)
        {
            k.a(g);
        }
    }
}
