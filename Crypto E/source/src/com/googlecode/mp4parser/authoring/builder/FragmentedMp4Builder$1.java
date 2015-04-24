// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.builder;

import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.util.Comparator;
import java.util.Map;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            FragmentedMp4Builder

class 
    implements Comparator
{

    private final Map a;
    private final int b;

    public int a(Track track, Track track1)
    {
        long l;
        long l1;
        long al[];
        long al1[];
        long l2;
        long l3;
        int i;
        l = ((long[])a.get(track))[b];
        l1 = ((long[])a.get(track1))[b];
        al = track.b();
        al1 = track1.b();
        l2 = 0L;
        l3 = 0L;
        i = 1;
_L3:
        if ((long)i < l) goto _L2; else goto _L1
_L1:
        int j = 1;
_L4:
        if ((long)j >= l1)
        {
            return (int)(100D * ((double)l2 / (double)track.c().a() - (double)l3 / (double)track1.c().a()));
        }
        break MISSING_BLOCK_LABEL_137;
_L2:
        l2 += al[i - 1];
        i++;
          goto _L3
        l3 += al1[j - 1];
        j++;
          goto _L4
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Track)obj, (Track)obj1);
    }
}
