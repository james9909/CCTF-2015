// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.Track;
import java.util.AbstractList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            ReplaceSampleTrack

class  extends AbstractList
{

    final ReplaceSampleTrack a;

    public Sample a(int i)
    {
        if (ReplaceSampleTrack.a(a) == (long)i)
        {
            return ReplaceSampleTrack.b(a);
        } else
        {
            return (Sample)a.d.a().get(i);
        }
    }

    public Object get(int i)
    {
        return a(i);
    }

    public int size()
    {
        return a.d.a().size();
    }
}
