// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.sampleentry.TextSampleEntry;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.SampleImpl;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class TextTrackImpl extends AbstractTrack
{
    public static class Line
    {

        long a;
        long b;
        String c;
    }


    TrackMetaData d;
    SampleDescriptionBox e;
    List f;

    public TextTrackImpl()
    {
        super("subtiles");
        d = new TrackMetaData();
        f = new LinkedList();
        e = new SampleDescriptionBox();
        TextSampleEntry textsampleentry = new TextSampleEntry("tx3g");
        textsampleentry.a(1);
        textsampleentry.a(new com.coremedia.iso.boxes.sampleentry.TextSampleEntry.StyleRecord());
        textsampleentry.a(new com.coremedia.iso.boxes.sampleentry.TextSampleEntry.BoxRecord());
        e.a(textsampleentry);
        FontTableBox fonttablebox = new FontTableBox();
        fonttablebox.a(Collections.singletonList(new com.googlecode.mp4parser.boxes.threegpp26245.FontTableBox.FontRecord(1, "Serif")));
        textsampleentry.a(fonttablebox);
        d.b(new Date());
        d.a(new Date());
        d.a(1000L);
    }

    public List a()
    {
        LinkedList linkedlist;
        Iterator iterator;
        long l;
        linkedlist = new LinkedList();
        iterator = f.iterator();
        l = 0L;
_L3:
        Line line;
        long l1;
        if (!iterator.hasNext())
        {
            return linkedlist;
        }
        line = (Line)iterator.next();
        l1 = line.a - l;
        if (l1 <= 0L) goto _L2; else goto _L1
_L1:
        linkedlist.add(new SampleImpl(ByteBuffer.wrap(new byte[2])));
_L4:
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        try
        {
            dataoutputstream.writeShort(line.c.getBytes("UTF-8").length);
            dataoutputstream.write(line.c.getBytes("UTF-8"));
            dataoutputstream.close();
        }
        catch (IOException ioexception)
        {
            throw new Error("VM is broken. Does not support UTF-8");
        }
        linkedlist.add(new SampleImpl(ByteBuffer.wrap(bytearrayoutputstream.toByteArray())));
        l = line.b;
        if (true) goto _L3; else goto _L2
_L2:
        if (l1 < 0L)
        {
            throw new Error("Subtitle display times may not intersect");
        }
          goto _L4
    }

    public long[] b()
    {
        ArrayList arraylist;
        Iterator iterator;
        long l;
        arraylist = new ArrayList();
        iterator = f.iterator();
        l = 0L;
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        long al[];
        Iterator iterator1;
        int i;
        al = new long[arraylist.size()];
        iterator1 = arraylist.iterator();
        i = 0;
_L8:
        if (!iterator1.hasNext())
        {
            return al;
        }
        break MISSING_BLOCK_LABEL_149;
_L2:
        Line line;
        long l1;
        line = (Line)iterator.next();
        l1 = line.a - l;
        if (l1 <= 0L) goto _L4; else goto _L3
_L3:
        arraylist.add(Long.valueOf(l1));
_L7:
        arraylist.add(Long.valueOf(line.b - line.a));
        l = line.b;
          goto _L5
_L4:
        if (l1 >= 0L) goto _L7; else goto _L6
_L6:
        throw new Error("Subtitle display times may not intersect");
        Long long1 = (Long)iterator1.next();
        int j = i + 1;
        al[i] = long1.longValue();
        i = j;
          goto _L8
    }

    public TrackMetaData c()
    {
        return d;
    }

    public void close()
    {
    }

    public String d()
    {
        return "sbtl";
    }
}
