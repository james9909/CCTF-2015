// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import com.snapchat.android.util.EnumUtils;

public class CameraEventAnalytics
{
    public static final class CameraContext extends Enum
    {

        private static final CameraContext $VALUES[];
        public static final CameraContext CAMERA_BUTTON;
        public static final CameraContext CANCEL_PREVIEW;
        public static final CameraContext DOUBLE_TAP;
        public static final CameraContext SNAP_BUTTON;
        public static final CameraContext SWIPE;

        public static CameraContext valueOf(String s)
        {
            return (CameraContext)Enum.valueOf(com/snapchat/android/analytics/CameraEventAnalytics$CameraContext, s);
        }

        public static CameraContext[] values()
        {
            return (CameraContext[])$VALUES.clone();
        }

        static 
        {
            SWIPE = new CameraContext("SWIPE", 0);
            SNAP_BUTTON = new CameraContext("SNAP_BUTTON", 1);
            DOUBLE_TAP = new CameraContext("DOUBLE_TAP", 2);
            CAMERA_BUTTON = new CameraContext("CAMERA_BUTTON", 3);
            CANCEL_PREVIEW = new CameraContext("CANCEL_PREVIEW", 4);
            CameraContext acameracontext[] = new CameraContext[5];
            acameracontext[0] = SWIPE;
            acameracontext[1] = SNAP_BUTTON;
            acameracontext[2] = DOUBLE_TAP;
            acameracontext[3] = CAMERA_BUTTON;
            acameracontext[4] = CANCEL_PREVIEW;
            $VALUES = acameracontext;
        }

        private CameraContext(String s, int i)
        {
            super(s, i);
        }
    }


    protected static final String CAMERA_BUTTON_PRESSED_EVENT = "CAMERA_BUTTON_PRESSED";
    protected static final String CAMERA_DELAY_EVENT = "CAMERA_DELAY";
    protected static final String CAMERA_RUNNING_PARAM = "camera_running";
    protected static final String CAMERA_SWITCH_EVENT = "CAMERA_SWITCH";
    protected static final String CONTEXT_PARAM = "context";
    protected static final String EXIT_CAMERA_VIEW_EVENT = "EXIT_CAMERA_VIEW";
    protected static final String RECORDING_DELAY_EVENT = "RECORDING_DELAY";
    protected static final String START_VIDEO_RECORDING_EVENT = "START_VIDEO_RECORDING";
    protected static final String VIDEO_RECORDING_ERROR_EVENT = "VIDEO_RECORDING_ERROR";
    protected static final String VIDEO_RECORDING_SUCCESS_EVENT = "VIDEO_RECORDING_SUCCESS";
    private static final CameraEventAnalytics sInstance = new CameraEventAnalytics();
    private boolean mCameraAlreadyReady;
    protected CameraModel mCameraModel;
    private DictionaryEasyMetric mDictionaryEasyMetric;
    protected FlashModel mFlashModel;

    protected CameraEventAnalytics()
    {
        mDictionaryEasyMetric = DictionaryEasyMetric.a();
        mCameraAlreadyReady = false;
        SnapchatApplication.e().a(this);
    }

    public static CameraEventAnalytics a()
    {
        return sInstance;
    }

    private void a(int i)
    {
        if ((i == 1 || i == 3 || i == 0) && mCameraAlreadyReady)
        {
            mDictionaryEasyMetric.a("CAMERA_DELAY");
            e();
        }
    }

    private void a(String s, String s1)
    {
        mDictionaryEasyMetric.a("CAMERA_DELAY");
        mDictionaryEasyMetric.a("CAMERA_DELAY", "context", s);
        mDictionaryEasyMetric.a("CAMERA_DELAY", "camera_running", s1);
    }

    private void b(int i)
    {
        if (i == 2)
        {
            mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "feed");
            mDictionaryEasyMetric.c("EXIT_CAMERA_VIEW");
        }
    }

    private void c(int i)
    {
        if (i == 2)
        {
            mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "story");
            mDictionaryEasyMetric.c("EXIT_CAMERA_VIEW");
        }
    }

    private String h()
    {
        boolean flag;
        if (!mCameraModel.f())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.toString(flag);
    }

    public void a(int i, int j)
    {
        if (j == 1)
        {
            b(i);
        } else
        {
            if (j == 3)
            {
                c(i);
                return;
            }
            if (j == 2)
            {
                a(i);
                return;
            }
        }
    }

    public void a(int i, int j, long l, int k, com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled transcodingenabled)
    {
        (new EasyMetric("START_VIDEO_RECORDING")).a("video_width", Integer.valueOf(i)).a("video_height", Integer.valueOf(j)).a("max_file_size", Long.valueOf(l)).a("bit_rate", Integer.valueOf(k)).a("transcoding_status", Integer.valueOf(transcodingenabled.a())).c();
    }

    public void a(CameraContext cameracontext)
    {
        if (!mCameraModel.f())
        {
            mCameraAlreadyReady = true;
        }
        a(EnumUtils.a(cameracontext), h());
    }

    public void a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType videofailuretype)
    {
        (new ErrorMetric("VIDEO_RECORDING_ERROR")).a("error_code", Integer.valueOf(videofailuretype.a())).c();
    }

    public void a(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "killed_state";
        } else
        {
            s = "background";
        }
        a(s, h());
    }

    protected void a(boolean flag, boolean flag1)
    {
        mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "take_snap");
        mDictionaryEasyMetric.c("EXIT_CAMERA_VIEW");
        (new EasyMetric("CAMERA_BUTTON_PRESSED")).a("front_facing", Boolean.valueOf(flag)).a("flash", Boolean.valueOf(flag1)).c();
        mDictionaryEasyMetric.a("RECORDING_DELAY");
    }

    public void b()
    {
        mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW");
    }

    public void b(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "video";
        } else
        {
            s = "image";
        }
        mDictionaryEasyMetric.a("RECORDING_DELAY", "context", s);
        mDictionaryEasyMetric.c("RECORDING_DELAY");
    }

    public void b(boolean flag, boolean flag1)
    {
        mDictionaryEasyMetric.a("CAMERA_SWITCH");
        String s;
        String s1;
        if (flag)
        {
            s = "double_tap";
        } else
        {
            s = "toggle_button";
        }
        mDictionaryEasyMetric.a("CAMERA_SWITCH", "context", s);
        if (flag1)
        {
            s1 = "front_facing_camera";
        } else
        {
            s1 = "back_facing_camera";
        }
        mDictionaryEasyMetric.a("CAMERA_SWITCH", "switch_to", s1);
    }

    public void c()
    {
        a(mCameraModel.e(), mFlashModel.a());
    }

    public void d()
    {
        mDictionaryEasyMetric.a("EXIT_CAMERA_VIEW", "context", "exit");
        mDictionaryEasyMetric.c("EXIT_CAMERA_VIEW");
    }

    public void e()
    {
        mDictionaryEasyMetric.c("CAMERA_DELAY");
        mCameraAlreadyReady = false;
        mDictionaryEasyMetric.c("CAMERA_SWITCH");
    }

    public void f()
    {
        mDictionaryEasyMetric.b("CAMERA_DELAY");
        mCameraAlreadyReady = false;
    }

    public void g()
    {
        (new EasyMetric("VIDEO_RECORDING_SUCCESS")).c();
    }

}
