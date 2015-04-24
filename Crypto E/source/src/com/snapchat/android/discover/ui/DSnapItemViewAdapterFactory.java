// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.text.TextUtils;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemImageViewAdapter, DSnapItemWebViewAdapter, DSnapItemTextureVideoViewAdapter, DSnapItemRemoteVideoAdapter, 
//            DSnapItemArrowViewAdapterDecorator, DSnapItemViewAdapter, DSnapItemSponsoredViewAdapterDecorator, DSnapView

public class DSnapItemViewAdapterFactory
{

    public DSnapItemViewAdapterFactory()
    {
    }

    protected DSnapItemViewAdapter a(Context context, com.snapchat.android.discover.model.DSnapPanel.MediaType mediatype)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.snapchat.android.discover.model.DSnapPanel.MediaType.values().length];
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.snapchat.android.discover.model.DSnapPanel.MediaType.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[mediatype.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return new DSnapItemImageViewAdapter(context);

        case 2: // '\002'
            return new DSnapItemWebViewAdapter(context);

        case 3: // '\003'
            return new DSnapItemTextureVideoViewAdapter(context);

        case 4: // '\004'
            return new DSnapItemRemoteVideoAdapter(context);
        }
    }

    protected DSnapItemViewAdapter a(Context context, DSnapItemViewAdapter dsnapitemviewadapter, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        if (dsnapitemviewadapter != null && dsnappage.p() > 1 && dsnappage.n() == dsnappanel)
        {
            dsnapitemviewadapter = new DSnapItemArrowViewAdapterDecorator(context, dsnapitemviewadapter);
        }
        return dsnapitemviewadapter;
    }

    public DSnapItemViewAdapter a(Context context, DSnapView dsnapview, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        DSnapItemViewAdapter dsnapitemviewadapter = a(context, dsnappanel.f());
        DSnapItemViewAdapter dsnapitemviewadapter1;
        if (dsnapitemviewadapter != null)
        {
            if ((dsnapitemviewadapter1 = b(context, a(context, dsnapitemviewadapter, dsnappage, dsnappanel), dsnappage, dsnappanel)) != null && dsnapitemviewadapter1.a(dsnapview, dsnappage, dsnappanel))
            {
                return dsnapitemviewadapter1;
            }
        }
        return null;
    }

    protected DSnapItemViewAdapter b(Context context, DSnapItemViewAdapter dsnapitemviewadapter, DSnapPage dsnappage, DSnapPanel dsnappanel)
    {
        if (dsnapitemviewadapter != null && dsnappage.r() && !TextUtils.isEmpty(dsnappanel.d()))
        {
            dsnapitemviewadapter = new DSnapItemSponsoredViewAdapterDecorator(context, dsnapitemviewadapter);
        }
        return dsnapitemviewadapter;
    }
}
