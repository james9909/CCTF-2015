// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.LifecycleAnalytics;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.analytics.handledexceptions.CameraFailedToOpenException;
import com.snapchat.android.analytics.handledexceptions.VideoRecordingFailedException;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.DefaultCameraDecor;
import com.snapchat.android.camera.cameradecor.InChatCameraDecor;
import com.snapchat.android.camera.cameradecor.QuickSnapCameraDecor;
import com.snapchat.android.camera.cameradecor.ReplyCameraDecor;
import com.snapchat.android.camera.cameradecor.SnapKidzCameraDecor;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.controller.DefaultFlashControllerImpl;
import com.snapchat.android.camera.controller.FlashController;
import com.snapchat.android.camera.controller.TakePhotoController;
import com.snapchat.android.camera.controller.VideoRecordingController;
import com.snapchat.android.camera.hardware.callback.AutofocusCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.CameraOpenCallback;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.FlashModel;
import com.snapchat.android.camera.model.VideoRecordingModel;
import com.snapchat.android.camera.model.ZoomModel;
import com.snapchat.android.camera.previewsize.CameraPreviewSizeFinder;
import com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider;
import com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder;
import com.snapchat.android.camera.util.FlashUtils;
import com.snapchat.android.camera.util.PortraitDisplayMetrics;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.addfriends.AddedMeFragment;
import com.snapchat.android.fragments.addfriends.ProfileFragment;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.StudySettings;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.profile.ui.ProfileViewFlipper;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.scan.SnapScanCallback;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.ui.here.HoldToStreamView;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.TimeLogger;
import com.snapchat.android.util.eventbus.AddFriendsPageVisitedEvent;
import com.snapchat.android.util.eventbus.AdjustForQuickSnapEvent;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraReadyEvent;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelCardLinkEvent;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.ChangePreviewQualityEvent;
import com.snapchat.android.util.eventbus.ChangeWindowMarginEvent;
import com.snapchat.android.util.eventbus.DisplayInAppNotificationEvent;
import com.snapchat.android.util.eventbus.DoubleTapToReplyEvent;
import com.snapchat.android.util.eventbus.HardwareKeyEvent;
import com.snapchat.android.util.eventbus.LockScreenOpenedEvent;
import com.snapchat.android.util.eventbus.ProfileViewFlipEvent;
import com.snapchat.android.util.eventbus.RefreshCameraNotificationBoxesEvent;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapMessageViewingEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.eventbus.SwitchToInChatCameraEvent;
import com.snapchat.android.util.eventbus.SwitchToQuickSnapCameraEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.FragmentPageChangeCallback;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.camera:
//            BaseCameraFragment, TakePhotoCallback, TakeSnapButtonTouchIntent, CameraUtils

