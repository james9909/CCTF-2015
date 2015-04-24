// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding.resolution;

import com.snapchat.android.util.Resolution;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.camera.transcoding.resolution:
//            TranscodingResolutionProvider

public class TranscodingResolutionProviderFor4x3Video extends TranscodingResolutionProvider
{

    public TranscodingResolutionProviderFor4x3Video(Resolution resolution)
    {
        super(resolution);
    }

    protected ArrayList a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new Resolution(1280, 960));
        arraylist.add(new Resolution(1152, 864));
        arraylist.add(new Resolution(1024, 768));
        arraylist.add(new Resolution(800, 600));
        arraylist.add(new Resolution(640, 480));
        arraylist.add(new Resolution(512, 384));
        arraylist.add(new Resolution(400, 300));
        return arraylist;
    }
}
