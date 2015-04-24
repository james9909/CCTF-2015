// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import java.util.HashMap;
import java.util.Map;

public class MediaPlayerCodeTranslator
{

    private static final Map a;
    private static final Map b;

    public MediaPlayerCodeTranslator()
    {
    }

    public static String a(int i)
    {
        return a(b, i);
    }

    private static String a(Map map, int i)
    {
        String s = (String)map.get(Integer.valueOf(i));
        if (s == null)
        {
            s = "UNKNOWN";
        }
        return s;
    }

    public static String b(int i)
    {
        return a(a, i);
    }

    static 
    {
        a = new HashMap();
        b = new HashMap();
        a.put(Integer.valueOf(1), "MEDIA_INFO_UNKNOWN");
        a.put(Integer.valueOf(700), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        a.put(Integer.valueOf(3), "MEDIA_INFO_VIDEO_RENDERING_START");
        a.put(Integer.valueOf(701), "MEDIA_INFO_BUFFERING_START");
        a.put(Integer.valueOf(702), "MEDIA_INFO_BUFFERING_END");
        a.put(Integer.valueOf(800), "MEDIA_INFO_BAD_INTERLEAVING");
        a.put(Integer.valueOf(801), "MEDIA_INFO_NOT_SEEKABLE");
        a.put(Integer.valueOf(802), "MEDIA_INFO_METADATA_UPDATE");
        a.put(Integer.valueOf(901), "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        a.put(Integer.valueOf(902), "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        b.put(Integer.valueOf(1), "MEDIA_ERROR_UNKNOWN");
        b.put(Integer.valueOf(100), "MEDIA_ERROR_SERVER_DIED");
    }
}