public class CameraFragment extends BaseCameraFragment
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener, TakePhotoCallback, com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface, com.snapchat.android.camera.cameraview.CameraView.SurfaceReadyCallback, com.snapchat.android.camera.hardware.CameraManager.CameraPreviewDataCallback, CameraOpenCallback, com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoRecordingCallback, SnapScanCallback
{

    private FlashController B;
    private boolean C;
    private final Handler D;
    private final Bus E;
    private final CameraEventAnalytics F;
    private final SnapCaptureAnalytics G;
    private final GeofilterManager H;
    private SnapScan I;
    private ImageView J;
    protected final TakeSnapButtonTouchIntent a;
    protected TakePhotoController l;
    protected VideoRecordingController m;
    protected ZoomModel n;
    protected FlashModel o;
    protected VideoRecordingModel p;
    protected LifecycleAnalytics q;
    protected DefaultVideoResolutionProvider r;
    protected ExceptionReporter s;
    private FragmentPageChangeCallback t;
    private byte u[];
    private TextView v;

    public CameraFragment()
    {
        this(BusProvider.a(), new Handler(Looper.getMainLooper()), CameraEventAnalytics.a(), SnapCaptureAnalytics.a(), GeofilterManager.a(), new TakeSnapButtonTouchIntent());
    }

    CameraFragment(Bus bus, Handler handler, CameraEventAnalytics cameraeventanalytics, SnapCaptureAnalytics snapcaptureanalytics, GeofilterManager geofiltermanager, TakeSnapButtonTouchIntent takesnapbuttontouchintent)
    {
        C = false;
        SnapchatApplication.e().a(this);
        E = bus;
        D = handler;
        F = cameraeventanalytics;
        G = snapcaptureanalytics;
        H = geofiltermanager;
        a = takesnapbuttontouchintent;
    }

    private void A()
    {
        int j = ViewUtils.b(v);
        int i1 = PreferenceManager.getDefaultSharedPreferences(getActivity()).getInt(SharedPreferenceKey.ab.a(), -1);
        if (i1 == -1)
        {
            i1 = (int)(0.5F * (float)(new PortraitDisplayMetrics()).heightPixels);
        }
        int j1 = i1 - j;
        android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)v.getLayoutParams();
        layoutparams.setMargins(layoutparams.leftMargin, j1, layoutparams.rightMargin, layoutparams.bottomMargin);
        v.setLayoutParams(layoutparams);
    }

    private void B()
    {
        if (j.c())
        {
            return;
        } else
        {
            j.a(true);
            a(true);
            j.b(true);
            c();
            return;
        }
    }

    private void C()
    {
        if (!j.c())
        {
            return;
        } else
        {
            j.a(true);
            a(true);
            j.b(false);
            c();
            return;
        }
    }

    private boolean D()
    {
        return d.getClass().equals(com/snapchat/android/camera/cameradecor/DefaultCameraDecor);
    }

    private boolean E()
    {
        android.hardware.Camera.Parameters parameters = c.c();
        List list;
        if (parameters != null && !j.e())
        {
            if ((list = parameters.getSupportedFocusModes()) != null && list.contains("auto"))
            {
                if (!parameters.getFocusMode().equals("auto"))
                {
                    parameters.setFocusMode("auto");
                    c.a(parameters);
                }
                return true;
            }
        }
        return false;
    }

    private SnapScan F()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = Build.CPU_ABI.startsWith("x86");
        if (!flag) goto _L2; else goto _L1
_L1:
        SnapScan snapscan = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return snapscan;
_L2:
        if (I != null || c == null) goto _L4; else goto _L3
