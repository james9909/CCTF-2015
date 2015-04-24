// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.boxes.cenc.CencEncryptingSampleList;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.CencSampleEncryptionInformationGroupEntry;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.GroupEntry;
import com.googlecode.mp4parser.util.RangeStartMap;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            CencEncryptedTrack

public class CencEncryptingTrackImpl
    implements CencEncryptedTrack
{

    Track a;
    List b;
    RangeStartMap c;
    private final String d;

    public List a()
    {
        return new CencEncryptingSampleList(c, a.a(), b, d);
    }

    public long[] b()
    {
        return a.b();
    }

    public TrackMetaData c()
    {
        return a.c();
    }

    public void close()
    {
        a.close();
    }

    public String d()
    {
        return a.d();
    }

    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/CencEncryptingTrackImpl$1

/* anonymous class */
    class _cls1 extends HashMap
    {

        public long[] a(GroupEntry groupentry, long al[])
        {
            if (groupentry instanceof CencSampleEncryptionInformationGroupEntry)
            {
                throw new RuntimeException("Please supply CencSampleEncryptionInformationGroupEntries in the constructor");
            } else
            {
                return (long[])super.put(groupentry, al);
            }
        }

        public Object put(Object obj, Object obj1)
        {
            return a((GroupEntry)obj, (long[])obj1);
        }
    }

}
