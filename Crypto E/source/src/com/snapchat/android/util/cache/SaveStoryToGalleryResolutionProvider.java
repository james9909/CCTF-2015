// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.util.Log;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import com.snapchat.android.camera.transcoding.resolution.TranscodingResolutionProvider;
import com.snapchat.android.camera.transcoding.resolution.TranscodingResolutionProviderFactory;
import com.snapchat.android.util.Resolution;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SaveStoryToGalleryResolutionProvider
{

    private final TranscodingResolutionProviderFactory a;
    private final DeviceVideoEncodingResolutionSet b;

    public SaveStoryToGalleryResolutionProvider()
    {
        this(TranscodingResolutionProviderFactory.a(), DeviceVideoEncodingResolutionSet.a());
    }

    protected SaveStoryToGalleryResolutionProvider(TranscodingResolutionProviderFactory transcodingresolutionproviderfactory, DeviceVideoEncodingResolutionSet devicevideoencodingresolutionset)
    {
        a = transcodingresolutionproviderfactory;
        b = devicevideoencodingresolutionset;
    }

    private Resolution a(Resolution resolution)
    {
        double d;
        Resolution resolution1;
        double d1;
        int i;
        Iterator iterator;
        Set set = b.b();
        d = resolution.c();
        resolution1 = null;
        d1 = 0.0D;
        i = 0;
        iterator = set.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Resolution resolution2 = (Resolution)iterator.next();
        double d2 = Math.abs(resolution2.c() - d) / d;
        if (d2 <= 0.10000000000000001D)
        {
            int j = resolution2.d();
            Resolution resolution3;
            int k;
            double d3;
            if (resolution1 == null || d2 < d1 || d2 == d1 && j > i)
            {
                resolution3 = resolution2;
                k = j;
                d3 = d2;
            } else
            {
                k = i;
                resolution3 = resolution1;
                d3 = d1;
            }
            d1 = d3;
            resolution1 = resolution3;
            i = k;
        }
        if (true) goto _L3; else goto _L2
_L2:
        return resolution1;
    }

    private Resolution a(Resolution resolution, int i)
    {
        Resolution resolution1 = a.a(resolution).a(i);
        if (resolution1 != null)
        {
            return resolution1;
        } else
        {
            return a(resolution);
        }
    }

    private Resolution a(Map map)
    {
        Resolution resolution;
        int i;
        double d;
        Iterator iterator;
        resolution = null;
        i = 0;
        d = 0.0D;
        iterator = map.entrySet().iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Resolution resolution1 = (Resolution)((java.util.Map.Entry)iterator.next()).getValue();
        if (resolution1 != null)
        {
            int j = resolution1.d();
            double d1 = resolution1.c();
            if (d != 0.0D && Math.abs(d1 - d) > 1.0000000000000001E-05D)
            {
                Log.w("SaveStoryToGalleryResolutionProvider", "Story being saved contains media with different aspect ratios.");
            }
            double d2;
            int k;
            Resolution resolution2;
            if (j > i)
            {
                k = j;
                resolution2 = resolution1;
                d2 = d1;
            } else
            {
                d2 = d;
                k = i;
                resolution2 = resolution;
            }
            d = d2;
            i = k;
            resolution = resolution2;
        }
        if (true) goto _L3; else goto _L2
_L2:
        return resolution;
    }

    public Resolution a(Collection collection, int i)
    {
        if (collection.size() == 0)
        {
            throw new IllegalArgumentException("No media source resolutions to compare");
        }
        if (i <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("bitrateCap must be positive: ").append(i).toString());
        }
        HashMap hashmap = new HashMap();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution = (Resolution)iterator.next();
            if (!hashmap.containsKey(resolution))
            {
                hashmap.put(resolution, a(resolution, i));
            }
        } while (true);
        return a(((Map) (hashmap)));
    }
}
