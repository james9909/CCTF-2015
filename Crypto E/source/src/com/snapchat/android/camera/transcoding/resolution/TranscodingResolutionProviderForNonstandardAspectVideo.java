// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding.resolution;

import com.snapchat.android.util.Resolution;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.camera.transcoding.resolution:
//            TranscodingResolutionProviderFor16x9Video

public class TranscodingResolutionProviderForNonstandardAspectVideo extends TranscodingResolutionProviderFor16x9Video
{

    public TranscodingResolutionProviderForNonstandardAspectVideo(Resolution resolution)
    {
        super(resolution);
    }

    private ArrayList b(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution = (Resolution)iterator.next();
            if (resolution.a() <= a.a())
            {
                int i = (int)(((double)resolution.a() / (double)a.a()) * (double)a.b());
                arraylist.add(new Resolution(resolution.a(), i));
            }
        } while (true);
        return arraylist;
    }

    protected ArrayList a()
    {
        return b(super.a());
    }
}
