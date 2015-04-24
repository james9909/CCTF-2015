// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.management;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.util.Log;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle;

public class BrightcoveClosedCaptioningManager
{

    public static final String PREFS_NAME = "ClosedCaptioningStyle";
    public static final String PREF_BACKGROUND_COLOR = "BackgroundColor";
    public static final String PREF_EDGE_ATTRIBUTE = "EdgeAttribute";
    public static final String PREF_EDGE_COLOR = "EdgeColor";
    public static final String PREF_HIGHLIGHT_COLOR = "HighlightColor";
    public static final String PREF_TEXT_COLOR = "TextColor";
    public static final String PREF_TEXT_SIZE = "TextSize";
    public static final String PREF_TYPEFACE = "Typeface";
    public static final String TAG = com/brightcove/player/management/BrightcoveClosedCaptioningManager.getSimpleName();
    private static BrightcoveClosedCaptioningManager sInstance = null;
    private final Context context;
    private BrightcoveClosedCaptioningStyle style;

    private BrightcoveClosedCaptioningManager(Context context1)
    {
        context = context1.getApplicationContext();
        loadStyle();
    }

    public static BrightcoveClosedCaptioningManager getInstance(Context context1)
    {
        if (sInstance == null)
        {
            sInstance = new BrightcoveClosedCaptioningManager(context1);
        }
        return sInstance;
    }

    public BrightcoveClosedCaptioningStyle getStyle()
    {
        return style;
    }

    protected void loadStyle()
    {
        Log.d(TAG, String.format("Loading CaptionsStyle from %s", new Object[] {
            "ClosedCaptioningStyle"
        }));
        SharedPreferences sharedpreferences = context.getSharedPreferences("ClosedCaptioningStyle", 0);
        com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle.Builder builder = BrightcoveClosedCaptioningStyle.newBuilder(context);
        builder.setBackgroundColor(sharedpreferences.getInt("BackgroundColor", 0));
        builder.setHighlightColor(sharedpreferences.getInt("HighlightColor", 0));
        builder.setTypeface(Typeface.defaultFromStyle(sharedpreferences.getInt("Typeface", BrightcoveClosedCaptioningStyle.DEFAULT_TYPEFACE.getStyle())));
        builder.setTextColor(sharedpreferences.getInt("TextColor", -1));
        builder.setTextSize(sharedpreferences.getFloat("TextSize", 14F));
        builder.setEdgeAttribute(com.brightcove.player.captioning.BrightcoveClosedCaptioningTextView.EdgeAttribute.values()[sharedpreferences.getInt("EdgeAttribute", BrightcoveClosedCaptioningStyle.DEFAULT_EDGE_ATTRIBUTE.ordinal())]);
        builder.setEdgeColor(sharedpreferences.getInt("EdgeColor", 0));
        style = builder.create();
        String s = TAG;
        Object aobj[] = new Object[1];
        aobj[0] = style.toString();
        Log.d(s, String.format("CaptionsStyle is %s", aobj));
    }

    protected void persistStyle()
    {
        Log.d(TAG, String.format("Writing CaptionsStyle to %s", new Object[] {
            "ClosedCaptioningStyle"
        }));
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("ClosedCaptioningStyle", 0).edit();
        editor.putInt("BackgroundColor", style.backgroundColor);
        editor.putInt("HighlightColor", style.highlightColor);
        editor.putInt("Typeface", style.typeface.getStyle());
        editor.putInt("TextColor", style.textColor);
        editor.putFloat("TextSize", style.textSize);
        editor.putInt("EdgeAttribute", style.edgeAttribute.ordinal());
        editor.putInt("EdgeColor", style.edgeColor);
        editor.commit();
    }

    public void setStyle(BrightcoveClosedCaptioningStyle brightcoveclosedcaptioningstyle)
    {
        style = brightcoveclosedcaptioningstyle;
        persistStyle();
    }

}
