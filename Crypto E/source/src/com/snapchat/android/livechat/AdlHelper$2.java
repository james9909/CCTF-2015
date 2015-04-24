// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.service.Responder;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static final class b
    implements Responder
{

    final Handler a;
    final Responder b;

    public void errHandler(int i, String s)
    {
        a.post(new Runnable(i, s) {

            final int a;
            final String b;
            final AdlHelper._cls2 c;

            public void run()
            {
                c.b.errHandler(a, b);
            }

            
            {
                c = AdlHelper._cls2.this;
                a = i;
                b = s;
                super();
            }
        });
    }

    public void resultHandler(Object obj)
    {
        a.post(new Runnable(obj) {

            final Object a;
            final AdlHelper._cls2 b;

            public void run()
            {
                b.b.resultHandler(a);
            }

            
            {
                b = AdlHelper._cls2.this;
                a = obj;
                super();
            }
        });
    }

    _cls2.b(Handler handler, Responder responder)
    {
        a = handler;
        b = responder;
        super();
    }
}
