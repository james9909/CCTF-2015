// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.platform;

import android.content.Context;
import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLNativeWrapperImpl;
import com.addlive.impl.ADLServiceImpl;
import com.addlive.impl.Log;

// Referenced classes of package com.addlive.platform:
//            ADL, InitStateChangedEvent, InitState, PlatformInitListener, 
//            PlatformInitOptions

class val.context
    implements Runnable
{

    final ADL this$0;
    final Context val$context;
    final PlatformInitListener val$listener;
    final PlatformInitOptions val$options;

    public void run()
    {
        if (ADL.access$000(ADL.this) != null)
        {
            val$listener.onInitStateChanged(new InitStateChangedEvent(1006, "Platform already initialized", InitState.ERROR));
            return;
        }
        ADL.access$102(InitState.INITIALIZING);
        Log.setEnabled(val$options.isConsoleLoggingEnabled());
        int i;
        ADL.access$202(ADL.this, val$options);
        ADL.access$302(ADL.this, val$listener);
        ADL.access$002(ADL.this, new ADLNativeWrapperImpl(val$context, val$options, ADL.access$400()));
        i = ADL.access$000(ADL.this).initPlatform();
        if (i == 0)
        {
            try
            {
                ADL.access$502(ADL.this, new ADLServiceImpl(ADL.access$000(ADL.this), val$context, val$options.useExternalVideoInput()));
                ADL.access$600(ADL.this);
                return;
            }
            catch (UnsatisfiedLinkError unsatisfiedlinkerror)
            {
                ADL.access$300(ADL.this).onInitStateChanged(new InitStateChangedEvent(1009, "Failed to load the AddLive native components ", InitState.ERROR));
            }
            return;
        }
        val$listener.onInitStateChanged(new InitStateChangedEvent(i, "", InitState.ERROR));
        return;
    }

    rmInitOptions()
    {
        this$0 = final_adl;
        val$listener = platforminitlistener;
        val$options = platforminitoptions;
        val$context = Context.this;
        super();
    }
}
