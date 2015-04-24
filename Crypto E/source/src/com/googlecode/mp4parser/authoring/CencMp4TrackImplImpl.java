// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.authoring.tracks.CencEncryptedTrack;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            Mp4TrackImpl

public class CencMp4TrackImplImpl extends Mp4TrackImpl
    implements CencEncryptedTrack
{
    class FindSaioSaizPair
    {

        static final boolean a;

        static 
        {
            boolean flag;
            if (!com/googlecode/mp4parser/authoring/CencMp4TrackImplImpl.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }
    }


    static final boolean d;

    public String toString()
    {
        return (new StringBuilder("CencMp4TrackImpl{handler='")).append(d()).append('\'').append('}').toString();
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/authoring/CencMp4TrackImplImpl.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }
}
