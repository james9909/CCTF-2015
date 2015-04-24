// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.video;

import android.graphics.Bitmap;
import com.snapchat.android.model.ReceivedSnap;

class VideoSnapResources
{
    public static class Builder
    {

        private final ReceivedSnap a;
        private String b;
        private Bitmap c;

        public Builder a(Bitmap bitmap)
        {
            c = bitmap;
            return this;
        }

        public Builder a(String s)
        {
            b = s;
            return this;
        }

        public VideoSnapResources a()
        {
            return new VideoSnapResources(a, b, c);
        }

        public Builder(ReceivedSnap receivedsnap)
        {
            a = receivedsnap;
        }
    }


    private final ReceivedSnap a;
    private final String b;
    private final Bitmap c;

    private VideoSnapResources(ReceivedSnap receivedsnap, String s, Bitmap bitmap)
    {
        a = receivedsnap;
        b = s;
        c = bitmap;
    }


    public ReceivedSnap a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public Bitmap c()
    {
        return c;
    }
}
