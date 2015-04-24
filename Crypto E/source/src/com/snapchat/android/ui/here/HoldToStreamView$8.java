// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;


// Referenced classes of package com.snapchat.android.ui.here:
//            HoldToStreamView, StreamView, LocalPreviewHolder

class a
    implements Runnable
{

    final HoldToStreamView a;

    public void run()
    {
        StreamView.i.a();
    }

    (HoldToStreamView holdtostreamview)
    {
        a = holdtostreamview;
        super();
    }
}
