// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;


public final class CaptionTypeEnums extends Enum
{

    public static final CaptionTypeEnums a;
    public static final CaptionTypeEnums b;
    public static final CaptionTypeEnums c;
    private static final CaptionTypeEnums d[];

    private CaptionTypeEnums(String s, int i)
    {
        super(s, i);
    }

    public static CaptionTypeEnums valueOf(String s)
    {
        return (CaptionTypeEnums)Enum.valueOf(com/snapchat/android/ui/caption/CaptionTypeEnums, s);
    }

    public static CaptionTypeEnums[] values()
    {
        return (CaptionTypeEnums[])d.clone();
    }

    static 
    {
        a = new CaptionTypeEnums("NON_FAT_VANILLA_CAPTION_TYPE", 0);
        b = new CaptionTypeEnums("FAT_CAPTION_TYPE", 1);
        c = new CaptionTypeEnums("FAT_CENTER_CAPTION_TYPE", 2);
        CaptionTypeEnums acaptiontypeenums[] = new CaptionTypeEnums[3];
        acaptiontypeenums[0] = a;
        acaptiontypeenums[1] = b;
        acaptiontypeenums[2] = c;
        d = acaptiontypeenums;
    }
}
