// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;

import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.IncompatibleVideoTypeFinder;
import com.snapchat.android.analytics.handledexceptions.IncompatibleVideoRecordedException;
import com.snapchat.android.camera.VideoCameraUtils;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.util.DeviceExceptions;
import com.snapchat.android.camera.videocamera.recordingpreferences.VideoRecordingPreferences;
import com.snapchat.android.camera.videocamera.recordingpreferences.VideoRecordingPreferencesFactory;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.WaitDoneHandler;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.snapchat.android.camera.videocamera:
//            ScCamcorderProfileProvider

public class VideoCameraHandler extends WaitDoneHandler
{
    class OnInfoCallbackMessenger
        implements android.media.MediaRecorder.OnInfoListener
    {

        VideoRecordingCallback a;
        final VideoCameraHandler b;

        public void onInfo(MediaRecorder mediarecorder, int k, int l)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(k);
            aobj[1] = Integer.valueOf(l);
            Timber.c("VideoCameraHandler", "Video InfoListener: Info event #[%d, %d] has occured", aobj);
            switch (k)
            {
            default:
                return;

            case 800: 
            case 801: 
                ThreadUtils.a(new Runnable(this) {

                    final OnInfoCallbackMessenger a;

                    public void run()
                    {
                        a.a.v();
                    }

            
            {
                a = oninfocallbackmessenger;
                super();
            }
                });
                break;
            }
        }

