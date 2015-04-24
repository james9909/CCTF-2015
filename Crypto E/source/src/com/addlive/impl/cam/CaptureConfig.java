// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl.cam;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CaptureConfig
{

    private static final int FPS = 15;
    private static final int HEIGHT = 480;
    private static final int WIDTH = 640;
    private int fps;
    private int height;
    private int width;

    public CaptureConfig()
    {
        width = 640;
        height = 480;
        fps = 15;
    }

    public int getFps()
    {
        return fps;
    }

    public int getHeight()
    {
        return height;
    }

    public int getWidth()
    {
        return width;
    }

    public int processProperty(String s, String s1)
    {
        char c = '\u03EA';
        if (s.equals("global.dev.camera.FPS"))
        {
            fps = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_131;
        }
        if (s.equals("global.dev.camera.height"))
        {
            height = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_131;
        }
        if (s.equals("global.dev.camera.width"))
        {
            width = Integer.parseInt(s1);
            break MISSING_BLOCK_LABEL_131;
        }
        try
        {
            if (!s.equals("global.dev.camera.mode"))
            {
                break MISSING_BLOCK_LABEL_133;
            }
            Matcher matcher = Pattern.compile("(\\d{1,3})x(\\d{1,3})@(\\d{1,2})").matcher(s1);
            if (!matcher.matches())
            {
                break MISSING_BLOCK_LABEL_133;
            }
            width = Integer.parseInt(matcher.group(1));
            height = Integer.parseInt(matcher.group(2));
            fps = Integer.parseInt(matcher.group(3));
        }
        catch (NumberFormatException numberformatexception)
        {
            return c;
        }
        c = '\0';
        return c;
    }

    public void setFps(int i)
    {
        fps = i;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setWidth(int i)
    {
        width = i;
    }
}
