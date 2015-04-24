// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.captioning;

import com.brightcove.player.captioning.tasks.LoadCaptionsTask;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.EventEmitter;
import java.net.URI;

public class LoadCaptionsService extends AbstractComponent
{

    public LoadCaptionsService(EventEmitter eventemitter)
    {
        super(eventemitter, com/brightcove/player/captioning/LoadCaptionsService);
        if (eventemitter == null)
        {
            throw new IllegalArgumentException("must provide an EventEmitter");
        } else
        {
            return;
        }
    }

    public void loadCaptions(URI uri)
    {
        if (uri == null)
        {
            throw new IllegalArgumentException("must provide a valid URI");
        }
        if (uri != null)
        {
            (new LoadCaptionsTask(eventEmitter, com.brightcove.player.captioning.tasks.LoadCaptionsTask.CaptionsType.TTML)).execute(new URI[] {
                uri
            });
            (new LoadCaptionsTask(eventEmitter, com.brightcove.player.captioning.tasks.LoadCaptionsTask.CaptionsType.WEBVTT)).execute(new URI[] {
                uri
            });
        }
    }
}
