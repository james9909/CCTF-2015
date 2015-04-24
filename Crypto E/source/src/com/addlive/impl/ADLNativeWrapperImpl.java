// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceView;
import android.view.TextureView;
import com.addlive.Constants;
import com.addlive.impl.cam.ADLCamera;
import com.addlive.impl.cam.ADLCameraHelper;
import com.addlive.impl.cam.ADLCameraSurfaceView;
import com.addlive.impl.cam.ADLCameraTextureView;
import com.addlive.impl.cam.CaptureConfig;
import com.addlive.impl.cb.ADLInjectFrameCb;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.DrawRequest;
import com.addlive.service.InvalidateCb;
import com.addlive.service.MediaConnection;
import com.addlive.service.MediaType;
import com.addlive.service.RenderRequest;
import com.addlive.service.Responder;
import com.addlive.service.User;
import com.addlive.service.VideoCaptureDevice;
import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.ConnectionLostEvent;
import com.addlive.service.listener.DeviceListChangedEvent;
import com.addlive.service.listener.MediaConnTypeChangedEvent;
import com.addlive.service.listener.MediaIssueEvent;
import com.addlive.service.listener.MediaStatsEvent;
import com.addlive.service.listener.MessageEvent;
import com.addlive.service.listener.MicActivityEvent;
import com.addlive.service.listener.MicGainEvent;
import com.addlive.service.listener.SessionReconnectedEvent;
import com.addlive.service.listener.SpeechActivityEvent;
import com.addlive.service.listener.UserStateChangedEvent;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.addlive.impl:
//            ADLNativeWrapper, BaseResultAdapter, ServiceEvent, Log, 
//            EventDescription, ServiceRequest, RuntimeConfig, VoidResultAdapter, 
//            ServiceResponse

