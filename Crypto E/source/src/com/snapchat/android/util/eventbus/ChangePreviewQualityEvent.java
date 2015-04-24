// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class ChangePreviewQualityEvent
{
    public static final class PreviewQuality extends Enum
    {

        public static final PreviewQuality a;
        public static final PreviewQuality b;
        private static final PreviewQuality c[];

        public static PreviewQuality valueOf(String s)
        {
            return (PreviewQuality)Enum.valueOf(com/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality, s);
        }

        public static PreviewQuality[] values()
        {
            return (PreviewQuality[])c.clone();
        }

        static 
        {
            a = new PreviewQuality("LOW", 0);
            b = new PreviewQuality("HIGH", 1);
            PreviewQuality apreviewquality[] = new PreviewQuality[2];
            apreviewquality[0] = a;
            apreviewquality[1] = b;
            c = apreviewquality;
        }

        private PreviewQuality(String s, int i)
        {
            super(s, i);
        }
    }


    public final PreviewQuality a;

    public ChangePreviewQualityEvent(PreviewQuality previewquality)
    {
        a = previewquality;
    }
}
