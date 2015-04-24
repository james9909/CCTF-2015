// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering;

import android.view.ViewGroup;
import com.snapchat.android.model.ReceivedSnap;

public interface SnapMediaRenderer
{
    public static final class ErrorCode extends Enum
    {

        public static final ErrorCode a;
        public static final ErrorCode b;
        public static final ErrorCode c;
        private static final ErrorCode d[];

        public static ErrorCode valueOf(String s)
        {
            return (ErrorCode)Enum.valueOf(com/snapchat/android/rendering/SnapMediaRenderer$ErrorCode, s);
        }

        public static ErrorCode[] values()
        {
            return (ErrorCode[])d.clone();
        }

        static 
        {
            a = new ErrorCode("EXTERNAL_STORAGE_REQUIRED", 0);
            b = new ErrorCode("MEDIA_UNAVAILABLE_LOCALLY", 1);
            c = new ErrorCode("PLAYBACK_ERROR", 2);
            ErrorCode aerrorcode[] = new ErrorCode[3];
            aerrorcode[0] = a;
            aerrorcode[1] = b;
            aerrorcode[2] = c;
            d = aerrorcode;
        }

        private ErrorCode(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface SnapRendererListener
    {

        public abstract void a();

        public abstract void a(int i, int j, int k);

        public abstract void a(ErrorCode errorcode);

        public abstract void b();
    }


    public abstract void a();

    public abstract void a(ViewGroup viewgroup);

    public abstract void a(ReceivedSnap receivedsnap, boolean flag, SnapRendererListener snaprendererlistener);

    public abstract void b();

    public abstract void c();

    public abstract void d();
}
