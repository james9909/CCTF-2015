// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;


public final class DeliveryType extends Enum
{

    private static final DeliveryType $VALUES[];
    public static final DeliveryType DASH;
    public static final DeliveryType FLV;
    public static final DeliveryType HLS;
    public static final DeliveryType MP4;
    public static final DeliveryType UNKNOWN;
    public static final DeliveryType WVM;
    private final String type;

    private DeliveryType(String s, int i, String s1)
    {
        super(s, i);
        type = s1;
    }

    public static DeliveryType valueOf(String s)
    {
        return (DeliveryType)Enum.valueOf(com/brightcove/player/media/DeliveryType, s);
    }

    public static DeliveryType[] values()
    {
        return (DeliveryType[])$VALUES.clone();
    }

    public String toString()
    {
        return type;
    }

    static 
    {
        UNKNOWN = new DeliveryType("UNKNOWN", 0, "UNKNOWN");
        MP4 = new DeliveryType("MP4", 1, "video/mp4");
        HLS = new DeliveryType("HLS", 2, "application/vnd.apple.mpegurl");
        FLV = new DeliveryType("FLV", 3, "video/x-flv");
        WVM = new DeliveryType("WVM", 4, "video/wvm");
        DASH = new DeliveryType("DASH", 5, "video/mpeg-dash");
        DeliveryType adeliverytype[] = new DeliveryType[6];
        adeliverytype[0] = UNKNOWN;
        adeliverytype[1] = MP4;
        adeliverytype[2] = HLS;
        adeliverytype[3] = FLV;
        adeliverytype[4] = WVM;
        adeliverytype[5] = DASH;
        $VALUES = adeliverytype;
    }
}
