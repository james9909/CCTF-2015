// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.builder;

import com.googlecode.mp4parser.authoring.Movie;
import com.googlecode.mp4parser.authoring.Track;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            SyncSampleIntersectFinderImpl

public static class Y
{

    Track a;
    Movie b;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            Y y = (Y)obj;
            if (b == null ? y.b != null : !b.equals(y.b))
            {
                return false;
            }
            if (a == null ? y.a != null : !a.equals(y.a))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        int j;
        Movie movie;
        int k;
        if (a != null)
        {
            i = a.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        movie = b;
        k = 0;
        if (movie != null)
        {
            k = b.hashCode();
        }
        return j + k;
    }
}
