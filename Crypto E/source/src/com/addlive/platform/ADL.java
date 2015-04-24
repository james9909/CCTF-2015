// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.platform;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.addlive.Constants;
import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLNativeWrapperImpl;
import com.addlive.impl.ADLServiceImpl;
import com.addlive.impl.DeviceCompatibilityTest;
import com.addlive.impl.Log;
import com.addlive.service.AddLiveService;
import com.addlive.service.Responder;
import com.addlive.service.ResponderAdapter;

// Referenced classes of package com.addlive.platform:
//            InitState, PlatformInitOptions, InitStateChangedEvent, PlatformInitListener, 
//            DeviceSupportLevel

public class ADL
{

    private static final String DEVICE_NAME_KEY = "global.service.userDevice";
    private static final String ENDPOINT_RESOLVER_KEY = "global.service.streamer.endpointResolver";
    private static volatile InitState INIT_STATE;
    private static volatile ADL INSTANCE;
    private static Handler taskHandler;
    private static HandlerThread taskThread;
    private PlatformInitListener initListener;
    private PlatformInitOptions initOptions;
    private ADLNativeWrapper nativePlatform;
    private Responder nullResponder;
    private volatile AddLiveService service;

    private ADL()
    {
        nullResponder = new ResponderAdapter();
    }

    public static DeviceSupportLevel assesDeviceCompatibility()
    {
        return DeviceCompatibilityTest.assessCompatibility();
    }

    public static InitState getInitState()
    {
        return INIT_STATE;
    }

    public static AddLiveService getService()
    {
        if (INSTANCE == null)
        {
            throw new IllegalStateException("ADL not initialized. Initialize the platform first");
        } else
        {
            return INSTANCE.service;
        }
    }

