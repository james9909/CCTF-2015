// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            VideoCameraHandler

class a
    implements Runnable
{

    final deoRecordingCallback a;
    final VideoCameraHandler b;

    public void run()
    {
        try
        {
            a.u();
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("VideoCameraHandler", (new StringBuilder()).append("Callback attempted illegally: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
        }
    }

    deoRecordingCallback(VideoCameraHandler videocamerahandler, deoRecordingCallback deorecordingcallback)
    {
        b = videocamerahandler;
        a = deorecordingcallback;
        super();
    }
}
