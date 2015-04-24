// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.Matrix;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            Track, TrackMetaData

public class Movie
{

    Matrix a;
    List b;

    public Movie()
    {
        a = Matrix.j;
        b = new LinkedList();
    }

    public String toString()
    {
        Iterator iterator = b.iterator();
        String s = "Movie{ ";
        do
        {
            if (!iterator.hasNext())
            {
                return (new StringBuilder(String.valueOf(s))).append('}').toString();
            }
            Track track = (Track)iterator.next();
            s = (new StringBuilder(String.valueOf(s))).append("track_").append(track.c().b()).append(" (").append(track.d()).append(") ").toString();
        } while (true);
    }
}
