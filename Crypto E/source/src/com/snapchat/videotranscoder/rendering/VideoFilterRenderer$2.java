// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.VideoExtractor;

// Referenced classes of package com.snapchat.videotranscoder.rendering:
//            VideoFilterRenderer

class a
    implements Runnable
{

    final VideoFilterRenderer a;

    public void run()
    {
        try
        {
            do
            {
                if (VideoFilterRenderer.a(a) && VideoFilterRenderer.f(a))
                {
                    break;
                }
                if (VideoFilterRenderer.g(a) != null && !VideoFilterRenderer.f(a))
                {
                    VerboseLogging.a("VideoFilterRenderer", "Calling video extractor");
                    VideoFilterRenderer.g(a).d();
                    VerboseLogging.a("VideoFilterRenderer", "Done calling video extractor");
                }
                if (VideoFilterRenderer.f(a) && !VideoFilterRenderer.a(a))
                {
                    VideoFilterRenderer.g(a).e();
                }
            } while (true);
        }
        catch (TranscodingException transcodingexception)
        {
            transcodingexception.printStackTrace();
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return;
        }
    }

    (VideoFilterRenderer videofilterrenderer)
    {
        a = videofilterrenderer;
        super();
    }
}
