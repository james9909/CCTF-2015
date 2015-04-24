// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.controller;

import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.util.cache.SaveSentStoryToCacheTask;

// Referenced classes of package com.snapchat.android.controller:
//            SendSnapController

class ask extends SaveSentStoryToCacheTask
{

    final Snapbryo a;
    final SendSnapController b;

    protected void a(Void void1)
    {
        b.i(a);
        super.onPostExecute(void1);
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }

    ask(SendSnapController sendsnapcontroller, Snapbryo snapbryo)
    {
        b = sendsnapcontroller;
        a = snapbryo;
        super();
    }
}
