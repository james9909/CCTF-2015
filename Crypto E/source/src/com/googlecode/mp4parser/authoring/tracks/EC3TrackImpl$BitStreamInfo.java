// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;


// Referenced classes of package com.googlecode.mp4parser.authoring.tracks:
//            EC3TrackImpl

public static class  extends com.googlecode.mp4parser.boxes.StreamInfo
{

    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;

    public String toString()
    {
        return (new StringBuilder("BitStreamInfo{frameSize=")).append(a).append(", substreamid=").append(b).append(", bitrate=").append(c).append(", samplerate=").append(d).append(", strmtyp=").append(e).append(", chanmap=").append(f).append('}').toString();
    }

    public ()
    {
    }
}
