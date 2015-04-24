// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.SampleImpl;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

public class Amf0Track extends AbstractTrack
{

    SortedMap d;
    private TrackMetaData e;

    public List a()
    {
        LinkedList linkedlist = new LinkedList();
        Iterator iterator = d.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return linkedlist;
            }
            linkedlist.add(new SampleImpl(ByteBuffer.wrap((byte[])iterator.next())));
        } while (true);
    }

    public long[] b()
    {
        LinkedList linkedlist = new LinkedList(d.keySet());
        Collections.sort(linkedlist);
        long al[] = new long[linkedlist.size()];
        int i = 0;
        do
        {
            if (i >= linkedlist.size())
            {
                return al;
            }
            al[i] = ((Long)linkedlist.get(i)).longValue() - 0L;
            i++;
        } while (true);
    }

    public TrackMetaData c()
    {
        return e;
    }

    public void close()
    {
    }

    public String d()
    {
        return "data";
    }
}