public class ADLNativeWrapperImpl
    implements ADLNativeWrapper, ADLInjectFrameCb
{
    class EventTask
        implements Runnable
    {

        private String data;
        final ADLNativeWrapperImpl this$0;

        public void run()
        {
            ServiceEvent serviceevent;
            if (initOptions.isInteractionsLoggingEnabled())
            {
                Log.i(initOptions.getInteractionsLogTag(), (new StringBuilder()).append("[App <---- SDK] Event: ").append(data).toString());
            }
            Log.v("AddLive_SDK", (new StringBuilder()).append("Got an event: ").append(data).toString());
            serviceevent = new ServiceEvent(data);
            if (!serviceevent.getEvent().equals("onUserEvent")) goto _L2; else goto _L1
_L1:
            handleUserEvent(serviceevent);
_L5:
            EventDescription eventdescription = (EventDescription)eventDescriptions.get(serviceevent.getEvent());
            if (eventdescription == null)
            {
                Constructor constructor;
                Object aobj[];
                Object obj;
                Iterator iterator;
                AddLiveServiceListener addliveservicelistener;
                try
                {
                    Log.e("AddLive_SDK", (new StringBuilder()).append("Cannot process an event as the event type is not supported: ").append(serviceevent.getEvent()).toString());
                    return;
                }
                catch (JSONException jsonexception)
                {
                    Log.e("AddLive_SDK", "Cannot process an event as there was a parse error", jsonexception);
                    return;
                }
                catch (InvocationTargetException invocationtargetexception)
                {
                    Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", invocationtargetexception);
                    return;
                }
                catch (InstantiationException instantiationexception)
                {
                    Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", instantiationexception);
                    return;
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    Log.e("AddLive_SDK", "Cannot process an event as the event type is misconfigured", illegalaccessexception);
                    return;
                }
                catch (Throwable throwable)
                {
                    Log.e("AddLive_SDK", "Unknown error passing an event: ", throwable);
                }
                break MISSING_BLOCK_LABEL_369;
            }
            break MISSING_BLOCK_LABEL_245;
_L2:
            if (!serviceevent.getEvent().equals("onMediaStreamEvent")) goto _L4; else goto _L3
_L3:
            handleMediaStreamEvent(serviceevent);
              goto _L5
_L4:
            if (!serviceevent.getEvent().equals("onConnectionLost")) goto _L5; else goto _L6
_L6:
            handleConnectionLostEvent(serviceevent);
              goto _L5
            constructor = eventdescription.eventConstructor;
            aobj = new Object[1];
            aobj[0] = serviceevent.getParams();
            obj = constructor.newInstance(aobj);
            for (iterator = listeners.iterator(); iterator.hasNext(); eventdescription.handlerMethod.invoke(addliveservicelistener, new Object[] {
        obj
    }))
            {
                addliveservicelistener = (AddLiveServiceListener)iterator.next();
            }

        }

        public EventTask(String s)
        {
            this$0 = ADLNativeWrapperImpl.this;
            super();
            data = s;
        }
    }

    static final class MethodName extends Enum
    {

        private static final MethodName $VALUES[];
        public static final MethodName CONNECT;
        public static final MethodName DISCONNECT;
        public static final MethodName GET_VIDEO_CAPTURE_DEVICE;
        public static final MethodName GET_VIDEO_CAPTURE_DEVICE_NAMES;
        public static final MethodName SET_PROPERTY;
        public static final MethodName SET_VIDEO_CAPTURE_DEVICE;
        public static final MethodName STOP_LOCAL_VIDEO;
        public static final MethodName UNKNOWN;
        private String apiName;

        static MethodName fromString(String s)
        {
            MethodName amethodname[] = values();
            int i = amethodname.length;
            for (int j = 0; j < i; j++)
            {
                MethodName methodname = amethodname[j];
                if (methodname.apiName.equals(s))
                {
                    return methodname;
                }
            }

            return UNKNOWN;
        }

        public static MethodName valueOf(String s)
        {
            return (MethodName)Enum.valueOf(com/addlive/impl/ADLNativeWrapperImpl$MethodName, s);
        }

        public static MethodName[] values()
        {
            return (MethodName[])$VALUES.clone();
        }

        static 
        {
            CONNECT = new MethodName("CONNECT", 0, "connect");
            DISCONNECT = new MethodName("DISCONNECT", 1, "disconnect");
            GET_VIDEO_CAPTURE_DEVICE_NAMES = new MethodName("GET_VIDEO_CAPTURE_DEVICE_NAMES", 2, "getVideoCaptureDeviceNames");
            SET_VIDEO_CAPTURE_DEVICE = new MethodName("SET_VIDEO_CAPTURE_DEVICE", 3, "setVideoCaptureDevice");
            GET_VIDEO_CAPTURE_DEVICE = new MethodName("GET_VIDEO_CAPTURE_DEVICE", 4, "getVideoCaptureDevice");
            SET_PROPERTY = new MethodName("SET_PROPERTY", 5, "setProperty");
            STOP_LOCAL_VIDEO = new MethodName("STOP_LOCAL_VIDEO", 6, "stopLocalVideo");
            UNKNOWN = new MethodName("UNKNOWN", 7, "unknown");
            MethodName amethodname[] = new MethodName[8];
            amethodname[0] = CONNECT;
            amethodname[1] = DISCONNECT;
            amethodname[2] = GET_VIDEO_CAPTURE_DEVICE_NAMES;
            amethodname[3] = SET_VIDEO_CAPTURE_DEVICE;
            amethodname[4] = GET_VIDEO_CAPTURE_DEVICE;
            amethodname[5] = SET_PROPERTY;
            amethodname[6] = STOP_LOCAL_VIDEO;
            amethodname[7] = UNKNOWN;
            $VALUES = amethodname;
        }

        private MethodName(String s, int i, String s1)
        {
            super(s, i);
            apiName = s1;
        }
    }

    class ResultTask
        implements Runnable
    {

        private String data;
        final ADLNativeWrapperImpl this$0;

        public void run()
        {
            Log.v("AddLive_SDK", (new StringBuilder()).append("Got a result: ").append(data).toString());
            if (initOptions.isInteractionsLoggingEnabled())
            {
                Log.i(initOptions.getInteractionsLogTag(), (new StringBuilder()).append("[App <---- SDK] Result: ").append(data).toString());
            }
            ServiceResponse serviceresponse;
            BaseResultAdapter baseresultadapter;
            serviceresponse = new ServiceResponse(data);
            baseresultadapter = (BaseResultAdapter)resultHandlers.get(serviceresponse.getId());
            if (baseresultadapter != null)
            {
                try
                {
                    baseresultadapter.handleResponse(serviceresponse);
                    resultHandlers.remove(serviceresponse.getId());
                    return;
                }
                catch (Throwable throwable)
                {
                    Log.e("AddLive_SDK", "Unknown error passing result: ", throwable);
                }
                break MISSING_BLOCK_LABEL_158;
            }
            Log.e("AddLive_SDK", "Cannot pass the result as there is no result handler for request with given id.");
            return;
        }

        public ResultTask(String s)
        {
            this$0 = ADLNativeWrapperImpl.this;
            super();
            data = s;
        }
    }


    private static boolean librariesLoaded = false;
    private Map activeConnections;
    private Map activeRenderers;
    private ADLCamera camera;
    private CaptureConfig captureConfig;
    private Context context;
    private Map eventDescriptions;
    private AtomicInteger idGenerator;
    private PlatformInitOptions initOptions;
    private boolean isPublishingAudio;
    private List listeners;
    private Map nativeRendererIdToInternal;
    private AtomicInteger renderIdGenerator;
    private Map resultHandlers;
    private Handler taskHandler;
    private boolean useLoudSpeaker;

    public ADLNativeWrapperImpl()
    {
        useLoudSpeaker = true;
        isPublishingAudio = false;
        resultHandlers = new HashMap();
        idGenerator = new AtomicInteger(0);
        renderIdGenerator = new AtomicInteger(0);
        listeners = new LinkedList();
        eventDescriptions = new HashMap();
        activeRenderers = new HashMap();
        nativeRendererIdToInternal = new HashMap();
        captureConfig = new CaptureConfig();
        activeConnections = new HashMap();
        loadLibraries(new PlatformInitOptions());
    }

    public ADLNativeWrapperImpl(Context context1, PlatformInitOptions platforminitoptions, Handler handler)
    {
        useLoudSpeaker = true;
        isPublishingAudio = false;
        resultHandlers = new HashMap();
        idGenerator = new AtomicInteger(0);
        renderIdGenerator = new AtomicInteger(0);
        listeners = new LinkedList();
        eventDescriptions = new HashMap();
        activeRenderers = new HashMap();
        nativeRendererIdToInternal = new HashMap();
        captureConfig = new CaptureConfig();
        activeConnections = new HashMap();
        loadLibraries(platforminitoptions);
        context = context1;
        prepareEventDescriptors();
        initOptions = platforminitoptions;
        taskHandler = handler;
    }

    private boolean anyUsersPublishingAudio()
    {
        Iterator iterator;
        boolean flag;
        iterator = activeConnections.values().iterator();
        flag = false;
_L2:
        boolean flag1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator1 = ((MediaConnection)iterator.next()).getUsersInSession().values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_84;
            }
        } while (!((User)iterator1.next()).isAudioPublished());
        flag1 = true;
