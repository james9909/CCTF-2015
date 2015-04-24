// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import java.io.InputStream;
import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            H264TrackImpl

public class Y extends InputStream
{

    private final ByteBuffer a;

    public int read()
    {
        if (!a.hasRemaining())
        {
            return -1;
        } else
        {
            return 0xff & a.get();
        }
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (!a.hasRemaining())
        {
            return -1;
        } else
        {
            int k = Math.min(j, a.remaining());
            a.get(abyte0, i, k);
            return k;
        }
    }
}
