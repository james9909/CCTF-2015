// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.brightcove.player.controller:
//            SourceSelector, NoSourceFoundException

public class DefaultSourceSelectionController extends AbstractComponent
    implements SourceSelector, Component
{
    class OnSelectSourceListener
        implements EventListener
    {

        final DefaultSourceSelectionController this$0;

        public void processEvent(Event event)
        {
            Video video = (Video)event.properties.get("video");
            try
            {
                Source source = selectSource(video);
                event.properties.put("source", source);
                TAG.respond(event);
                return;
            }
            catch (NoSourceFoundException nosourcefoundexception)
            {
                Log.e(DefaultSourceSelectionController.TAG, (new StringBuilder()).append("no usable Source could be found for Video: ").append(video.toString()).toString());
            }
            EventUtil.emit(TAG, "sourceNotFound", video);
        }

        private OnSelectSourceListener()
        {
            this$0 = DefaultSourceSelectionController.this;
            super();
        }

    }


    public static final String TAG = com/brightcove/player/controller/DefaultSourceSelectionController.getSimpleName();
    private final Integer DEFAULT_BIT_RATE = Integer.valueOf(0x40000);
    boolean preferHls;

    public DefaultSourceSelectionController(EventEmitter eventemitter)
    {
        super(eventemitter, com/brightcove/player/controller/DefaultSourceSelectionController);
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= getMinimumHLSVersion())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        preferHls = flag;
        initializeListeners();
    }

    public Source findBestSourceByBitRate(SourceCollection sourcecollection, Integer integer)
    {
        int i;
        Iterator iterator;
        Source source1;
        if (sourcecollection.getSources() == null || sourcecollection.getSources().size() == 0)
        {
            throw new NoSourceFoundException();
        }
        Source source = (Source)sourcecollection.getSources().iterator().next();
        i = 0x7fffffff;
        iterator = sourcecollection.getSources().iterator();
        source1 = source;
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Source source2 = (Source)iterator.next();
        if (source2.getBitRate() != null && source2.getBitRate().intValue() > 0)
        {
            int j = Math.abs(source2.getBitRate().intValue() - integer.intValue());
            int k;
            Source source3;
            if (j <= i)
            {
                source3 = source2;
                k = j;
            } else
            {
                k = i;
                source3 = source1;
            }
            source1 = source3;
            i = k;
        }
        if (true) goto _L3; else goto _L2
_L2:
        return source1;
    }

    int getMinimumHLSVersion()
    {
        return 14;
    }

    protected void initializeListeners()
    {
        addListener("selectSource", new OnSelectSourceListener());
    }

    public Source selectSource(Video video)
    {
        Map map;
        Source source;
        if (video == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("videoRequired"));
        }
        map = video.getSourceCollections();
        if (map == null || map.size() == 0)
        {
            throw new NoSourceFoundException();
        }
        source = null;
        if (true)
        {
            boolean flag = preferHls;
            source = null;
            if (flag)
            {
                boolean flag1 = map.containsKey(DeliveryType.HLS);
                source = null;
                if (flag1)
                {
                    Set set2 = ((SourceCollection)map.get(DeliveryType.HLS)).getSources();
                    source = null;
                    if (set2 != null)
                    {
                        int i = set2.size();
                        source = null;
                        if (i > 0)
                        {
                            source = (Source)set2.iterator().next();
                        }
                    }
                }
            }
        }
        if (source == null && map.containsKey(DeliveryType.MP4))
        {
            source = findBestSourceByBitRate((SourceCollection)map.get(DeliveryType.MP4), DEFAULT_BIT_RATE);
        }
        if (source == null && map.containsKey(DeliveryType.DASH))
        {
            Set set1 = ((SourceCollection)map.get(DeliveryType.DASH)).getSources();
            if (set1 != null && set1.size() > 0)
            {
                source = (Source)set1.iterator().next();
            }
        }
        if (source != null || !map.containsKey(DeliveryType.UNKNOWN)) goto _L2; else goto _L1
_L1:
        Set set = ((SourceCollection)map.get(DeliveryType.UNKNOWN)).getSources();
        if (set == null || set.size() <= 0) goto _L2; else goto _L3
_L3:
        Source source1 = (Source)set.iterator().next();
_L5:
        if (source1 == null || source1.getUrl() == null)
        {
            throw new NoSourceFoundException();
        } else
        {
            return source1;
        }
_L2:
        source1 = source;
        if (true) goto _L5; else goto _L4
_L4:
    }



}