_L3:
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
        return flag;
        flag1 = flag;
          goto _L3
    }

    private void getVideoCaptureDevice(BaseResultAdapter baseresultadapter)
    {
        String s;
        if (camera != null)
        {
            s = camera.getDevice();
        } else
        {
            s = ADLCameraHelper.getSelectedCam();
        }
        baseresultadapter.getResponder().resultHandler(s);
    }

    private void getVideoCaptureDeviceNames(BaseResultAdapter baseresultadapter)
    {
        if (camera == null)
        {
            camera = new ADLCameraSurfaceView(null, context, captureConfig);
            baseresultadapter.getResponder().resultHandler(camera.getCameraDevices());
            camera = null;
            return;
        } else
        {
            baseresultadapter.getResponder().resultHandler(camera.getCameraDevices());
            return;
        }
    }

    private void handleConnectionLostEvent(ServiceEvent serviceevent)
    {
        try
        {
            String s = serviceevent.getParams().getString("scopeId");
            if (!serviceevent.getParams().getBoolean("willReconnect"))
            {
                activeConnections.remove(s);
            }
            return;
        }
        catch (JSONException jsonexception)
        {
            Log.e("AddLive_SDK", "Cannot process an event within handleMediaStreamEvent as there was a parse error", jsonexception);
        }
    }

    private void handleMediaStreamEvent(ServiceEvent serviceevent)
    {
        String s;
        MediaType mediatype;
        MediaConnection mediaconnection;
        s = serviceevent.getParams().getString("scopeId");
        mediatype = MediaType.fromString(serviceevent.getParams().getString("mediaType"));
        mediaconnection = (MediaConnection)activeConnections.get(s);
        User user;
        if (mediaconnection == null)
        {
            try
            {
                Log.e("AddLive_SDK", (new StringBuilder()).append("Got a media event for unknown scope id ").append(s).toString());
                return;
            }
            catch (JSONException jsonexception)
            {
                Log.e("AddLive_SDK", "Cannot process an event within handleMediaStreamEvent as there was a parse error", jsonexception);
            }
            break MISSING_BLOCK_LABEL_126;
        }
        user = mediaconnection.getUser(Long.valueOf(serviceevent.getParams().getJSONObject("userDetails").getLong("userId")));
        if (user != null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        Log.e("AddLive_SDK", "Got a media event for unknown user");
        return;
        return;
        static class _cls1
        {

            static final int $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[];
            static final int $SwitchMap$com$addlive$service$MediaType[];

            static 
            {
                $SwitchMap$com$addlive$service$MediaType = new int[MediaType.values().length];
                try
                {
                    $SwitchMap$com$addlive$service$MediaType[MediaType.AUDIO.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$addlive$service$MediaType[MediaType.VIDEO.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$addlive$service$MediaType[MediaType.SCREEN.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName = new int[MethodName.values().length];
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.DISCONNECT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.GET_VIDEO_CAPTURE_DEVICE_NAMES.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.GET_VIDEO_CAPTURE_DEVICE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.SET_VIDEO_CAPTURE_DEVICE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.SET_PROPERTY.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName[MethodName.STOP_LOCAL_VIDEO.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror8)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.addlive.service.MediaType[mediatype.ordinal()];
        JVM INSTR tableswitch 1 3: default 164
    //                   1 187
    //                   2 211
    //                   3 256;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_256;
_L1:
        Log.e("AddLive_SDK", "Got an unknown media type");
_L5:
        mediaconnection.addUser(user);
        updateAudioSettings();
        return;
_L2:
        user.setAudioPublished(serviceevent.getParams().getJSONObject("userDetails").getBoolean("audioPublished"));
          goto _L5
_L3:
        user.setVideoPublished(serviceevent.getParams().getJSONObject("userDetails").getBoolean("videoPublished"));
        user.setVideoSinkId(serviceevent.getParams().getJSONObject("userDetails").getString("videoSinkId"));
          goto _L5
        user.setScreenPublished(serviceevent.getParams().getJSONObject("userDetails").getBoolean("screenPublished"));
        user.setScreenSinkId(serviceevent.getParams().getJSONObject("userDetails").getString("screenSinkId"));
          goto _L5
    }

    private void handleUserEvent(ServiceEvent serviceevent)
    {
        MediaConnection mediaconnection;
        try
        {
            String s = serviceevent.getParams().getString("scopeId");
            mediaconnection = (MediaConnection)activeConnections.get(s);
        }
        catch (JSONException jsonexception)
        {
            Log.e("AddLive_SDK", "Cannot process an event within handleUserEvent as there was a parse error", jsonexception);
            return;
        }
        if (mediaconnection == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (!serviceevent.getParams().getJSONObject("userDetails").getBoolean("isConnected"))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        mediaconnection.addUser(new User(serviceevent.getParams().getJSONObject("userDetails")));
_L2:
        updateAudioSettings();
        return;
        mediaconnection.removeUser(Long.valueOf(serviceevent.getParams().getJSONObject("userDetails").getLong("userId")));
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void invalidate(int i)
    {
        RenderRequest renderrequest = (RenderRequest)activeRenderers.get(Integer.valueOf(i));
        if (renderrequest != null)
        {
            renderrequest.getInvalidateCb().invalidate();
        }
    }

    private boolean isPublishingAudio()
    {
        for (Iterator iterator = activeConnections.values().iterator(); iterator.hasNext();)
        {
            if (((MediaConnection)iterator.next()).isLocalUserPublishingAudio())
            {
                return true;
            }
        }

        return false;
    }

    private native void jniDraw(DrawRequest drawrequest);

    private native int jniInitPlatform(Context context1, PlatformInitOptions platforminitoptions);

    private native void jniInjectCameraFrame(byte abyte0[], int i, int j, int k, int l, int i1, long l1);

    private native int jniInvoke(String s);

    private native boolean jniIsCPUSupported();

    private native void jniReleasePlatform();

    private native int jniRenderSink(RenderRequest renderrequest);

    private native int jniStopRender(int i);

    private static void loadLibraries(PlatformInitOptions platforminitoptions)
    {
        if (librariesLoaded)
        {
            return;
        }
        String s;
        try
        {
            s = platforminitoptions.getLibName();
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            Log.v("AddLive_SDK", (new StringBuilder()).append("Cannot initialize the AddLive SDK as the native components are not available. When compiling the application, make sure that the libstlport_shared.so, libwebrtc_voice and libAddLive${VERSION} are present in the PROJECT_ROOT/libs/armeabi-v7a directory. Alternatively you may be using a different version of the native components. This Java bindings can work only with the version ").append(Constants.SDK_VERSION()).append(" of the AddLive SDK.").toString());
            throw unsatisfiedlinkerror;
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.isEmpty()) goto _L2; else goto _L3
_L3:
        System.loadLibrary(s);
_L5:
        librariesLoaded = true;
        return;
_L2:
        System.loadLibrary((new StringBuilder()).append("AddLive").append(Constants.SDK_VERSION()).toString());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void onEvent(String s)
    {
        taskHandler.post(new EventTask(s));
    }

    private void onResult(String s)
    {
        taskHandler.post(new ResultTask(s));
    }

    private void prepareEventDescriptor(Class class1, String s)
    {
        Method method = com/addlive/service/listener/AddLiveServiceListener.getMethod(s, new Class[] {
            class1
        });
        Constructor constructor = class1.getConstructor(new Class[] {
            org/json/JSONObject
        });
        eventDescriptions.put(s, new EventDescription(method, constructor));
    }

    private void prepareEventDescriptors()
    {
        try
        {
            prepareEventDescriptor(com/addlive/service/listener/VideoFrameSizeChangedEvent, "onVideoFrameSizeChanged");
            prepareEventDescriptor(com/addlive/service/listener/ConnectionLostEvent, "onConnectionLost");
            prepareEventDescriptor(com/addlive/service/listener/SessionReconnectedEvent, "onSessionReconnected");
            prepareEventDescriptor(com/addlive/service/listener/UserStateChangedEvent, "onUserEvent");
            prepareEventDescriptor(com/addlive/service/listener/UserStateChangedEvent, "onMediaStreamEvent");
            prepareEventDescriptor(com/addlive/service/listener/MicActivityEvent, "onMicActivity");
            prepareEventDescriptor(com/addlive/service/listener/MicGainEvent, "onMicGain");
            prepareEventDescriptor(com/addlive/service/listener/DeviceListChangedEvent, "onDeviceListChanged");
            prepareEventDescriptor(com/addlive/service/listener/MediaStatsEvent, "onMediaStats");
            prepareEventDescriptor(com/addlive/service/listener/MessageEvent, "onMessage");
            prepareEventDescriptor(com/addlive/service/listener/MediaConnTypeChangedEvent, "onMediaConnTypeChanged");
            prepareEventDescriptor(com/addlive/service/listener/MediaIssueEvent, "onMediaIssue");
            prepareEventDescriptor(com/addlive/service/listener/SpeechActivityEvent, "onSpeechActivity");
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            nosuchmethodexception.printStackTrace();
        }
    }

    private boolean setProperty(BaseResultAdapter baseresultadapter, ServiceRequest servicerequest)
    {
        String s;
        String s1;
        try
        {
            s = servicerequest.getParams().getString(0);
            s1 = servicerequest.getParams().getString(1);
        }
        catch (JSONException jsonexception)
        {
            baseresultadapter.getResponder().errHandler(1002, "Invalid key or value");
            return true;
        }
        if ("global.dev.audio.androidAudioStream".equals(s))
        {
            RuntimeConfig.AUDIO_STREAM_TYPE = Integer.parseInt(s1);
            baseresultadapter.getResponder().resultHandler(null);
            return true;
        }
        if (s.startsWith("global.dev.camera."))
        {
            int i = captureConfig.processProperty(s, s1);
            if (i == 0)
            {
                baseresultadapter.getResponder().resultHandler(null);
                return true;
            } else
            {
                baseresultadapter.getResponder().errHandler(i, "Failed to configure property");
                return true;
            }
        } else
        {
            return false;
        }
    }

    private void setVideoCaptureDevice(BaseResultAdapter baseresultadapter, ServiceRequest servicerequest)
    {
        String s;
        try
        {
            s = servicerequest.getParams().getString(0);
            if (camera != null)
            {
                camera.setDevice(s);
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Got an error setting video capture device", exception);
            baseresultadapter.getResponder().errHandler(4001, (new StringBuilder()).append("Failed to set device: ").append(exception).toString());
            return;
        }
        ADLCameraHelper.setSelectedCam(s);
        return;
    }

    private boolean specialHandlingMaybe(BaseResultAdapter baseresultadapter, ServiceRequest servicerequest)
    {
        MethodName methodname = MethodName.fromString(servicerequest.getMethod());
        _cls1..SwitchMap.com.addlive.impl.ADLNativeWrapperImpl.MethodName[methodname.ordinal()];
        JVM INSTR tableswitch 1 6: default 138
    //                   1 56
    //                   2 91
    //                   3 98
    //                   4 105
    //                   5 113
    //                   6 124;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        activeConnections.remove(servicerequest.getParams().getString(0));
        Exception exception;
        return true;
_L3:
        try
        {
            getVideoCaptureDeviceNames(baseresultadapter);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Encountered an error while trying to process API call on Java binding layer", exception);
            return true;
        }
        return false;
_L4:
        getVideoCaptureDevice(baseresultadapter);
        return false;
_L5:
        setVideoCaptureDevice(baseresultadapter, servicerequest);
        return true;
_L6:
        if (setProperty(baseresultadapter, servicerequest))
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L7:
        if (!initOptions.useExternalVideoInput())
        {
            stopLocalVideo();
        }
        return true;
    }

    private void stopLocalVideo()
    {
        if (camera != null)
        {
            camera.stop();
            camera.dispose();
            camera = null;
        }
    }

    public void addServiceListener(AddLiveServiceListener addliveservicelistener)
    {
        listeners.add(addliveservicelistener);
    }

    public void draw(DrawRequest drawrequest)
    {
        jniDraw(drawrequest);
    }

    public Map getActiveConnections()
    {
        return activeConnections;
    }

    public void initCamOnNative()
    {
        ServiceRequest servicerequest = new ServiceRequest("setVideoCaptureDevice");
        servicerequest.getParams().put(VideoCaptureDevice.FRONT_CAMERA.getId());
        String s = Integer.toString(idGenerator.getAndIncrement());
        servicerequest.setId(s);
        resultHandlers.put(s, new VoidResultAdapter(null));
        try
        {
            jniInvoke(servicerequest.toJSON());
            return;
        }
        catch (JSONException jsonexception)
        {
            Log.e("AddLive_SDK", "Failed to init cam on native: ", jsonexception);
        }
    }

    public int initPlatform()
    {
        return jniInitPlatform(context, initOptions);
    }

    public void injectFrame(byte abyte0[], int i, int j, int k, int l, int i1, long l1)
    {
        jniInjectCameraFrame(abyte0, i, j, k, l, i1, l1);
    }

    public void invoke(BaseResultAdapter baseresultadapter, ServiceRequest servicerequest)
    {
        if (initOptions.isInteractionsLoggingEnabled())
        {
            Log.i(initOptions.getInteractionsLogTag(), (new StringBuilder()).append("[App ----> SDK] Call: ").append(servicerequest.toJSON()).toString());
        }
        if (!specialHandlingMaybe(baseresultadapter, servicerequest))
        {
            return;
        }
        int i;
        String s = Integer.toString(idGenerator.getAndIncrement());
        servicerequest.setId(s);
        resultHandlers.put(s, baseresultadapter);
        if (servicerequest.toJSON() == null)
        {
            break MISSING_BLOCK_LABEL_181;
        }
        i = jniInvoke(servicerequest.toJSON());
        if (i != 0)
        {
            try
            {
                ServiceResponse serviceresponse = new ServiceResponse();
                serviceresponse.setStatus(false);
                serviceresponse.setErrorCode(i);
                serviceresponse.setErrorMessage("Invocation error. This is due to an internal platform error");
                baseresultadapter.handleResponse(serviceresponse);
                return;
            }
            catch (JSONException jsonexception)
            {
                baseresultadapter.getResponder().errHandler(1006, (new StringBuilder()).append("Failed to generate service request. This is due to an internal platform error. Please pass this error info to AddLive. ").append(jsonexception.toString()).toString());
            }
            return;
        }
        break MISSING_BLOCK_LABEL_192;
        throw new JSONException("JSON Request is null.");
    }

    public boolean isCPUSupported()
    {
        return jniIsCPUSupported();
    }

    public void releasePlatform()
    {
        try
        {
            stopLocalVideo();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        resetAudioSettings();
        jniReleasePlatform();
    }

    public void removeServiceListener(AddLiveServiceListener addliveservicelistener)
    {
        listeners.remove(addliveservicelistener);
    }

    public int renderSink(RenderRequest renderrequest)
    {
        int i = renderIdGenerator.getAndIncrement();
        renderrequest.setRendererId(i);
        int j = jniRenderSink(renderrequest);
        nativeRendererIdToInternal.put(Integer.valueOf(j), Integer.valueOf(i));
        activeRenderers.put(Integer.valueOf(i), renderrequest);
        return j;
    }

    public void reportDisconnect(String s)
    {
        activeConnections.remove(s);
    }

    public void resetAudioSettings()
    {
        ((AudioManager)context.getSystemService("audio")).setMode(0);
    }

    public void setAudioPublishingState(boolean flag, String s)
    {
        if (activeConnections.get(s) != null)
        {
            ((MediaConnection)activeConnections.get(s)).setLocalUserIsPublishingAudio(flag);
        }
    }

    public void setLoudSpeaker(boolean flag)
    {
        useLoudSpeaker = flag;
    }

    public void startLocalVideo(BaseResultAdapter baseresultadapter, SurfaceView surfaceview)
    {
        if (initOptions.useExternalVideoInput())
        {
            break MISSING_BLOCK_LABEL_66;
        }
        try
        {
            if (camera != null)
            {
                baseresultadapter.getResponder().errHandler(1010, "Cannot start local video as it is already active. Stop previous local video session in order to change the view rendering it");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", (new StringBuilder()).append("Got exception starting local video: ").append(exception.getMessage()).toString());
            baseresultadapter.getResponder().errHandler(4001, (new StringBuilder()).append("Failed to start camera: ").append(exception).toString());
            return;
        }
        camera = new ADLCameraSurfaceView(this, context, captureConfig);
        camera.start(surfaceview.getHolder());
        invoke(baseresultadapter, new ServiceRequest("startLocalVideo"));
        return;
    }

    public void startLocalVideo(BaseResultAdapter baseresultadapter, TextureView textureview)
    {
        if (initOptions.useExternalVideoInput())
        {
            break MISSING_BLOCK_LABEL_63;
        }
        try
        {
            if (camera != null)
            {
                baseresultadapter.getResponder().errHandler(1010, "Cannot start local video as it is already active. Stop previous local video session in order to change the view rendering it");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("AddLive_SDK", "Got exception starting local video", exception);
            baseresultadapter.getResponder().errHandler(4001, (new StringBuilder()).append("Failed to start camera: ").append(exception).toString());
            return;
        }
        camera = new ADLCameraTextureView(this, context, captureConfig);
        camera.start(textureview);
        invoke(baseresultadapter, new ServiceRequest("startLocalVideo"));
        return;
    }

    public void stopRender(int i)
    {
        jniStopRender(i);
        Integer integer = (Integer)nativeRendererIdToInternal.get(Integer.valueOf(i));
        if (integer != null)
        {
            activeRenderers.remove(integer);
        }
    }

    public void updateAudioSettings()
    {
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        if (anyUsersPublishingAudio() || isPublishingAudio())
        {
            audiomanager.setMode(3);
            boolean flag = useLoudSpeaker;
            boolean flag1 = false;
            if (flag)
            {
                boolean flag2 = audiomanager.isWiredHeadsetOn();
                flag1 = false;
                if (!flag2)
                {
                    flag1 = true;
                }
            }
            audiomanager.setSpeakerphoneOn(flag1);
            return;
        } else
        {
            audiomanager.setMode(0);
            return;
        }
    }








}
