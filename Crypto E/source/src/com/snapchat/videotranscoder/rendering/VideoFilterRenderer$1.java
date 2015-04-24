// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.rendering;

import com.snapchat.videotranscoder.audio.AudioExtractor;
import com.snapchat.videotranscoder.audio.AudioTrackDecoder;
import com.snapchat.videotranscoder.task.TranscodingException;
import com.snapchat.videotranscoder.utils.VerboseLogging;

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
                if (VideoFilterRenderer.a(a) && VideoFilterRenderer.b(a))
                {
                    break;
                }
                if (VideoFilterRenderer.c(a) != null && !VideoFilterRenderer.d(a))
                {
                    VerboseLogging.a("VideoFilterRenderer", "Calling audio extractor");
                    VideoFilterRenderer.c(a).d();
                    VerboseLogging.a("VideoFilterRenderer", "done Calling audio extractor");
                }
                if (VideoFilterRenderer.e(a) != null && !VideoFilterRenderer.b(a))
                {
                    VerboseLogging.a("VideoFilterRenderer", "Calling audio decoder");
                    VideoFilterRenderer.e(a).d();
                    VerboseLogging.a("VideoFilterRenderer", "done Calling audio decoder");
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
