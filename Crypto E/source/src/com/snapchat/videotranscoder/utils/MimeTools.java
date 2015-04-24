// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.utils;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import com.snapchat.videotranscoder.task.SetupException;
import java.io.File;

// Referenced classes of package com.snapchat.videotranscoder.utils:
//            VerboseLogging

public class MimeTools
{

    public MimeTools()
    {
    }

    public int a(MediaExtractor mediaextractor)
    {
        int i = b(mediaextractor);
        if (i != -1)
        {
            mediaextractor.selectTrack(i);
        }
        return i;
    }

    public MediaCodecInfo a(String s)
    {
        VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Finding codec for mimeType: ").append(s).toString());
        int i = MediaCodecList.getCodecCount();
        int j = 0;
        while (j < i) 
        {
            MediaCodecInfo mediacodecinfo = MediaCodecList.getCodecInfoAt(j);
            if (mediacodecinfo.isEncoder())
            {
                String as[] = mediacodecinfo.getSupportedTypes();
                int k = 0;
                while (k < as.length) 
                {
                    if (as[k].equalsIgnoreCase(s))
                    {
                        VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Using codec : ").append(mediacodecinfo.getName()).toString());
                        return mediacodecinfo;
                    }
                    k++;
                }
            }
            j++;
        }
        Log.e("MIMETOOLS", (new StringBuilder()).append("No codec was found").append(s).toString());
        throw new SetupException((new StringBuilder()).append("No codec for ").append(s).toString());
    }

    public MediaFormat a(String s, boolean flag)
    {
        MediaExtractor mediaextractor;
        int i;
        MediaFormat mediaformat;
        int j;
        try
        {
            mediaextractor = new MediaExtractor();
            mediaextractor.setDataSource(s);
        }
        catch (Exception exception)
        {
            Log.e("MIMETOOLS", "Failed to read media format from file", exception);
            return null;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        i = b(mediaextractor);
_L3:
        mediaformat = mediaextractor.getTrackFormat(i);
        mediaextractor.release();
        return mediaformat;
_L2:
        j = d(mediaextractor);
        i = j;
          goto _L3
    }

    public boolean a(MediaFormat mediaformat)
    {
        return c(mediaformat).startsWith("audio/");
    }

    public int b(MediaExtractor mediaextractor)
    {
        for (int i = 0; i < mediaextractor.getTrackCount(); i++)
        {
            VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("format for track ").append(i).append(" is ").append(c(mediaextractor.getTrackFormat(i))).toString());
            if (b(mediaextractor.getTrackFormat(i)))
            {
                VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Selecting track:").append(i).toString());
                return i;
            }
        }

        return -1;
    }

    public MediaExtractor b(String s)
    {
        MediaExtractor mediaextractor = new MediaExtractor();
        VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Setting video to be ").append(s).toString());
        mediaextractor.setDataSource(s);
        return mediaextractor;
    }

    public boolean b(MediaFormat mediaformat)
    {
        return c(mediaformat).startsWith("video/");
    }

    public int c(MediaExtractor mediaextractor)
    {
        int i = d(mediaextractor);
        if (i != -1)
        {
            mediaextractor.selectTrack(i);
        }
        return i;
    }

    public long c(String s)
    {
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(s);
        return Long.parseLong(mediametadataretriever.extractMetadata(9));
    }

    public String c(MediaFormat mediaformat)
    {
        String s = mediaformat.getString("mime");
        VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Type is ").append(s).toString());
        return s;
    }

    public int d(MediaExtractor mediaextractor)
    {
        for (int i = 0; i < mediaextractor.getTrackCount(); i++)
        {
            VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("format for track:").append(i).append(" is ").append(c(mediaextractor.getTrackFormat(i))).toString());
            if (a(mediaextractor.getTrackFormat(i)))
            {
                VerboseLogging.a("MIMETOOLS", (new StringBuilder()).append("Selecting track:").append(i).toString());
                return i;
            }
        }

        return -1;
    }

    public int d(MediaFormat mediaformat)
    {
        int i = mediaformat.getInteger("sample-rate");
        Log.d("MIMETOOLS", (new StringBuilder()).append("Returning rate of ").append(i).toString());
        return i;
    }

    public int d(String s)
    {
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(s);
        return Integer.parseInt(mediametadataretriever.extractMetadata(18));
    }

    public int e(MediaFormat mediaformat)
    {
        int i = mediaformat.getInteger("channel-count");
        Log.d("MIMETOOLS", (new StringBuilder()).append("Returning channel count of ").append(i).toString());
        return i;
    }

    public int e(String s)
    {
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(s);
        return Integer.parseInt(mediametadataretriever.extractMetadata(19));
    }

    public long f(String s)
    {
        return (new File(s)).length();
    }
}
