// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.util.ErrorUtil;
import java.net.URI;
import java.util.Map;

public class VideoStillDisplayComponent extends AbstractComponent
    implements Component
{
    class HideListener
        implements EventListener
    {

        final VideoStillDisplayComponent this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoStillDisplayComponent.TAG, "OnHideListener");
            view.setVisibility(4);
            if (task != null)
            {
                task.cancel(true);
                task = null;
            }
            recycle();
            
// JavaClassFileOutputException: get_constant: invalid tag

        private HideListener()
        {
            this$0 = VideoStillDisplayComponent.this;
            super();
        }

    }

    class OnSetVideoStill
        implements EventListener
    {

        final VideoStillDisplayComponent this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoStillDisplayComponent.TAG, "OnSetVideoStill");
            recycle();
            HideListener hidelistener = new HideListener();
            cuePointListenerToken = 
// JavaClassFileOutputException: get_constant: invalid tag

        private OnSetVideoStill()
        {
            this$0 = VideoStillDisplayComponent.this;
            super();
        }

    }


    public static final String TAG = com/brightcove/player/display/VideoStillDisplayComponent.getSimpleName();
    private int activityStoppedListenerToken;
    private int cuePointListenerToken;
    private int didPlayListenerToken;
    private int didSeekToListenerToken;
    private int fragmentStoppedListenerToken;
    private LoadImageTask task;
    private ImageView view;
    private int willInterruptContentListenerToken;

    public VideoStillDisplayComponent(ImageView imageview, EventEmitter eventemitter)
    {
        AbstractComponent(eventemitter, com/brightcove/player/display/VideoStillDisplayComponent);
        if (imageview == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("imageViewRequired"));
        } else
        {
            view = imageview;
            addListener("setVideoStill", new OnSetVideoStill());
            return;
        }
    }

    private void recycle()
    {
        android.graphics.drawable.Drawable drawable = view.getDrawable();
        if (drawable != null && (drawable instanceof BitmapDrawable))
        {
            ((BitmapDrawable)drawable).getBitmap().recycle();
        }
    }





/*
    static int access$1002(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.willInterruptContentListenerToken = i;
        return i;
    }

*/




/*
    static int access$1202(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.activityStoppedListenerToken = i;
        return i;
    }

*/




/*
    static int access$1402(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.fragmentStoppedListenerToken = i;
        return i;
    }

*/








/*
    static LoadImageTask access$202(VideoStillDisplayComponent videostilldisplaycomponent, LoadImageTask loadimagetask)
    {
        videostilldisplaycomponent.task = loadimagetask;
        return loadimagetask;
    }

*/







/*
    static int access$402(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.cuePointListenerToken = i;
        return i;
    }

*/




/*
    static int access$602(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.didPlayListenerToken = i;
        return i;
    }

*/




/*
    static int access$802(VideoStillDisplayComponent videostilldisplaycomponent, int i)
    {
        videostilldisplaycomponent.didSeekToListenerToken = i;
        return i;
    }

*/

}
