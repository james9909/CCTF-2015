// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.management;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.management:
//            BrightcovePluginManager

public class this._cls0
    implements EventListener
{

    final BrightcovePluginManager this$0;

    public void processEvent(Event event)
    {
        if (event.properties.containsKey("pluginName"))
        {
            String s = (String)event.properties.get("pluginName");
            Log.v(BrightcovePluginManager.access$000(), (new StringBuilder()).append("OnRegisterPluginListener: plugin: ").append(s).toString());
            if (!BrightcovePluginManager.access$100(BrightcovePluginManager.this).contains(s))
            {
                BrightcovePluginManager.access$100(BrightcovePluginManager.this).add(s);
            }
        }
    }

    protected ()
    {
        this$0 = BrightcovePluginManager.this;
        super();
    }
}
