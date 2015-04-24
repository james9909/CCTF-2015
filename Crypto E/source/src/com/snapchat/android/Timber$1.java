// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.util.Log;
import com.snapchat.android.util.debug.DebugCapturer;

// Referenced classes of package com.snapchat.android:
//            Timber

static final class f
    implements Runnable
{

    final String a;
    final Object b[];
    final gType c;
    final String d;
    final boolean e;
    final Throwable f;

    public void run()
    {
        String s;
        s = a;
        if (b.length > 0)
        {
            s = String.format(a, b);
        }
        a[c.ordinal()];
        JVM INSTR tableswitch 1 7: default 80
    //                   1 112
    //                   2 144
    //                   3 176
    //                   4 208
    //                   5 255
    //                   6 302
    //                   7 357;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        Log.v(d, s);
        if (e)
        {
            DebugCapturer.a(c.name(), d, s);
        }
_L10:
        return;
_L2:
        Log.v(d, s);
        if (e)
        {
            DebugCapturer.a(c.name(), d, s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        Log.i(d, s);
        if (e)
        {
            DebugCapturer.a(c.name(), d, s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        Log.d(d, s);
        if (e)
        {
            DebugCapturer.a(c.name(), d, s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        Log.w(d, s);
        if (e)
        {
            DebugCapturer.b(c.name(), d, s);
            DebugCapturer.a(c.name(), d, s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        Log.e(d, s);
        if (e)
        {
            DebugCapturer.b(c.name(), d, s);
            DebugCapturer.a(c.name(), d, s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        String s1 = Log.getStackTraceString(f);
        Log.e(d, s1);
        if (e)
        {
            DebugCapturer.b(c.name(), d, s1);
            DebugCapturer.a(c.name(), d, s1);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        Log.i(d, s);
        if (e)
        {
            DebugCapturer.b(c.name(), d, s);
            return;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    gType(String s, Object aobj[], gType gtype, String s1, boolean flag, Throwable throwable)
    {
        a = s;
        b = aobj;
        c = gtype;
        d = s1;
        e = flag;
        f = throwable;
        super();
    }
}
