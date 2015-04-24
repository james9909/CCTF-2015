// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.builder;

import com.googlecode.mp4parser.authoring.Movie;
import com.googlecode.mp4parser.authoring.Track;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            FragmentIntersectionFinder

public class SyncSampleIntersectFinderImpl
    implements FragmentIntersectionFinder
{
    public static class CacheTuple
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
                CacheTuple cachetuple = (CacheTuple)obj;
                if (b == null ? cachetuple.b != null : !b.equals(cachetuple.b))
                {
                    return false;
                }
                if (a == null ? cachetuple.a != null : !a.equals(cachetuple.a))
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


    private static Logger a = Logger.getLogger(com/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl.getName());
    private static Map b = new ConcurrentHashMap();
    private static Map c = new ConcurrentHashMap();

}
