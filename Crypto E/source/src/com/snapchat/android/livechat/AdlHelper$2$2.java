// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.service.Responder;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

class b
    implements Runnable
{

    final int a;
    final String b;
    final b c;

    public void run()
    {
        c.c.errHandler(a, b);
    }

    a(a a1, int i, String s)
    {
        c = a1;
        a = i;
        b = s;
        super();
    }

    // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$2

/* anonymous class */
    static final class AdlHelper._cls2
        implements Responder
    {

        final Handler a;
        final Responder b;

        public void errHandler(int i, String s)
        {
            a.post(new AdlHelper._cls2._cls2(this, i, s));
        }

        public void resultHandler(Object obj)
        {
            a.post(new AdlHelper._cls2._cls1(obj));
        }

            
            {
                a = handler;
                b = responder;
                super();
            }

        // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$2$1

/* anonymous class */
        class AdlHelper._cls2._cls1
            implements Runnable
        {

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
        }

    }

}
