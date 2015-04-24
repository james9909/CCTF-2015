// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;


public class VideoEvent
{
    public static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        private static final Type c[];

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/android/camera/VideoEvent$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])c.clone();
        }

        static 
        {
            a = new Type("MAX_FILE_SIZE_REACHED", 0);
            b = new Type("MAX_DURATION_REACHED", 1);
            Type atype[] = new Type[2];
            atype[0] = a;
            atype[1] = b;
            c = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }

}
