// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.util.Logger;
import java.util.ArrayList;
import java.util.List;

public class AppendTrack extends AbstractTrack
{

    private static Logger e = Logger.a(com/googlecode/mp4parser/authoring/tracks/AppendTrack);
    Track d[];

    public List a()
    {
        ArrayList arraylist = new ArrayList();
        Track atrack[] = d;
        int i = atrack.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            arraylist.addAll(atrack[j].a());
            j++;
        } while (true);
    }

    public long[] b()
    {
        this;
        JVM INSTR monitorenter ;
        Track atrack[];
        int i;
        atrack = d;
        i = atrack.length;
        int j;
        int k;
        j = 0;
        k = 0;
_L4:
        if (j < i) goto _L2; else goto _L1
_L1:
        long al[];
        Track atrack1[];
        int l;
        al = new long[k];
        atrack1 = d;
        l = atrack1.length;
        int i1;
        int j1;
        i1 = 0;
        j1 = 0;
_L8:
        if (i1 >= l)
        {
            return al;
        }
          goto _L3
_L2:
        k += atrack[j].b().length;
        j++;
          goto _L4
_L3:
        long al1[];
        int k1;
        al1 = atrack1[i1].b();
        k1 = al1.length;
        int l1 = 0;
          goto _L5
_L7:
        long l2 = al1[l1];
        int i2 = j1 + 1;
        al[j1] = l2;
        l1++;
        j1 = i2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L5:
        if (l1 < k1) goto _L7; else goto _L6
_L6:
        i1++;
          goto _L8
    }

    public TrackMetaData c()
    {
        return d[0].c();
    }

    public void close()
    {
        Track atrack[] = d;
        int i = atrack.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            atrack[j].close();
            j++;
        } while (true);
    }

    public String d()
    {
        return d[0].d();
    }

}