    public static void init(PlatformInitListener platforminitlistener, PlatformInitOptions platforminitoptions, Context context)
    {
        com/addlive/platform/ADL;
        JVM INSTR monitorenter ;
        if (INSTANCE == null)
        {
            INSTANCE = new ADL();
            taskThread = new HandlerThread("TaskHandler");
            taskThread.start();
            taskHandler = new Handler(taskThread.getLooper());
        }
        INSTANCE.initPlatform(platforminitlistener, platforminitoptions, context);
        com/addlive/platform/ADL;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void initCam()
    {
        nativePlatform.initCamOnNative();
    }

    private void initPlatform(final PlatformInitListener listener, final PlatformInitOptions options, final Context context)
    {
        taskHandler.post(new Runnable() {

            final ADL this$0;
            final Context val$context;
            final PlatformInitListener val$listener;
            final PlatformInitOptions val$options;

            public void run()
            {
                if (nativePlatform != null)
                {
                    listener.onInitStateChanged(new InitStateChangedEvent(1006, "Platform already initialized", InitState.ERROR));
                    return;
                }
                ADL.INIT_STATE = InitState.INITIALIZING;
                Log.setEnabled(options.isConsoleLoggingEnabled());
                int i;
                initOptions = options;
                initListener = listener;
                nativePlatform = new ADLNativeWrapperImpl(context, options, ADL.taskHandler);
                i = nativePlatform.initPlatform();
                if (i == 0)
                {
                    try
                    {
                        service = new ADLServiceImpl(nativePlatform, context, options.useExternalVideoInput());
                        validateVersion();
                        return;
                    }
                    catch (UnsatisfiedLinkError unsatisfiedlinkerror)
                    {
                        initListener.onInitStateChanged(new InitStateChangedEvent(1009, "Failed to load the AddLive native components ", InitState.ERROR));
                    }
                    return;
                }
                listener.onInitStateChanged(new InitStateChangedEvent(i, "", InitState.ERROR));
                return;
            }

            
            {
                this$0 = ADL.this;
                listener = platforminitlistener;
                options = platforminitoptions;
                context = context1;
                super();
            }
        });
    }

    public static Responder r()
    {
        if (INSTANCE == null)
        {
            throw new IllegalStateException("ADL not initialized. Initialize the platform first");
        } else
        {
            return INSTANCE.nullResponder;
        }
    }

    public static void release()
    {
        com/addlive/platform/ADL;
        JVM INSTR monitorenter ;
        ADL adl = INSTANCE;
        if (adl != null) goto _L2; else goto _L1
_L1:
        com/addlive/platform/ADL;
        JVM INSTR monitorexit ;
        return;
_L2:
        INSTANCE.releasePlatform();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void releasePlatform()
    {
        if (nativePlatform == null)
        {
            Log.w("AddLive_SDK", "Trying to release already released platform");
        }
        taskHandler.post(new Runnable() {

            final ADL this$0;

            public void run()
            {
                if (nativePlatform == null)
                {
                    return;
                } else
                {
                    ADL.INIT_STATE = InitState.REALEASING;
                    ((ADLServiceImpl)service).release();
                    nativePlatform.releasePlatform();
                    nativePlatform = null;
                    ADL.INIT_STATE = InitState.NOT_INITIALIZED;
                    return;
                }
            }

            
            {
                this$0 = ADL.this;
                super();
            }
        });
    }

    private void setApplicationIdMaybe()
    {
        initCam();
        if (initOptions.getApplicationId() == null)
        {
            initListener.onInitStateChanged(new InitStateChangedEvent(1002, "Application id property not given", InitState.ERROR));
            return;
        } else
        {
            Responder responder = new Responder() {

                final ADL this$0;

                public void errHandler(int i, String s)
                {
                    initListener.onInitStateChanged(new InitStateChangedEvent(i, (new StringBuilder()).append("Failed to set application id due to: ").append(s).toString(), InitState.ERROR));
                }

                public volatile void resultHandler(Object obj)
                {
                    resultHandler((Void)obj);
                }

                public void resultHandler(Void void1)
                {
                    setStreamerEndpointResolvers();
                }

            
            {
                this$0 = ADL.this;
                super();
            }
            };
            ((ADLServiceImpl)service).setApplicationId(responder, initOptions.getApplicationId());
            return;
        }
    }

    private void setStreamerEndpointResolvers()
    {
        Responder responder = new Responder() {

            final ADL this$0;

            public void errHandler(int i, String s1)
            {
                initListener.onInitStateChanged(new InitStateChangedEvent(i, (new StringBuilder()).append("Failed to set application id due to: ").append(s1).toString(), InitState.ERROR));
            }

            public volatile void resultHandler(Object obj)
            {
                resultHandler((Void)obj);
            }

            public void resultHandler(Void void1)
            {
                ADL.INIT_STATE = InitState.INITIALIZED;
                initListener.onInitStateChanged(new InitStateChangedEvent(0, "", InitState.INITIALIZED));
            }

            
            {
                this$0 = ADL.this;
                super();
            }
        };
        service.setProperty(r(), "global.service.userDevice", (new StringBuilder()).append(Build.MODEL).append("|").append(android.os.Build.VERSION.RELEASE).toString());
        String s = initOptions.getStreamerEndpointResolver();
        if (s == null)
        {
            responder.resultHandler(null);
            return;
        } else
        {
            service.setProperty(responder, "global.service.streamer.endpointResolver", s);
            return;
        }
    }

    private void validateVersion()
    {
        service.getVersion(new Responder() {

            final ADL this$0;

            public void errHandler(int i, String s)
            {
                initListener.onInitStateChanged(new InitStateChangedEvent(1006, "Failed to validate version of the native component due to an internal error.", InitState.ERROR));
                initListener = null;
            }

            public volatile void resultHandler(Object obj)
            {
                resultHandler((String)obj);
            }

            public void resultHandler(String s)
            {
                if (s.equals(Constants.SDK_VERSION()))
                {
                    setApplicationIdMaybe();
                    return;
                } else
                {
                    initListener.onInitStateChanged(new InitStateChangedEvent(1006, (new StringBuilder()).append("The version of the native component mismatch the Java bindings and thus the platform cannot be used. Please verify your libraries. This error should never reach the production environments. Java bindings version: ").append(Constants.SDK_VERSION()).append(" native component version: ").append(s).toString(), InitState.ERROR));
                    initListener = null;
                    return;
                }
            }

            
            {
                this$0 = ADL.this;
                super();
            }
        });
    }

    static 
    {
        INIT_STATE = InitState.NOT_INITIALIZED;
    }



/*
    static ADLNativeWrapper access$002(ADL adl, ADLNativeWrapper adlnativewrapper)
    {
        adl.nativePlatform = adlnativewrapper;
        return adlnativewrapper;
    }

*/


/*
    static InitState access$102(InitState initstate)
    {
        INIT_STATE = initstate;
        return initstate;
    }

*/


/*
    static PlatformInitOptions access$202(ADL adl, PlatformInitOptions platforminitoptions)
    {
        adl.initOptions = platforminitoptions;
        return platforminitoptions;
    }

*/



/*
    static PlatformInitListener access$302(ADL adl, PlatformInitListener platforminitlistener)
    {
        adl.initListener = platforminitlistener;
        return platforminitlistener;
    }

*/




/*
    static AddLiveService access$502(ADL adl, AddLiveService addliveservice)
    {
        adl.service = addliveservice;
        return addliveservice;
    }

*/



}
