// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding.resolution;

import com.snapchat.android.util.Resolution;

// Referenced classes of package com.snapchat.android.camera.transcoding.resolution:
//            TranscodingResolutionProviderFor16x9Video, TranscodingResolutionProviderFor4x3Video, TranscodingResolutionProviderForNonstandardAspectVideo, TranscodingResolutionProvider

public class TranscodingResolutionProviderFactory
{

    private static final TranscodingResolutionProviderFactory a = new TranscodingResolutionProviderFactory();

    private TranscodingResolutionProviderFactory()
    {
    }

    public static TranscodingResolutionProviderFactory a()
    {
        return a;
    }

    private static boolean a(Resolution resolution, int i, int j)
    {
        return j * resolution.a() == i * resolution.b();
    }

    private static boolean b(Resolution resolution)
    {
        return a(resolution, 16, 9);
    }

    private static boolean c(Resolution resolution)
    {
        return a(resolution, 4, 3);
    }

    public TranscodingResolutionProvider a(Resolution resolution)
    {
        if (b(resolution))
        {
            return new TranscodingResolutionProviderFor16x9Video(resolution);
        }
        if (c(resolution))
        {
            return new TranscodingResolutionProviderFor4x3Video(resolution);
        } else
        {
            return new TranscodingResolutionProviderForNonstandardAspectVideo(resolution);
        }
    }

}
