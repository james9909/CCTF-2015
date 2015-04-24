// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;


// Referenced classes of package com.snapchat.videotranscoder.task:
//            MediaSource, TranscodingTask

class c
    implements c
{

    final MediaSource a;
    final b b;
    final long c;
    final TranscodingTask d;

    public void a(int i)
    {
        int j = (int)((100L * ((c * (long)i) / 100L + TranscodingTask.a(d))) / TranscodingTask.b(d));
        if ((long)j != TranscodingTask.c(d))
        {
            TranscodingTask.a(d, j);
            b.b(j);
        }
    }

    public (TranscodingTask transcodingtask, MediaSource mediasource,  )
    {
        d = transcodingtask;
        super();
        a = mediasource;
        b = ;
        c = mediasource.a();
    }
}
