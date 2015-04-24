// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;

import android.os.HandlerThread;
import android.view.Surface;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.RecordingSizeAnalytics;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import com.snapchat.android.camera.model.VideoRecordingModel;
import com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider;
import com.snapchat.android.camera.videocamera.VideoCameraHandler;
import com.snapchat.android.model.StudySettings;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.cache.CacheType;
import com.snapchat.android.util.cache.FileUtils;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;
import java.io.File;
import java.util.List;

// Referenced classes of package com.snapchat.android.camera.controller:
//            FlashController

public class VideoRecordingController
{

    protected VideoRecordingModel a;
    protected CameraModel b;
    protected FlashModel c;
    protected DefaultVideoResolutionProvider d;
    private final FileUtils e;
    private final RecordingSizeAnalytics f;

    protected VideoRecordingController()
    {
        this(new FileUtils(), new RecordingSizeAnalytics());
    }

    protected VideoRecordingController(FileUtils fileutils, RecordingSizeAnalytics recordingsizeanalytics)
    {
        SnapchatApplication.e().a(this);
        e = fileutils;
        f = recordingsizeanalytics;
    }

    private void a(android.hardware.Camera.Parameters parameters)
    {
        List list;
        if (!b.e())
        {
            if ((list = parameters.getSupportedFocusModes()) != null && list.contains("continuous-video"))
            {
                parameters.setFocusMode("continuous-video");
                return;
            }
        }
    }

    private void a(FlashController flashcontroller)
    {
label0:
        {
            if (c.a())
            {
                if (!b.e())
                {
                    break label0;
                }
                flashcontroller.a(true);
            }
            return;
        }
        flashcontroller.b(true);
    }

    private void a(String s)
    {
        if (ReleaseManager.e())
        {
            BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, s));
            return;
        } else
        {
            Timber.e("VideoRecordingController", s, new Object[0]);
            return;
        }
    }

    private void b(android.hardware.Camera.Parameters parameters)
    {
        if (ApiHelper.d && parameters.isVideoStabilizationSupported())
        {
            parameters.setVideoStabilization(true);
        }
    }

    protected File a()
    {
        boolean flag = e.a();
        File file = null;
        if (flag)
        {
            if (Storage.b() == null)
            {
                Storage.a(SnapchatApplication.e().getCacheDir(), SnapchatApplication.e().getExternalCacheDir());
            }
            file = (new FileUtils()).a(CacheType.j);
        }
        return file;
    }

    protected void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        android.hardware.Camera.Parameters parameters = cameraproxy.c();
        if (parameters == null)
        {
            return;
        }
        a(parameters);
        if (StudySettings.a().a("USE_VIDEO_STABILIZATION", "option", "on").equals("on"))
        {
            b(parameters);
        }
        cameraproxy.a(parameters);
    }

    public void a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoRecordingCallback videorecordingcallback, FlashController flashcontroller)
    {
        a(videorecordingcallback, flashcontroller, false);
    }

    public void a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoRecordingCallback videorecordingcallback, FlashController flashcontroller, boolean flag)
    {
        VideoCameraHandler videocamerahandler = a.b();
        if (videocamerahandler != null)
        {
            videocamerahandler.a(videorecordingcallback);
            if (flag)
            {
                videocamerahandler.d();
            }
        }
        if (b.e())
        {
            flashcontroller.a(false);
        }
    }

    public boolean a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoRecordingCallback videorecordingcallback, FlashController flashcontroller, Resolution resolution, Surface surface)
    {
        File file = a();
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = b.l();
        VideoCameraHandler videocamerahandler = a.b();
        if (cameraproxy == null || videocamerahandler == null || file == null)
        {
            if (file == null)
            {
                videorecordingcallback.a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.a);
            } else
            {
                videorecordingcallback.a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.e);
            }
            return false;
        }
        a.a(true);
        a(cameraproxy);
        a(flashcontroller);
        cameraproxy.a(null);
        try
        {
            cameraproxy.d();
        }
        catch (RuntimeException runtimeexception)
        {
            videorecordingcallback.a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.b);
            return false;
        }
        if (surface != null)
        {
            videocamerahandler.a(surface);
        }
        videocamerahandler.a(videorecordingcallback, resolution, file);
        f.a(resolution);
        return true;
    }

    public void b()
    {
        if (b.l() == null)
        {
            a("Null camera when initializing VideoCameraHandler");
            return;
        } else
        {
            c();
            HandlerThread handlerthread = new HandlerThread("Video Recording Handler Thread");
            handlerthread.start();
            a.a(new VideoCameraHandler(handlerthread.getLooper()));
            return;
        }
    }

    public void c()
    {
        VideoCameraHandler videocamerahandler = a.b();
        if (videocamerahandler != null)
        {
            videocamerahandler.a();
        }
        a.a(null);
    }
}
