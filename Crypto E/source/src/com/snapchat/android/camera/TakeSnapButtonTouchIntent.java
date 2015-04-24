// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;


public class TakeSnapButtonTouchIntent
{
    public static final class MediaCaptureType extends Enum
    {

        public static final MediaCaptureType a;
        public static final MediaCaptureType b;
        public static final MediaCaptureType c;
        private static final MediaCaptureType d[];

        public static MediaCaptureType valueOf(String s)
        {
            return (MediaCaptureType)Enum.valueOf(com/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType, s);
        }

        public static MediaCaptureType[] values()
        {
            return (MediaCaptureType[])d.clone();
        }

        static 
        {
            a = new MediaCaptureType("UNKNOWN", 0);
            b = new MediaCaptureType("PHOTO", 1);
            c = new MediaCaptureType("VIDEO", 2);
            MediaCaptureType amediacapturetype[] = new MediaCaptureType[3];
            amediacapturetype[0] = a;
            amediacapturetype[1] = b;
            amediacapturetype[2] = c;
            d = amediacapturetype;
        }

        private MediaCaptureType(String s, int i)
        {
            super(s, i);
        }
    }


    private MediaCaptureType a;

    public TakeSnapButtonTouchIntent()
    {
        a = MediaCaptureType.a;
    }

    public MediaCaptureType a()
    {
        return a;
    }

    public void a(MediaCaptureType mediacapturetype)
    {
        a = mediacapturetype;
    }
}