_L3:
        android.hardware.Camera.Parameters parameters = c.c();
        if (parameters == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        android.hardware.Camera.Size size = parameters.getPreviewSize();
        if (size == null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        int j;
        int i1;
        j = size.width;
        i1 = size.height;
_L6:
        I = new SnapScan(-1, j, i1, this);
_L4:
        snapscan = I;
          goto _L5
        Exception exception;
        exception;
        throw exception;
        i1 = 0;
        j = 0;
          goto _L6
    }

    private void K()
    {
        SnapScan snapscan = F();
        if (snapscan != null)
        {
            snapscan.b();
        }
    }

    private void L()
    {
        SnapScan snapscan = F();
        if (snapscan != null)
        {
            snapscan.a();
        }
    }

    static ImageView a(CameraFragment camerafragment)
    {
        return camerafragment.J;
    }

    private void a(int j, int i1)
    {
        while (c == null || this.j.k() || !E()) 
        {
            return;
        }
        this.j.e(true);
        d.a(j, i1);
        CameraUtils.a(j, i1, b, c);
        c.a(new AutofocusCallbackMessenger(new Handler(Looper.getMainLooper()), c, new com.snapchat.android.camera.hardware.CameraManager.CameraProxyAutoFocusCallback() {

            final CameraFragment a;

            public void a(boolean flag, com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
            {
                a.j.e(false);
            }

            
            {
                a = CameraFragment.this;
                super();
            }
        }));
    }

    private void a(String s1)
    {
        if (!TextUtils.isEmpty(s1))
        {
            v.setText(s1);
            v.setVisibility(0);
            A();
            return;
        } else
        {
            v.setVisibility(4);
            return;
        }
    }

    private boolean a(android.hardware.Camera.Parameters parameters, float f)
    {
        if (parameters == null || !parameters.isZoomSupported())
        {
            return false;
        } else
        {
            parameters.setZoom((int)Math.ceil(f * (float)parameters.getMaxZoom()));
            return true;
        }
    }

    static CameraEventAnalytics b(CameraFragment camerafragment)
    {
        return camerafragment.F;
    }

    public CameraDecor a(RelativeLayout relativelayout)
    {
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity instanceof SnapkidzHomeActivity)
        {
            return new SnapKidzCameraDecor(fragmentactivity, e, this);
        } else
        {
            return new DefaultCameraDecor(fragmentactivity, e, this);
        }
    }

    protected Resolution a(PortraitDisplayMetrics portraitdisplaymetrics, CameraPreviewSizeFinder camerapreviewsizefinder, android.hardware.Camera.Parameters parameters)
    {
        if (CameraUtils.a(parameters) && !ApiHelper.a)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(portraitdisplaymetrics.heightPixels);
            aobj1[1] = Integer.valueOf(portraitdisplaymetrics.widthPixels);
            Timber.c("CameraFragment", "Preview Size Finding: display [%d,%d]", aobj1);
            return k.a(parameters, j.h(), CameraUtils.a(portraitdisplaymetrics), false);
        } else
        {
            Resolution resolution = super.a(portraitdisplaymetrics, camerapreviewsizefinder, parameters);
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(resolution.a());
            aobj[1] = Integer.valueOf(resolution.b());
            Timber.c("CameraFragment", "Camera Preview Size: [%d,%d]", aobj);
            return resolution;
        }
    }

    public void a(float f)
    {
        if (j.e() || c == null)
        {
            return;
        }
        n.a(f);
        float f1 = n.b();
        android.hardware.Camera.Parameters parameters = c.c();
        if (a(parameters, f1))
        {
            c.a(parameters);
            return;
        } else
        {
            n.a();
            return;
        }
    }

    public void a(int j, boolean flag)
    {
        if (t != null)
        {
            if (g.getCurrentPanel() == 1)
            {
                g.setEnabled(false);
                t.a(j, flag);
            }
            return;
        } else
        {
            Timber.e("CameraFragment", "FragmentPageChangeCallback is null. Is it implemented by your Activity?", new Object[0]);
            return;
        }
    }

    public void a(int j, byte abyte0[])
    {
        if (abyte0 != null)
        {
            BusProvider.a().a(new DisplayInAppNotificationEvent());
            SnapchatServiceManager.a().a(getActivity(), j, abyte0);
        }
    }

    public void a(Bitmap bitmap)
    {
        Snapbryo snapbryo = (new com.snapchat.android.model.Snapbryo.Builder()).a(bitmap).a();
        snapbryo.g(j.e());
        android.hardware.Camera.CameraInfo camerainfo = j.m();
        if (camerainfo != null)
        {
            snapbryo.d(camerainfo.orientation);
        }
        E.a(new SnapCapturedEvent(snapbryo));
    }

    public void a(Uri uri)
    {
        ThreadUtils.a();
        if (w != null)
        {
            w.b(true);
        }
        if (uri == null)
        {
            a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.a);
            return;
        }
        d.d();
        boolean flag = this.j.e();
        android.hardware.Camera.CameraInfo camerainfo = this.j.m();
        int j;
        Snapbryo snapbryo;
        if (camerainfo == null)
        {
            j = 0;
        } else
        {
            j = camerainfo.orientation;
        }
        p.a(false);
        p.b(false);
        a(false);
        if (b != null)
        {
            b.a();
            b.setAlpha(0.0F);
        }
        m.c();
        e.setVisibility(8);
        F.g();
        snapbryo = (new com.snapchat.android.model.Snapbryo.Builder()).a(uri).a();
        snapbryo.g(flag);
        snapbryo.d(j);
        E.a(new SnapCapturedEvent(snapbryo));
    }

    public void a(Surface surface)
    {
        Resolution resolution = r.a();
        if (resolution == null)
        {
            a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.e);
            return;
        } else
        {
            b.b(resolution, new PortraitDisplayMetrics());
            a(surface, resolution);
            return;
        }
    }

    public void a(com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction takesnapbuttonaction)
    {
        boolean flag = true;
        static class _cls7
        {

            static final int a[];
            static final int b[];
            static final int c[];

            static 
            {
                c = new int[com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.values().length];
                try
                {
                    c[com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                b = new int[com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction.values().length];
                try
                {
                    b[com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                a = new int[com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.values().length];
                try
                {
                    a[com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[com.snapchat.android.util.eventbus.ChangePreviewQualityEvent.PreviewQuality.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        switch (_cls7.b[takesnapbuttonaction.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a.a(TakeSnapButtonTouchIntent.MediaCaptureType.b);
            D.postDelayed(new Runnable() {

                final CameraFragment a;

                public void run()
                {
                    CameraFragment.b(a).c();
                    a.a.a(TakeSnapButtonTouchIntent.MediaCaptureType.c);
                    a.p();
                }

            
            {
                a = CameraFragment.this;
                super();
            }
            }, 500L);
            UserPrefs.e(flag);
            b(false);
            E.a(new SetPagingEnabledEvent(false));
            return;

        case 2: // '\002'
            b(flag);
            break;
        }
        if (a.a() != TakeSnapButtonTouchIntent.MediaCaptureType.c)
        {
            flag = false;
        }
        G.a(flag);
        if (!flag) goto _L2; else goto _L1
_L1:
        if (p.a())
        {
            r();
        }
_L4:
        d.d();
        D.removeCallbacksAndMessages(null);
        return;
_L2:
        F.c();
        o();
        if (StudySettings.a().a("ENABLE_SNAP_TO_SCAN", "option", "on").equals("on"))
        {
            K();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void a(CameraDecor cameradecor)
    {
        super.a(cameradecor);
        b(true);
    }

    public void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, int j)
    {
        super.a(cameraproxy, j);
        if (this.j.i() || this.j.l() == null)
        {
            return;
        } else
        {
            d.a();
            m.b();
            q.d();
            StreamView.setCameraInfo(this.j.m());
            StreamView.setCameraPreviewSize(this.j.j());
            E.a(new CameraReadyEvent(true, this.j.b()));
            this.j.a(false);
            return;
        }
    }

    public void a(com.snapchat.android.camera.model.CameraModel.CameraType cameratype)
    {
        if (b == null)
        {
            return;
        } else
        {
            j.a(cameratype);
            c();
            return;
        }
    }

    public void a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType videofailuretype)
    {
        ThreadUtils.a();
        if (w != null)
        {
            w.b(true);
        }
        d.d();
        p.a(false);
        p.b(false);
        E.a(new SetPagingEnabledEvent(true));
        _cls7.c[videofailuretype.ordinal()];
        JVM INSTR tableswitch 1 1: default 84
    //                   1 186;
           goto _L1 _L2
_L1:
        int j = 0x7f0c0226;
_L8:
        E.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, j));
        s.a(new VideoRecordingFailedException(videofailuretype.name()));
        F.a(videofailuretype);
        if (b != null && !ApiHelper.a)
        {
            b.a();
            a(false);
            m.c();
            b.setAlpha(0.0F);
            c();
        }
        d.a();
        return;
_L2:
        String s1;
        byte byte0;
        if (ReleaseManager.e())
        {
            Resources resources = getResources();
            Object aobj[] = new Object[1];
            aobj[0] = Environment.getExternalStorageState();
            String s2 = resources.getString(0x7f0c00c4, aobj);
            E.a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, s2));
        }
        s1 = Environment.getExternalStorageState();
        byte0 = -1;
        s1.hashCode();
        JVM INSTR lookupswitch 3: default 288
    //                   -903566235: 324
    //                   1091836000: 354
    //                   1536898522: 339;
           goto _L3 _L4 _L5 _L6
_L3:
        switch (byte0)
        {
        default:
            j = 0x7f0c003b;
            break;

        case 0: // '\0'
            j = 0x7f0c003c;
            break;

        case 1: // '\001'
            j = 0x7f0c003a;
            break;

        case 2: // '\002'
            j = 0x7f0c0035;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (s1.equals("shared"))
        {
            byte0 = 0;
        }
          goto _L3
_L6:
        if (s1.equals("checking"))
        {
            byte0 = 1;
        }
          goto _L3
_L5:
        if (s1.equals("removed"))
        {
            byte0 = 2;
        }
          goto _L3
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void a(boolean flag)
    {
        super.a(flag);
        C = true;
        u = null;
        E.a(new CameraReadyEvent(false, j.b()));
    }

    public void a(byte abyte0[], com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        super.a(abyte0, cameraproxy);
        ThreadUtils.a(new Runnable() {

            final CameraFragment a;

            public void run()
            {
                if (!a.j.f() && a.b != null && a.b.getAlpha() == 0.0F)
                {
                    a.b.animate().alpha(1.0F).setDuration(100L).start();
                }
            }

            
            {
                a = CameraFragment.this;
                super();
            }
        });
        if (C)
        {
            C = false;
            F.e();
        }
        if (cameraproxy != null)
        {
            ThreadUtils.b();
            HoldToStreamView holdtostreamview = HoldToStreamView.getLastInstance();
            if (holdtostreamview != null)
            {
                holdtostreamview.a(abyte0);
            }
            cameraproxy.a(u);
            SnapScan snapscan = F();
            if (snapscan != null)
            {
                snapscan.a(abyte0);
                return;
            }
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        return d.a(motionevent);
    }

    public boolean a(Surface surface, Resolution resolution)
    {
        if (p.a())
        {
            return false;
        }
        if (!ApiHelper.a && surface == null)
        {
            a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.f);
            return false;
        } else
        {
            return m.a(this, B, resolution, surface);
        }
    }

    protected byte[] a(Resolution resolution)
    {
        u = CameraUtils.a(resolution);
        return u;
    }

    protected void b()
    {
        g.setEnabled(false);
        g.setScrollable(true);
    }

    public void b(Bitmap bitmap)
    {
label0:
        {
            if (ReleaseManager.e())
            {
                if (bitmap == null)
                {
                    break label0;
                }
                J.setImageBitmap(bitmap);
                J.setVisibility(0);
            }
            return;
        }
        Timber.e("CameraFragment", "The debug scanner image was null.", new Object[0]);
    }

    protected void b(android.hardware.Camera.Parameters parameters)
    {
        B.a(parameters, o.a());
    }

    public void b(MotionEvent motionevent)
    {
        a(Math.round(motionevent.getX()), Math.round(motionevent.getY()));
        K();
    }

    protected void b(boolean flag)
    {
        if (g != null)
        {
            ProfileViewFlipper profileviewflipper = g;
            boolean flag1;
            if (flag && D())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            profileviewflipper.setScrollable(flag1);
        }
    }

    public void c(int j)
    {
        super.c(j);
        if (!getUserVisibleHint())
        {
            return;
        }
        FragmentActivity fragmentactivity = getActivity();
        if (fragmentactivity != null)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(fragmentactivity);
            builder.setMessage(0x7f0c00ac);
            builder.setCancelable(true);
            builder.setNegativeButton(0x7f0c003d, new android.content.DialogInterface.OnClickListener() {

                final CameraFragment a;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    dialoginterface.cancel();
                }

            
            {
                a = CameraFragment.this;
                super();
            }
            });
            builder.setPositiveButton(0x7f0c00eb, new android.content.DialogInterface.OnClickListener() {

                final CameraFragment a;

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    System.exit(-1);
                }

            
            {
                a = CameraFragment.this;
                super();
            }
            });
            builder.show();
        }
        d.a();
        s.a(new CameraFailedToOpenException());
        (new ErrorMetric("CAMERA_FAILED_TO_OPEN")).c();
    }

    public void c(boolean flag)
    {
        if (p.a())
        {
            return;
        } else
        {
            j.a();
            boolean flag1 = j.b(j.d());
            F.b(flag, flag1);
            C = true;
            c();
            return;
        }
    }

    public void d_()
    {
        super.d_();
        L();
        g.setEnabled(false);
    }

    public boolean e()
    {
        if (g.getCurrentPanel() == 0)
        {
            g.a(1);
            return true;
        } else
        {
            return super.e();
        }
    }

    public FragmentActivity h()
    {
        return super.getActivity();
    }

    public boolean i()
    {
        return o.a();
    }

    protected void k()
    {
        Intent intent = H();
        if ((com.snapchat.android.notification.AndroidNotificationManager.Destination)intent.getSerializableExtra("destinationPage") == com.snapchat.android.notification.AndroidNotificationManager.Destination.a)
        {
            if (h().getSupportFragmentManager().getBackStackEntryCount() == 0)
            {
                g.a(0, 0.0D);
                BusProvider.a().a(new StartFragmentEvent(new AddedMeFragment()));
            }
            intent.removeExtra("destinationPage");
        }
    }

    protected boolean k_()
    {
        boolean flag = super.k_();
        if (flag && b != null)
        {
            b.setAlpha(0.0F);
        }
        return flag;
    }

    protected void l()
    {
        g.setEnabled(true);
        if (g.getCurrentPanel() == 0)
        {
            E.a(new SetPagingEnabledEvent(false));
        }
        g.a(g.getCurrentPanel(), 0.0D);
    }

    public boolean l_()
    {
        return j.e();
    }

    protected void n()
    {
        if (getFragmentManager().getBackStackEntryCount() == 0)
        {
            g.a(1);
        }
    }

    public void o()
    {
        if (b == null)
        {
            return;
        } else
        {
            h.edit().putInt(SharedPreferenceKey.aj.a(), ViewUtils.c(getActivity())).apply();
            l.a(b, this, B);
            e.setVisibility(8);
            return;
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        FragmentManager fragmentmanager = getChildFragmentManager();
        if ((ProfileFragment)fragmentmanager.findFragmentById(0x7f0a0084) == null)
        {
            ProfileFragment profilefragment = new ProfileFragment();
            fragmentmanager.beginTransaction().add(0x7f0a0084, profilefragment).commit();
        }
    }

    public void onAdjustForQuickSnapEvent(AdjustForQuickSnapEvent adjustforquicksnapevent)
    {
        if (b == null)
        {
            return;
        }
        if (adjustforquicksnapevent.a())
        {
            j.a(com.snapchat.android.camera.model.CameraModel.CameraType.a);
        }
        c();
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        if (activity instanceof FragmentPageChangeCallback)
        {
            t = (FragmentPageChangeCallback)activity;
        }
    }

    public void onCameraStateEvent(CameraStateEvent camerastateevent)
    {
        if (camerastateevent.a)
        {
            if (camerastateevent.b != null)
            {
                j.a(camerastateevent.b);
            }
            c();
            e.setVisibility(0);
            return;
        }
        a(false);
        if (b != null)
        {
            b.setAlpha(0.0F);
        }
        m.c();
    }

    public void onCancelCardLinkEvent(CancelCardLinkEvent cancelcardlinkevent)
    {
        a(new DefaultCameraDecor(getActivity(), e, this));
        ViewUtils.a(getActivity(), b);
    }

    public void onCancelInChatSnapEvent(CancelInChatSnapEvent cancelinchatsnapevent)
    {
        a(new DefaultCameraDecor(getActivity(), e, this));
        a(((String) (null)));
    }

    public void onCancelQuickSnapEvent(CancelQuickSnapEvent cancelquicksnapevent)
    {
        a(new DefaultCameraDecor(getActivity(), e, this));
        a(((String) (null)));
    }

    public void onCancelReplyEvent(CancelReplyEvent cancelreplyevent)
    {
        a(new DefaultCameraDecor(getActivity(), e, this));
    }

    public void onChangePreviewQualityEvent(ChangePreviewQualityEvent changepreviewqualityevent)
    {
        switch (_cls7.a[changepreviewqualityevent.a.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            C();
            return;

        case 2: // '\002'
            B();
            break;
        }
    }

    public void onCreate(Bundle bundle)
    {
        TimeLogger.a();
        super.onCreate(bundle);
        TimeLogger.b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        TimeLogger.a();
        super.onCreateView(layoutinflater, viewgroup, bundle);
        this.j.a(h.getInt(SharedPreferenceKey.y.a(), 0));
        B = new DefaultFlashControllerImpl(d(0x7f0a0087));
        v = (TextView)d(0x7f0a0089);
        PortraitDisplayMetrics portraitdisplaymetrics = new PortraitDisplayMetrics();
        int j = Math.min(portraitdisplaymetrics.widthPixels, portraitdisplaymetrics.heightPixels);
        int i1 = Math.max(portraitdisplaymetrics.widthPixels, portraitdisplaymetrics.heightPixels);
        v.setTextSize((0.053125F * (float)Math.min(j, i1)) / portraitdisplaymetrics.density);
        J = (ImageView)d(0x7f0a008b);
        J.setOnClickListener(new android.view.View.OnClickListener() {

            final CameraFragment a;

            public void onClick(View view)
            {
                CameraFragment.a(a).setVisibility(8);
            }

            
            {
                a = CameraFragment.this;
                super();
            }
        });
        TimeLogger.b();
        return x;
    }

    public void onDoubleTapToReplyEvent(DoubleTapToReplyEvent doubletaptoreplyevent)
    {
        a(new ReplyCameraDecor(getActivity(), e, this, doubletaptoreplyevent));
        a(((String) (null)));
    }

    public void onFeedRefreshedEvent(SnapMessageFeedRefreshedEvent snapmessagefeedrefreshedevent)
    {
        d.a();
    }

    public void onKeyDownEvent(HardwareKeyEvent hardwarekeyevent)
    {
        if (!y)
        {
            return;
        }
        CameraDecor cameradecor;
        switch (hardwarekeyevent.a)
        {
        case 26: // '\032'
        default:
            return;

        case 24: // '\030'
        case 25: // '\031'
        case 27: // '\033'
            cameradecor = d;
            break;
        }
        boolean flag;
        if (hardwarekeyevent.b.getAction() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        cameradecor.b(flag);
    }

    public void onLockScreenOpenedEvent(LockScreenOpenedEvent lockscreenopenedevent)
    {
        onResume();
    }

    public void onPause()
    {
        if (p.a())
        {
            m.a(null, B, true);
            p.a(false);
        }
        super.onPause();
        m.c();
        if (b != null)
        {
            b.setAlpha(0.0F);
        }
    }

    public void onProfileViewScrollEvent(ProfileViewFlipEvent profileviewflipevent)
    {
        g.a(profileviewflipevent.a);
    }

    public void onRefreshCameraNotificationBoxesEvent(RefreshCameraNotificationBoxesEvent refreshcameranotificationboxesevent)
    {
        d.a();
    }

    public void onResume()
    {
        TimeLogger.a();
        if (getActivity() instanceof LandingPageActivity)
        {
            boolean flag = ((LandingPageActivity)getActivity()).f();
            CameraEventAnalytics cameraeventanalytics = F;
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            cameraeventanalytics.a(flag1);
        }
        super.onResume();
        k();
        TimeLogger.b();
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s1)
    {
        if (d != null)
        {
            d.a();
        }
    }

    public void onSnapViewingEvent(SnapMessageViewingEvent snapmessageviewingevent)
    {
        d.a();
    }

    public void onStart()
    {
        super.onStart();
        UserPrefs.a(this);
    }

    public void onStop()
    {
        super.onStop();
        UserPrefs.b(this);
        n();
    }

    public void onSwitchToInChatCameraEvent(SwitchToInChatCameraEvent switchtoinchatcameraevent)
    {
        a(new InChatCameraDecor(getActivity(), e, this, switchtoinchatcameraevent));
        a(switchtoinchatcameraevent.b);
        E.a(new SetPagingEnabledEvent(false));
    }

    public void onSwitchToQuickSnapCameraEvent(SwitchToQuickSnapCameraEvent switchtoquicksnapcameraevent)
    {
        a(new QuickSnapCameraDecor(getActivity(), e, this));
        a(switchtoquicksnapcameraevent.a);
        E.a(new SetPagingEnabledEvent(false));
    }

    public void onViewedFriendFeedEvent(AddFriendsPageVisitedEvent addfriendspagevisitedevent)
    {
        d.a();
    }

    public boolean p()
    {
        if (j.f())
        {
            return false;
        }
        if (ApiHelper.a)
        {
            Resolution resolution = r.a();
            if (resolution == null)
            {
                a(com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType.e);
                return false;
            } else
            {
                return a(((Surface) (null)), resolution);
            }
        } else
        {
            c.b(true);
            b.b(this);
            return true;
        }
    }

    public boolean q()
    {
        return p.a();
    }

    public void r()
    {
        if (p.c())
        {
            return;
        } else
        {
            p.b(true);
            m.a(this, B);
            d.d();
            return;
        }
    }

    public boolean s()
    {
        if (j.e())
        {
            return UserPrefs.M();
        } else
        {
            return FlashUtils.a(c);
        }
    }

    protected void s_()
    {
        TimeLogger.a();
        F.b();
        H.c();
        E.a(new ChangeOrientationEvent(1));
        E.a(new TitleBarEvent(false));
        E.a(new CameraStateEvent(true));
        if (getView() != null)
        {
            ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getView().getWindowToken(), 0);
        }
        ViewUtils.a(true, G());
        if (x != null)
        {
            ViewUtils.a(x);
        }
        E.a(new ChangeWindowMarginEvent(true));
        if (d != null)
        {
            d.a();
            d.b();
        }
        if (e != null)
        {
            e.setVisibility(0);
        }
        l();
        TimeLogger.b();
    }

    public void t()
    {
        if (!s())
        {
            return;
        } else
        {
            o.b();
            B.c(o.a());
            d.a();
            return;
        }
    }

    public void u()
    {
        ThreadUtils.a();
        F.b(true);
        d.c();
        if (w != null)
        {
            w.b(false);
        }
        if (b != null && b.getAlpha() == 0.0F)
        {
            b.animate().alpha(1.0F).setDuration(100L).start();
        }
    }

    public void v()
    {
        ThreadUtils.a();
        d.d();
        r();
    }

    public void w()
    {
        c(true);
    }

    public void x()
    {
    }

    public void y()
    {
    }

    protected boolean z()
    {
        return false;
    }
}
