// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.ui.drawable.CircleBitmapDrawable;
import com.snapchat.android.ui.drawable.StrokedFilledCircleDrawable;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.bitmap.AsyncBitmapLoader;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;
import com.snapchat.android.util.debug.ReleaseManager;

public class BrandIconProvider
{
    public static interface BrandIconLoadedCallback
    {

        public abstract void a();
    }


    final OnBitmapDecodedCallback a;
    private final DiscoverMediaManager b;
    private final AsyncBitmapLoader c;
    private int d;
    private String e;
    private Drawable f;
    private boolean g;
    private BrandIconLoadedCallback h;

    public BrandIconProvider(Context context)
    {
        this(DiscoverMediaManager.a(), new AsyncBitmapLoader(context));
    }

    BrandIconProvider(DiscoverMediaManager discovermediamanager, AsyncBitmapLoader asyncbitmaploader)
    {
        g = false;
        a = new OnBitmapDecodedCallback() {

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
                    DiscoverMediaManager discovermediamanager1 = BrandIconProvider.a(a);
                    com.snapchat.android.discover.model.ChannelPage.MediaType mediatype;
                    if (flag)
                    {
                        mediatype = com.snapchat.android.discover.model.ChannelPage.MediaType.c;
                    } else
                    {
                        mediatype = com.snapchat.android.discover.model.ChannelPage.MediaType.b;
                    }
                    discovermediamanager1.a(channelpage, mediatype);
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

            
            {
                a = BrandIconProvider.this;
                super();
            }
        };
        b = discovermediamanager;
        c = asyncbitmaploader;
    }

    static Drawable a(BrandIconProvider brandiconprovider, Drawable drawable)
    {
        brandiconprovider.f = drawable;
        return drawable;
    }

    static DiscoverMediaManager a(BrandIconProvider brandiconprovider)
    {
        return brandiconprovider.b;
    }

    static String a(BrandIconProvider brandiconprovider, String s)
    {
        brandiconprovider.e = s;
        return s;
    }

    private void a(ImageView imageview, Drawable drawable)
    {
        ViewUtils.a(imageview, drawable);
    }

    static void a(BrandIconProvider brandiconprovider, ImageView imageview, Drawable drawable)
    {
        brandiconprovider.a(imageview, drawable);
    }

    static boolean a(BrandIconProvider brandiconprovider, boolean flag)
    {
        brandiconprovider.g = flag;
        return flag;
    }

    static Drawable b(BrandIconProvider brandiconprovider)
    {
        return brandiconprovider.f;
    }

    static BrandIconLoadedCallback c(BrandIconProvider brandiconprovider)
    {
        return brandiconprovider.h;
    }

    protected Drawable a(Bitmap bitmap, int i, boolean flag)
    {
        CircleBitmapDrawable circlebitmapdrawable = new CircleBitmapDrawable(bitmap, d);
        if (flag)
        {
            circlebitmapdrawable.a(2.0F);
            circlebitmapdrawable.a(i);
        }
        return circlebitmapdrawable;
    }

    public void a(int i)
    {
        if (d < i)
        {
            d = i;
            f = null;
        }
    }

    public void a(ImageView imageview, ChannelPage channelpage, boolean flag)
    {
        String s;
        MediaState mediastate;
label0:
        {
            if (d <= 0)
            {
                if (ReleaseManager.e())
                {
                    throw new IllegalStateException("Can't create brand icon without a valid diameter!");
                }
            } else
            {
                if (flag)
                {
                    s = channelpage.q();
                    mediastate = channelpage.t();
                } else
                {
                    s = channelpage.p();
                    mediastate = channelpage.s();
                }
                if (f == null || !TextUtils.equals(s, e))
                {
                    break label0;
                }
                a(imageview, f);
            }
            return;
        }
        if (mediastate == MediaState.f && s != null)
        {
            Bundle bundle = new Bundle();
            bundle.putString("uri", s);
            bundle.putBoolean("inverted", flag);
            bundle.putParcelable("channel_page", channelpage);
            AsyncLoadBitmapRequest asyncloadbitmaprequest = (new com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest.Builder()).a(s).a(imageview).a(true).b(d).a(d).a(a).a(bundle).a();
            c.a(asyncloadbitmaprequest);
            return;
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = channelpage.a();
            aobj[1] = mediastate;
            aobj[2] = Boolean.valueOf(flag);
            Timber.a("BrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: %s's icon has not been downloaded yet: [%s] inverted? %b", aobj);
            e = null;
            g = false;
            f = b(channelpage.g());
            a(imageview, f);
            return;
        }
    }

    public void a(BrandIconLoadedCallback brandiconloadedcallback)
    {
        h = brandiconloadedcallback;
    }

    public boolean a()
    {
        return g;
    }

    protected Drawable b(int i)
    {
        return new StrokedFilledCircleDrawable(i, d);
    }
}
