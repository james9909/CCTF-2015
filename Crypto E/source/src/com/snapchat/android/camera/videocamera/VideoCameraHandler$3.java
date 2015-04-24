// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            VideoCameraHandler

class b
    implements Runnable
{

    final deoRecordingCallback a;
    final deoFailureType b;
    final VideoCameraHandler c;

    public void run()
    {
        try
        {
            a.a(b);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.e("VideoCameraHandler", (new StringBuilder()).append("Callback attempted illegally: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
        }
    }

    deoFailureType(VideoCameraHandler videocamerahandler, deoRecordingCallback deorecordingcallback, deoFailureType deofailuretype)
    {
        c = videocamerahandler;
        a = deorecordingcallback;
        b = deofailuretype;
        super();
    }
}
