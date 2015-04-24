// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.eventbus.ReplyEventInterface;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

public class ReplyCameraDecor extends DefaultCameraDecor
{

    private final ReplyEventInterface n;

    public ReplyCameraDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface, ReplyEventInterface replyeventinterface)
    {
        super(context, relativelayout, cameradecorinterface);
        n = replyeventinterface;
        f.setVisibility(4);
        g.setVisibility(4);
        if (n.a() != 1) goto _L2; else goto _L1
_L1:
        f.setBackgroundResource(0x7f020025);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final ReplyCameraDecor a;

            public void onClick(View view)
            {
                a.a.a(1, true);
            }

            
            {
                a = ReplyCameraDecor.this;
                super();
            }
        });
        f.setVisibility(0);
_L4:
        a();
        return;
_L2:
        if (n.a() == 3)
        {
            g.setBackgroundResource(0x7f02001b);
            g.setOnClickListener(new android.view.View.OnClickListener() {

                final ReplyCameraDecor a;

                public void onClick(View view)
                {
                    a.a.a(3, true);
                }

            
            {
                a = ReplyCameraDecor.this;
                super();
            }
            });
            g.setVisibility(0);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b()
    {
    }

    protected void c(boolean flag)
    {
        super.c(flag);
        if (flag && n != null)
        {
            if (n.a() == 1)
            {
                g.setVisibility(4);
            } else
            if (n.a() == 3)
            {
                f.setVisibility(4);
                return;
            }
        }
    }

    public boolean e()
    {
        a.a(n.a(), true);
        if (n.b())
        {
            AnalyticsEvents.i(false);
        }
        return true;
    }

    protected void g()
    {
    }

    protected boolean h()
    {
        return false;
    }
}
