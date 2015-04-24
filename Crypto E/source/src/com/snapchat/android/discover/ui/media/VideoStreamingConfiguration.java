// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import com.snapchat.android.Timber;
import com.snapchat.android.model.StudySettings;
import java.util.Locale;

public class VideoStreamingConfiguration
{
    public static final class StreamingMode extends Enum
    {

        public static final StreamingMode a;
        public static final StreamingMode b;
        public static final StreamingMode c;
        private static final StreamingMode d[];

        public static StreamingMode valueOf(String s)
        {
            return (StreamingMode)Enum.valueOf(com/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode, s);
        }

        public static StreamingMode[] values()
        {
            return (StreamingMode[])d.clone();
        }

        static 
        {
            a = new StreamingMode("HLS", 0);
            b = new StreamingMode("MP4", 1);
            c = new StreamingMode("CLIENT_DECIDES", 2);
            StreamingMode astreamingmode[] = new StreamingMode[3];
            astreamingmode[0] = a;
            astreamingmode[1] = b;
            astreamingmode[2] = c;
            d = astreamingmode;
        }

        private StreamingMode(String s, int i)
        {
            super(s, i);
        }
    }


    protected static final String a;
    private final StudySettings b;

    public VideoStreamingConfiguration()
    {
        this(StudySettings.a());
    }

    protected VideoStreamingConfiguration(StudySettings studysettings)
    {
        b = studysettings;
    }

    public StreamingMode a()
    {
        String s = b.a("STREAMING", "STREAMING_MODE", a);
        StreamingMode streamingmode;
        try
        {
            streamingmode = StreamingMode.valueOf(s.toUpperCase(Locale.ENGLISH));
        }
        catch (Exception exception)
        {
            Timber.e("VideoStreamingConfiguration", "Invalid streaming mode %s (%s)", new Object[] {
                s, exception
            });
            return StreamingMode.a;
        }
        return streamingmode;
    }

    public int b()
    {
        return b.a("STREAMING", "MINIMUM_VERSION_SUPPORTING_HLS", 19);
    }

    public float c()
    {
        return b.a("STREAMING", "BANDWIDTH_USAGE_FACTOR", 0.7F);
    }

    static 
    {
        a = StreamingMode.b.name();
    }
}
