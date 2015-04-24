// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.snapchat.android.model.chat.ChatMedia;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.ui:
//            Recyclable, ImageResource

public class ImageResourceView extends ImageView
    implements Recyclable, SnapchatResource.ResourceListener
{

    private static int c = -1;
    private static String d;
    private static String e;
    private static String f;
    private static String g;
    protected ImageResource a;
    private AtomicBoolean b;
    private String h;
    private final Paint i;
    private int j;

    public ImageResourceView(Context context)
    {
        super(context);
        b = new AtomicBoolean(false);
        if (c == -1)
        {
            Resources resources = getResources();
            c = resources.getDimensionPixelSize(0x7f090060);
            Locale locale = Locale.getDefault();
            d = resources.getString(0x7f0c0115).toUpperCase(locale);
            e = resources.getString(0x7f0c020c).toUpperCase(locale);
            f = resources.getString(0x7f0c019f).toUpperCase(locale);
            g = resources.getString(0x7f0c01a1).toUpperCase(locale);
        }
        i = new Paint();
        i.setColor(0xff000000);
        i.setTextAlign(android.graphics.Paint.Align.CENTER);
        i.setTextSize(c);
        j = 255;
    }

    public ImageResourceView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new AtomicBoolean(false);
        if (c == -1)
        {
            Resources resources = getResources();
            c = resources.getDimensionPixelSize(0x7f090060);
            Locale locale = Locale.getDefault();
            d = resources.getString(0x7f0c0115).toUpperCase(locale);
            e = resources.getString(0x7f0c020c).toUpperCase(locale);
            f = resources.getString(0x7f0c019f).toUpperCase(locale);
            g = resources.getString(0x7f0c01a1).toUpperCase(locale);
        }
        i = new Paint();
        i.setColor(0xff000000);
        i.setTextAlign(android.graphics.Paint.Align.CENTER);
        i.setTextSize(c);
        j = 255;
    }

    public ImageResourceView(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        b = new AtomicBoolean(false);
        if (c == -1)
        {
            Resources resources = getResources();
            c = resources.getDimensionPixelSize(0x7f090060);
            Locale locale = Locale.getDefault();
            d = resources.getString(0x7f0c0115).toUpperCase(locale);
            e = resources.getString(0x7f0c020c).toUpperCase(locale);
            f = resources.getString(0x7f0c019f).toUpperCase(locale);
            g = resources.getString(0x7f0c01a1).toUpperCase(locale);
        }
        i = new Paint();
        i.setColor(0xff000000);
        i.setTextAlign(android.graphics.Paint.Align.CENTER);
        i.setTextSize(c);
        j = 255;
    }

    public void a()
    {
        if (a != null)
        {
            a.a(getContext());
        }
    }

    public void a(SnapchatResource.ResourceStatus resourcestatus)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[SnapchatResource.ResourceStatus.values().length];
                try
                {
                    a[SnapchatResource.ResourceStatus.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[SnapchatResource.ResourceStatus.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[SnapchatResource.ResourceStatus.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls1.a[resourcestatus.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 47;
           goto _L1 _L2
_L1:
        setImageResource(0x7f020041);
        getDrawable().setAlpha(0);
        invalidate();
        return;
_L2:
        if (a != null)
        {
            if (!b.get())
            {
                a = null;
                return;
            }
            android.graphics.Bitmap bitmap = a.a(getContext());
            if (bitmap != null)
            {
                setImageBitmap(bitmap);
                getDrawable().setAlpha(j);
                return;
            }
            a.a(SnapchatResource.ResourceStatus.d);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean b()
    {
        return a != null && a.c() != SnapchatResource.ResourceStatus.c && a.c() != SnapchatResource.ResourceStatus.b;
    }

    public void c()
    {
        if (!b.compareAndSet(true, false))
        {
            setImageDrawable(null);
            if (a != null && a.c() != SnapchatResource.ResourceStatus.b)
            {
                a.a(null);
                a = null;
                return;
            }
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        float f1 = canvas.getWidth() / 2;
        float f2 = canvas.getHeight() / 2;
        if (!TextUtils.isEmpty(h))
        {
            canvas.drawText(h, f1, f2, i);
        } else
        if (a != null)
        {
            switch (_cls1.a[a.c().ordinal()])
            {
            default:
                return;

            case 2: // '\002'
                canvas.drawText(d, f1, f2, i);
                return;

            case 3: // '\003'
                canvas.drawText(e, f1, f2, i);
                break;
            }
            return;
        }
    }

    public void setChatMedia(ChatMedia chatmedia)
    {
label0:
        {
            b.set(true);
            if (chatmedia != null)
            {
                if (a == null || !TextUtils.equals(a.a(), chatmedia.d()))
                {
                    a = new ImageResource(chatmedia, this);
                    a.a(getContext());
                }
                if (!chatmedia.V())
                {
                    break label0;
                }
                j = 127;
                h = f;
            }
            return;
        }
        if (chatmedia.W())
        {
            j = 127;
            h = g;
            return;
        }
        if (a.c() == SnapchatResource.ResourceStatus.c && j != 255)
        {
            getDrawable().setAlpha(255);
        }
        j = 255;
        h = null;
    }

}
