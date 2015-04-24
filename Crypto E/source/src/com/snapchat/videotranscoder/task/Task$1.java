// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;

import android.util.Log;

// Referenced classes of package com.snapchat.videotranscoder.task:
//            Task, SetupException, TranscodingException

class c
    implements Runnable
{

    final Task a;
    final ogressUpdateCallback b;
    final neCallback c;
    final Task d;

    public void run()
    {
        a.a(b);
        if (c != null)
        {
            c.a(a.a());
        }
_L2:
        return;
        SetupException setupexception;
        setupexception;
        Log.e("Task", "Task failed during setup", setupexception);
        if (c == null) goto _L2; else goto _L1
_L1:
        c.a(atus.c);
        return;
        TranscodingException transcodingexception;
        transcodingexception;
        Log.e("Task", "Task failed during transcoding", transcodingexception);
        if (c != null)
        {
            c.a(atus.f);
            return;
        }
          goto _L2
    }

    neCallback(Task task, Task task1, ogressUpdateCallback ogressupdatecallback, neCallback necallback)
    {
        d = task;
        a = task1;
        b = ogressupdatecallback;
        c = necallback;
        super();
    }
}
