// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.bg;

public final class SearchAdRequest
{
    public static final class Builder
    {

        private final com.google.android.gms.internal.bg.a lh = new com.google.android.gms.internal.bg.a();
        private int yD;
        private int yE;
        private int yF;
        private int yG;
        private int yH;
        private int yI;
        private int yJ;
        private int yK;
        private String yL;
        private int yM;
        private String yN;
        private int yO;
        private int yP;
        private String yQ;

        static int a(Builder builder)
        {
            return builder.yD;
        }

        static int b(Builder builder)
        {
            return builder.yE;
        }

        static int c(Builder builder)
        {
            return builder.yF;
        }

        static int d(Builder builder)
        {
            return builder.yG;
        }

        static int e(Builder builder)
        {
            return builder.yH;
        }

        static int f(Builder builder)
        {
            return builder.yI;
        }

        static int g(Builder builder)
        {
            return builder.yJ;
        }

        static int h(Builder builder)
        {
            return builder.yK;
        }

        static String i(Builder builder)
        {
            return builder.yL;
        }

        static int j(Builder builder)
        {
            return builder.yM;
        }

        static String k(Builder builder)
        {
            return builder.yN;
        }

        static int l(Builder builder)
        {
            return builder.yO;
        }

        static int m(Builder builder)
        {
            return builder.yP;
        }

        static String n(Builder builder)
        {
            return builder.yQ;
        }

        static com.google.android.gms.internal.bg.a o(Builder builder)
        {
            return builder.lh;
        }

        public Builder addCustomEventExtrasBundle(Class class1, Bundle bundle)
        {
            lh.b(class1, bundle);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkextras)
        {
            lh.a(networkextras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class class1, Bundle bundle)
        {
            lh.a(class1, bundle);
            return this;
        }

        public Builder addTestDevice(String s)
        {
            lh.s(s);
            return this;
        }

        public SearchAdRequest build()
        {
            return new SearchAdRequest(this);
        }

        public Builder setAnchorTextColor(int i1)
        {
            yD = i1;
            return this;
        }

        public Builder setBackgroundColor(int i1)
        {
            yE = i1;
            yF = Color.argb(0, 0, 0, 0);
            yG = Color.argb(0, 0, 0, 0);
            return this;
        }

        public Builder setBackgroundGradient(int i1, int j1)
        {
            yE = Color.argb(0, 0, 0, 0);
            yF = j1;
            yG = i1;
            return this;
        }

        public Builder setBorderColor(int i1)
        {
            yH = i1;
            return this;
        }

        public Builder setBorderThickness(int i1)
        {
            yI = i1;
            return this;
        }

        public Builder setBorderType(int i1)
        {
            yJ = i1;
            return this;
        }

        public Builder setCallButtonColor(int i1)
        {
            yK = i1;
            return this;
        }

        public Builder setCustomChannels(String s)
        {
            yL = s;
            return this;
        }

        public Builder setDescriptionTextColor(int i1)
        {
            yM = i1;
            return this;
        }

        public Builder setFontFace(String s)
        {
            yN = s;
            return this;
        }

        public Builder setHeaderTextColor(int i1)
        {
            yO = i1;
            return this;
        }

        public Builder setHeaderTextSize(int i1)
        {
            yP = i1;
            return this;
        }

        public Builder setLocation(Location location)
        {
            lh.a(location);
            return this;
        }

        public Builder setQuery(String s)
        {
            yQ = s;
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean flag)
        {
            lh.j(flag);
            return this;
        }

        public Builder()
        {
            yJ = 0;
        }
    }


    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final bg lg;
    private final int yD;
    private final int yE;
    private final int yF;
    private final int yG;
    private final int yH;
    private final int yI;
    private final int yJ;
    private final int yK;
    private final String yL;
    private final int yM;
    private final String yN;
    private final int yO;
    private final int yP;
    private final String yQ;

    private SearchAdRequest(Builder builder)
    {
        yD = Builder.a(builder);
        yE = Builder.b(builder);
        yF = Builder.c(builder);
        yG = Builder.d(builder);
        yH = Builder.e(builder);
        yI = Builder.f(builder);
        yJ = Builder.g(builder);
        yK = Builder.h(builder);
        yL = Builder.i(builder);
        yM = Builder.j(builder);
        yN = Builder.k(builder);
        yO = Builder.l(builder);
        yP = Builder.m(builder);
        yQ = Builder.n(builder);
        lg = new bg(Builder.o(builder), this);
    }


    bg Y()
    {
        return lg;
    }

    public int getAnchorTextColor()
    {
        return yD;
    }

    public int getBackgroundColor()
    {
        return yE;
    }

    public int getBackgroundGradientBottom()
    {
        return yF;
    }

    public int getBackgroundGradientTop()
    {
        return yG;
    }

    public int getBorderColor()
    {
        return yH;
    }

    public int getBorderThickness()
    {
        return yI;
    }

    public int getBorderType()
    {
        return yJ;
    }

    public int getCallButtonColor()
    {
        return yK;
    }

    public String getCustomChannels()
    {
        return yL;
    }

    public Bundle getCustomEventExtrasBundle(Class class1)
    {
        return lg.getCustomEventExtrasBundle(class1);
    }

    public int getDescriptionTextColor()
    {
        return yM;
    }

    public String getFontFace()
    {
        return yN;
    }

    public int getHeaderTextColor()
    {
        return yO;
    }

    public int getHeaderTextSize()
    {
        return yP;
    }

    public Location getLocation()
    {
        return lg.getLocation();
    }

    public NetworkExtras getNetworkExtras(Class class1)
    {
        return lg.getNetworkExtras(class1);
    }

    public Bundle getNetworkExtrasBundle(Class class1)
    {
        return lg.getNetworkExtrasBundle(class1);
    }

    public String getQuery()
    {
        return yQ;
    }

    public boolean isTestDevice(Context context)
    {
        return lg.isTestDevice(context);
    }

    static 
    {
        DEVICE_ID_EMULATOR = bg.DEVICE_ID_EMULATOR;
    }
}
