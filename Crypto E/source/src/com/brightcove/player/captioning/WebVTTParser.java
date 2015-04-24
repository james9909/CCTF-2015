// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import com.brightcove.player.model.WebVTTDocument;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.brightcove.player.captioning:
//            BrightcoveClosedCaption

public class WebVTTParser
{

    private static final String TAG = com/brightcove/player/captioning/WebVTTParser.getSimpleName();
    private static final Pattern WEBVTT_TIMESTAMP = Pattern.compile("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}");
    private static final String WEBVTT_TIMESTAMP_STRING = "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}";

    public WebVTTParser()
    {
    }

    public static WebVTTDocument parse(InputStream inputstream, String s)
    {
        ArrayList arraylist = new ArrayList();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream, s));
        String s1 = bufferedreader.readLine();
        if (s1 == null)
        {
            throw new IOException("Expected WEBVTT. Got null");
        }
        if (!s1.startsWith("WEBVTT"))
        {
            throw new IOException((new StringBuilder()).append("Expected WEBVTT. Got ").append(s1).toString());
        }
        String s2;
        do
        {
            s2 = bufferedreader.readLine();
            if (s2 == null)
            {
                throw new IOException("Expected an empty line after webvtt header");
            }
        } while (!s2.isEmpty());
        do
        {
            String s3 = bufferedreader.readLine();
            if (s3 == null)
            {
                break;
            }
            Matcher matcher = WEBVTT_TIMESTAMP.matcher(s3);
            long l = 0L;
            String s4 = "";
            if (matcher.find())
            {
                long l1 = parseTimestamp(matcher.group());
                if (matcher.find())
                {
                    l = parseTimestamp(matcher.group());
                }
                do
                {
                    String s5 = bufferedreader.readLine();
                    if (s5 == null || s5.isEmpty())
                    {
                        break;
                    }
                    s4 = (new StringBuilder()).append(s4).append(s5.trim()).append("\n").toString();
                } while (true);
                arraylist.add(new BrightcoveClosedCaption((int)l1, (int)l, s4));
            }
        } while (true);
        bufferedreader.close();
        inputstream.close();
        return new WebVTTDocument(arraylist);
    }

    private static long parseTimestamp(String s)
    {
        int i = 0;
        if (!s.matches("(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"))
        {
            throw new NumberFormatException("has invalid format");
        }
        String as[] = s.split("\\.", 2);
        long l = 0L;
        String as1[] = as[0].split(":");
        for (int j = as1.length; i < j; i++)
        {
            String s1 = as1[i];
            l = l * 60L + Long.parseLong(s1);
        }

        return l * 1000L + Long.parseLong(as[1]);
    }

}
