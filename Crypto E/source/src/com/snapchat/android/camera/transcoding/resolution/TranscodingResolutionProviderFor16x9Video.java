// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding.resolution;

import com.snapchat.android.util.Resolution;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.camera.transcoding.resolution:
//            TranscodingResolutionProvider

public class TranscodingResolutionProviderFor16x9Video extends TranscodingResolutionProvider
{

    public TranscodingResolutionProviderFor16x9Video(Resolution resolution)
    {
        super(resolution);
    }

    protected ArrayList a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new Resolution(1280, 720));
        arraylist.add(new Resolution(1024, 576));
        arraylist.add(new Resolution(960, 540));
        arraylist.add(new Resolution(864, 486));
        arraylist.add(new Resolution(800, 450));
        arraylist.add(new Resolution(640, 360));
        arraylist.add(new Resolution(480, 270));
        return arraylist;
    }
}
