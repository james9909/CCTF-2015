// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.service.Responder;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

class a
    implements Runnable
{

    final Object a;
    final a b;

    public void run()
    {
        b.b.resultHandler(a);
    }

    b(b b1, Object obj)
    {
        b = b1;
        a = obj;
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
            a.post(new AdlHelper._cls2._cls2(i, s));
        }

        public void resultHandler(Object obj)
        {
            a.post(new AdlHelper._cls2._cls1(this, obj));
        }

            
            {
                a = handler;
                b = responder;
                super();
            }

        // Unreferenced inner class com/snapchat/android/livechat/AdlHelper$2$2

/* anonymous class */
        class AdlHelper._cls2._cls2
            implements Runnable
        {

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
        }

    }

}
