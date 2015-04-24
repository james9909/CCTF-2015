// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public class Event
{

    public static final String ACTIVITY = "activity";
    public static final String BOOLEAN = "boolean";
    public static final String BUILD_VERSION = "buildVersion";
    public static final String CAPTION_BACKGROUND = "captionBackground";
    public static final String CAPTION_EDGE_COLOR = "captionEdgeColor";
    public static final String CAPTION_EDGE_TYPE = "captionEdgeType";
    public static final String CAPTION_FONT = "captionFont";
    public static final String CAPTION_FONT_COLOR = "captionFontColor";
    public static final String CAPTION_FONT_SIZE = "captionFontSize";
    public static final String CAPTION_HIGHLIGHT = "captionHighlight";
    public static final String CUE_POINT = "cue_point";
    public static final String CUE_POINTS = "cue_points";
    public static final String CURRENT_VIDEO = "currentVideo";
    public static final String DEBUG = "debug";
    public static final String EMITTER = "emitter";
    public static final String END_TIME = "endTime";
    public static final String ERROR = "error";
    public static final String ERRORS = "errors";
    public static final String ERROR_CODE = "errorCode";
    public static final String ERROR_EXTRA = "errorExtra";
    public static final String ERROR_MESSAGE = "errorMessage";
    public static final String FROM_SEEK_POSITION = "fromSeekPosition";
    public static final String INDEX = "index";
    public static final String INSTANCE_STATE = "instanceState";
    public static final String LEFT_VOLUME = "leftVolume";
    public static final String LIST = "list";
    public static final String NEXT_VIDEO = "nextVideo";
    public static final String ORIGINAL_EVENT = "original";
    public static final String PERCENT_COMPLETE = "percentComplete";
    public static final String PLAYHEAD_POSITION = "playheadPosition";
    public static final String PLAYLIST = "playlist";
    public static final String PLUGIN_NAME = "pluginName";
    public static final String REQUEST_TOKEN = "requestToken";
    public static final String RIGHT_VOLUME = "rightVolume";
    public static final String SEEK_CONTROLS_VISIBILITY = "seekControlsVisibility";
    public static final String SEEK_POSITION = "seekPosition";
    public static final String SKIP_CUE_POINTS = "skipCuePoints";
    public static final String SOURCE = "source";
    public static final String START_TIME = "startTime";
    private static final String TAG = com/brightcove/player/event/Event.getName();
    public static final String TTML_DOCUMENT = "ttmlDocument";
    public static final String UUID = "uuid";
    public static final String VALUE = "value";
    public static final String VIDEO = "video";
    public static final String VIDEO_DURATION = "duration";
    public static final String VIDEO_HEIGHT = "height";
    public static final String VIDEO_STILL = "video_still";
    public static final String VIDEO_WIDTH = "width";
    public static final String WEBVTT_DOCUMENT = "webvttDocument";
    private boolean isPrevented;
    private boolean isStopped;
    public final Map properties = new HashMap();
    private final String type;

    public Event(String s)
    {
        type = s;
        isPrevented = false;
        isStopped = false;
    }

    public int getIntegerProperty(String s)
    {
        if (properties.containsKey(s))
        {
            int i;
            try
            {
                i = Integer.parseInt(properties.get(s).toString());
            }
            catch (NumberFormatException numberformatexception)
            {
                Log.e(TAG, (new StringBuilder()).append("Error converting value of <").append(properties.get(s)).append("> for key '").append(s).append("'").toString());
                return -1;
            }
            return i;
        } else
        {
            Log.w(TAG, (new StringBuilder()).append("Could not find property with name '").append(s).append("'").toString());
            return -1;
        }
    }

    public String getType()
    {
        return type;
    }

    public boolean isPrevented()
    {
        return isPrevented;
    }

    public boolean isStopped()
    {
        return isStopped;
    }

    public void preventDefault()
    {
        isPrevented = true;
    }

    public void stopPropagation()
    {
        isStopped = true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Event{").append(type).append(properties).append("}").toString();
    }

}
