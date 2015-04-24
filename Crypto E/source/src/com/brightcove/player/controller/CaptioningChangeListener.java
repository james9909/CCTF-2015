// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import java.util.Locale;

// Referenced classes of package com.brightcove.player.controller:
//            BrightcoveClosedCaptioningController

class CaptioningChangeListener extends android.view.accessibility.CaptioningManager.CaptioningChangeListener
{

    private static final String TAG = com/brightcove/player/controller/CaptioningChangeListener.getSimpleName();
    private BrightcoveClosedCaptioningController brightcoveClosedCaptioningController;

    public CaptioningChangeListener(BrightcoveClosedCaptioningController brightcoveclosedcaptioningcontroller)
    {
        brightcoveClosedCaptioningController = brightcoveclosedcaptioningcontroller;
    }

    public void onEnabledChanged(boolean flag)
    {
        Log.v(TAG, (new StringBuilder()).append("onEnabledChanged: ").append(flag).toString());
        brightcoveClosedCaptioningController.saveClosedCaptioningState(flag);
    }

    public void onFontScaleChanged(float f)
    {
        Log.v(TAG, (new StringBuilder()).append("onFontScaleChanged: ").append(f).toString());
    }

    public void onLocaleChanged(Locale locale)
    {
        Log.v(TAG, (new StringBuilder()).append("onLocaleChanged: ").append(locale).toString());
    }

    public void onUserStyleChanged(android.view.accessibility.CaptioningManager.CaptionStyle captionstyle)
    {
        Log.v(TAG, (new StringBuilder()).append("onUserStyleChanged: ").append(captionstyle).toString());
    }

}
