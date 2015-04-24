// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import android.media.MediaRecorder;
import com.snapchat.android.Timber;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            VideoCameraHandler

class a
    implements android.media.r.OnInfoCallbackMessenger
{

     a;
    final VideoCameraHandler b;

    public void onInfo(MediaRecorder mediarecorder, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        Timber.c("VideoCameraHandler", "Video InfoListener: Info event #[%d, %d] has occured", aobj);
        switch (i)
        {
        default:
            return;

        case 800: 
        case 801: 
            ThreadUtils.a(new Runnable() {

                final VideoCameraHandler.OnInfoCallbackMessenger a;

                public void run()
                {
                    a.a.v();
                }

            
            {
                a = VideoCameraHandler.OnInfoCallbackMessenger.this;
                super();
            }
            });
            break;
        }
    }

    public _cls1.a(VideoCameraHandler videocamerahandler, _cls1.a a1)
    {
        b = videocamerahandler;
        super();
        a = a1;
    }
}
