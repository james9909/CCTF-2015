// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.discover.ui:
//            BrandIconProvider

class ack extends OnBitmapDecodedCallback
{

    final BrandIconProvider a;

    public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        Bundle bundle = asyncloadbitmaprequest.g();
        String s = bundle.getString("uri");
        boolean flag = bundle.getBoolean("inverted");
        ChannelPage channelpage = (ChannelPage)bundle.getParcelable("channel_page");
        if (bitmapdecoderesult.b() == null)
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = Boolean.valueOf(flag);
            Timber.e("BrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: %s could not be decoded. Inverted? %b ", aobj);
            BrandIconProvider.a(a, null);
            DiscoverMediaManager discovermediamanager = BrandIconProvider.a(a);
            com.snapchat.android.discover.model.e e;
            if (flag)
            {
                e = com.snapchat.android.discover.model.e.c;
            } else
            {
                e = com.snapchat.android.discover.model.e.b;
            }
            discovermediamanager.a(channelpage, e);
            BrandIconProvider.a(a, a.b(channelpage.g()));
            BrandIconProvider.a(a, false);
        } else
        {
            BrandIconProvider.a(a, s);
            BrandIconProvider.a(a, a.a(bitmapdecoderesult.b(), channelpage.g(), flag));
            BrandIconProvider.a(a, true);
        }
        if (asyncloadbitmaprequest.b() != null)
        {
            BrandIconProvider.a(a, asyncloadbitmaprequest.b(), BrandIconProvider.b(a));
            if (BrandIconProvider.c(a) != null)
            {
                BrandIconProvider.c(a).a();
            }
        }
    }

    st(BrandIconProvider brandiconprovider)
    {
        a = brandiconprovider;
        super();
    }
}
