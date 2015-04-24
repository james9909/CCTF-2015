// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.smartfilters;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import com.snapchat.android.location.GeofilterImageManager;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.ui.SelfScalingImageView;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.threading.ThreadUtils;

public class GeofilterView extends RelativeLayout
{

    private final SelfScalingImageView a = (SelfScalingImageView)findViewById(0x7f0a01eb);
    private final Geofilter b;
    private final GeofilterImageManager c = GeofilterImageManager.a();
    private int d;
    private int e;

    public GeofilterView(Context context, Geofilter geofilter)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040053, this, true);
        b = geofilter;
        a();
    }

    protected void a()
    {
        ThreadUtils.a();
        android.graphics.Bitmap bitmap = b.c();
        if (bitmap == null)
        {
            c.a(b);
            a.setImageBitmap(null);
            return;
        } else
        {
            android.graphics.Bitmap bitmap1 = SnapMediaUtils.b(bitmap, getContext());
            a.setImageBitmap(bitmap1);
            android.widget.ImageView.ScaleType scaletype = b.d();
            a.setScaleType(scaletype);
            int i = ViewUtils.a(b.e(), ViewUtils.c(getContext()));
            a.setGravity(i);
            setGravity(i);
            return;
        }
    }

    public String getFilterId()
    {
        return b.a();
    }

    public Geofilter getGeofilter()
    {
        return b;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        int i1 = k - i;
        int j1 = l - j;
        if (i1 != d || j1 != e)
        {
            d = i1;
            e = j1;
            a();
        }
    }
}