        public OnInfoCallbackMessenger(VideoRecordingCallback videorecordingcallback)
        {
            b = VideoCameraHandler.this;
            super();
            a = videorecordingcallback;
        }
    }

    public static final class VideoFailureType extends Enum
    {

        public static final VideoFailureType a;
        public static final VideoFailureType b;
        public static final VideoFailureType c;
        public static final VideoFailureType d;
        public static final VideoFailureType e;
        public static final VideoFailureType f;
        private static final VideoFailureType h[];
        private int g;

        public static VideoFailureType valueOf(String s)
        {
            return (VideoFailureType)Enum.valueOf(com/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType, s);
        }

        public static VideoFailureType[] values()
        {
            return (VideoFailureType[])h.clone();
        }

        public int a()
        {
            return g;
        }

        static 
        {
            a = new VideoFailureType("VIDEO_STORAGE_EXCEPTION", 0, 0);
            b = new VideoFailureType("CAMERA_UNLOCK_EXCEPTION", 1, 1);
            c = new VideoFailureType("EXCEPTION_ON_START", 2, 2);
            d = new VideoFailureType("EXCEPTION_ON_STOP", 3, 3);
            e = new VideoFailureType("INITIALIZATION_ERROR", 4, 4);
            f = new VideoFailureType("NO_SURFACE_PROVIDED", 5, 5);
            VideoFailureType avideofailuretype[] = new VideoFailureType[6];
            avideofailuretype[0] = a;
            avideofailuretype[1] = b;
            avideofailuretype[2] = c;
            avideofailuretype[3] = d;
            avideofailuretype[4] = e;
            avideofailuretype[5] = f;
            h = avideofailuretype;
        }

        private VideoFailureType(String s, int k, int l)
        {
            super(s, k);
            g = l;
        }
    }

    public static interface VideoRecordingCallback
    {

        public abstract void a(Uri uri);

        public abstract void a(VideoFailureType videofailuretype);

        public abstract void u();

        public abstract void v();
    }


    protected File a;
    protected final MediaRecorder b;
    ScCamcorderProfileProvider c;
    CameraModel d;
    ExceptionReporter e;
    private final TranscodingPreferencesWrapper f;
    private Surface g;
    private long h;
    private final IncompatibleVideoTypeFinder i;
    private final CameraEventAnalytics j;

    public VideoCameraHandler(Looper looper)
    {
        this(looper, new MediaRecorder(), new IncompatibleVideoTypeFinder(), TranscodingPreferencesWrapper.a(), CameraEventAnalytics.a());
    }

    protected VideoCameraHandler(Looper looper, MediaRecorder mediarecorder, IncompatibleVideoTypeFinder incompatiblevideotypefinder, TranscodingPreferencesWrapper transcodingpreferenceswrapper, CameraEventAnalytics cameraeventanalytics)
    {
        super(looper);
        SnapchatApplication.e().a(this);
        b = mediarecorder;
        i = incompatiblevideotypefinder;
        f = transcodingpreferenceswrapper;
        j = cameraeventanalytics;
    }

    private void a(VideoRecordingCallback videorecordingcallback, VideoFailureType videofailuretype)
    {
        if (videorecordingcallback == null)
        {
            return;
        } else
        {
            ThreadUtils.a(new Runnable(videorecordingcallback, videofailuretype) {

                final VideoRecordingCallback a;
                final VideoFailureType b;
                final VideoCameraHandler c;

                public void run()
                {
                    try
                    {
                        a.a(b);
                        return;
                    }
                    catch (IllegalStateException illegalstateexception)
                    {
                        Timber.e("VideoCameraHandler", (new StringBuilder()).append("Callback attempted illegally: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
                    }
                }

            
            {
                c = VideoCameraHandler.this;
                a = videorecordingcallback;
                b = videofailuretype;
                super();
            }
            });
            return;
        }
    }

    private boolean e()
    {
        try
        {
            Timber.c("VideoCameraHandler", "Video Recorder: Starting...", new Object[0]);
            b.start();
            Timber.c("VideoCameraHandler", "Video Recorder: Started successfully!", new Object[0]);
            h = SystemClock.elapsedRealtime();
        }
        catch (RuntimeException runtimeexception)
        {
            Timber.c("VideoCameraHandler", (new StringBuilder()).append("Video Recorder: RuntimeException when calling start(): ").append(runtimeexception).toString(), new Object[0]);
            return false;
        }
        return true;
    }

    protected int a(android.hardware.Camera.CameraInfo camerainfo)
    {
        int k = camerainfo.orientation;
        if (k == 0)
        {
            k = 90;
        } else
        if (camerainfo.facing == 1)
        {
            return (k + DeviceExceptions.a().c()) % 360;
        }
        return k;
    }

    public void a()
    {
        b.release();
        getLooper().quit();
    }

    protected void a(CamcorderProfile camcorderprofile)
    {
        ArrayList arraylist = i.a(camcorderprofile);
        if (!arraylist.isEmpty())
        {
            e.a(new IncompatibleVideoRecordedException(arraylist));
        }
    }

    public void a(Surface surface)
    {
        g = surface;
    }

    public void a(VideoRecordingCallback videorecordingcallback)
    {
        obtainMessage(100, videorecordingcallback).sendToTarget();
    }

    protected void a(VideoRecordingCallback videorecordingcallback, int k, int l)
    {
        OnInfoCallbackMessenger oninfocallbackmessenger = new OnInfoCallbackMessenger(videorecordingcallback);
        b.setOnInfoListener(oninfocallbackmessenger);
        VideoRecordingPreferences videorecordingpreferences = VideoRecordingPreferencesFactory.a(f.b());
        if (a(b, k, l, videorecordingpreferences))
        {
            if (e())
            {
                b(videorecordingcallback);
                return;
            } else
            {
                c();
                a(videorecordingcallback, VideoFailureType.c);
                return;
            }
        } else
        {
            c();
            a(videorecordingcallback, VideoFailureType.e);
            return;
        }
    }

    protected void a(VideoRecordingCallback videorecordingcallback, Uri uri)
    {
        if (videorecordingcallback == null)
        {
            return;
        } else
        {
            ThreadUtils.a(new Runnable(videorecordingcallback, uri) {

                final VideoRecordingCallback a;
                final Uri b;
                final VideoCameraHandler c;

                public void run()
                {
                    try
                    {
                        a.a(b);
                        return;
                    }
                    catch (IllegalStateException illegalstateexception)
                    {
                        Timber.e("VideoCameraHandler", (new StringBuilder()).append("Callback attempted illegally: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
                    }
                }

            
            {
                c = VideoCameraHandler.this;
                a = videorecordingcallback;
                b = uri;
                super();
            }
            });
            return;
        }
    }

    public void a(VideoRecordingCallback videorecordingcallback, Resolution resolution, File file)
    {
        a = file;
        obtainMessage(101, resolution.a(), resolution.b(), videorecordingcallback).sendToTarget();
    }

    protected boolean a(MediaRecorder mediarecorder, int k, int l, VideoRecordingPreferences videorecordingpreferences)
    {
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = d.l();
        android.hardware.Camera.CameraInfo camerainfo = d.m();
        CamcorderProfile camcorderprofile = c.a(d.h(), 1);
        a(camcorderprofile);
        if (cameraproxy == null || camerainfo == null || camcorderprofile == null)
        {
            return false;
        }
        mediarecorder.setCamera(cameraproxy.b());
        mediarecorder.setAudioSource(5);
        mediarecorder.setVideoSource(1);
        mediarecorder.setProfile(camcorderprofile);
        mediarecorder.setVideoSize(k, l);
        mediarecorder.setMaxFileSize(videorecordingpreferences.a());
        mediarecorder.setVideoEncodingBitRate(videorecordingpreferences.a(camcorderprofile));
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(k);
        aobj[1] = Integer.valueOf(l);
        aobj[2] = Long.valueOf(videorecordingpreferences.a());
        aobj[3] = Integer.valueOf(videorecordingpreferences.a(camcorderprofile));
        Timber.c("VideoCameraHandler", "Video Recorder: video size [%d x %d], filesize: %d, bitrate: %d", aobj);
        j.a(k, l, videorecordingpreferences.a(), videorecordingpreferences.a(camcorderprofile), f.b());
        mediarecorder.setOrientationHint(a(camerainfo));
        mediarecorder.setMaxDuration(10000);
        mediarecorder.setOutputFile(a.toString());
        if (g != null)
        {
            mediarecorder.setPreviewDisplay(g);
        }
        Timber.c("VideoCameraHandler", "Video Recorder: Preparing", new Object[0]);
        mediarecorder.prepare();
        Timber.c("VideoCameraHandler", "Video Recorder: Prepared!", new Object[0]);
        return true;
        Object obj;
        obj;
_L2:
        Timber.c("VideoCameraHandler", (new StringBuilder()).append("Video Recorder: exception preparing: ").append(obj.getClass().getName()).append("::").append(((Exception) (obj)).getMessage()).toString(), new Object[0]);
        return false;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void b(VideoRecordingCallback videorecordingcallback)
    {
        ThreadUtils.a(new Runnable(videorecordingcallback) {

            final VideoRecordingCallback a;
            final VideoCameraHandler b;

            public void run()
            {
                try
                {
                    a.u();
                    return;
                }
                catch (IllegalStateException illegalstateexception)
                {
                    Timber.e("VideoCameraHandler", (new StringBuilder()).append("Callback attempted illegally: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
                }
            }

            
            {
                b = VideoCameraHandler.this;
                a = videorecordingcallback;
                super();
            }
        });
    }

    protected boolean b()
    {
        try
        {
            Timber.c("VideoCameraHandler", "Video Recorder: Stopping...", new Object[0]);
            b.stop();
            Timber.c("VideoCameraHandler", "Video Recorder: Stop Successful", new Object[0]);
        }
        catch (RuntimeException runtimeexception)
        {
            Timber.e("VideoCameraHandler", (new StringBuilder()).append("Video Recorder: Problem while stopping! Error:").append(runtimeexception.getMessage()).toString(), new Object[0]);
            return false;
        }
        return true;
    }

    protected void c()
    {
        b.reset();
        com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy = d.l();
        if (cameraproxy != null)
        {
            cameraproxy.f();
            cameraproxy.e();
        }
    }

    public void handleMessage(Message message)
    {
        VideoRecordingCallback videorecordingcallback;
        boolean flag;
        switch (message.what)
        {
        default:
            return;

        case 101: // 'e'
            Timber.c("VideoCameraHandler", "Video Recorder: START_RECORDING message received on handler", new Object[0]);
            a((VideoRecordingCallback)message.obj, message.arg1, message.arg2);
            return;

        case 100: // 'd'
            Timber.c("VideoCameraHandler", "Video Recorder: STOP_RECORDING message received on handler", new Object[0]);
            videorecordingcallback = (VideoRecordingCallback)message.obj;
            flag = b();
            c();
            break;
        }
        if (flag && VideoCameraUtils.a(SystemClock.elapsedRealtime(), h))
        {
            VideoCameraUtils.a(a, h);
            a(videorecordingcallback, Uri.fromFile(a));
            return;
        } else
        {
            a(videorecordingcallback, VideoFailureType.d);
            return;
        }
    }
}
