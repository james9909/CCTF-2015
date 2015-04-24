// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera;

import android.app.KeyguardManager;
import android.content.SharedPreferences;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.camera.hardware.CameraManager;
import com.snapchat.android.camera.hardware.CameraManagerFactory;
import com.snapchat.android.camera.hardware.callback.CameraOpenCallback;
import com.snapchat.android.camera.hardware.callback.CameraOpenCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.PreviewCallbackMessenger;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.previewsize.CameraPreviewSizeFinder;
import com.snapchat.android.camera.previewsize.VideoRecordingSizeFinder;
import com.snapchat.android.camera.util.CameraPreviewRotationFinder;
import com.snapchat.android.camera.util.DeviceExceptions;
import com.snapchat.android.camera.util.PortraitDisplayMetrics;
import com.snapchat.android.profile.ui.ProfileViewFlipper;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.DefaultDisplayProvider;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;

// Referenced classes of package com.snapchat.android.camera:
//            CameraUtils

public abstract class BaseCameraFragment extends SnapchatFragment
    implements com.snapchat.android.camera.cameraview.CameraView.SurfaceReadyCallback, com.snapchat.android.camera.hardware.CameraManager.CameraPreviewDataCallback, CameraOpenCallback
{

    private final DefaultDisplayProvider a;
    protected CameraView b;
    protected com.snapchat.android.camera.hardware.CameraManager.CameraProxy c;
    protected CameraDecor d;
    protected RelativeLayout e;
    protected FrameLayout f;
    protected ProfileViewFlipper g;
    protected SharedPreferences h;
    protected PreviewCallbackMessenger i;
    protected CameraModel j;
    protected VideoRecordingSizeFinder k;
    private final CameraPreviewRotationFinder l;
    private final CameraPreviewSizeFinder m;
    private final CameraOpenCallbackMessenger n;

    public BaseCameraFragment()
    {
        this(new DefaultDisplayProvider(), new CameraPreviewRotationFinder(), new CameraPreviewSizeFinder(DeviceExceptions.a()));
    }

    public BaseCameraFragment(DefaultDisplayProvider defaultdisplayprovider, CameraPreviewRotationFinder camerapreviewrotationfinder, CameraPreviewSizeFinder camerapreviewsizefinder)
    {
        n = new CameraOpenCallbackMessenger(new Handler(Looper.getMainLooper()), this);
        SnapchatApplication.e().a(this);
        a = defaultdisplayprovider;
        l = camerapreviewrotationfinder;
        m = camerapreviewsizefinder;
    }

    private void a(android.hardware.Camera.Parameters parameters, Resolution resolution)
    {
        parameters.setPreviewSize(resolution.a(), resolution.b());
    }

    private void c(android.hardware.Camera.Parameters parameters)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16 && Build.MODEL.equals("Nexus 4"))
        {
            parameters.setRecordingHint(true);
            if (j.h() == 1)
            {
                parameters.setExposureCompensation(parameters.getMaxExposureCompensation());
            }
        }
    }

    private void d(android.hardware.Camera.Parameters parameters)
    {
        List list;
        if (!j.e())
        {
            if ((list = parameters.getSupportedFocusModes()) != null && list.contains("continuous-picture"))
            {
                parameters.setFocusMode("continuous-picture");
                return;
            }
        }
    }

    private boolean h()
    {
        if (!((PowerManager)b("power")).isScreenOn())
        {
            return true;
        } else
        {
            return ((KeyguardManager)b("keyguard")).inKeyguardRestrictedInputMode();
        }
    }

    private void i()
    {
        if (j.d() == j.h() || j.i())
        {
            return;
        } else
        {
            a(true);
            j.c(true);
            CameraManagerFactory.a().a(j.d(), n);
            return;
        }
    }

    private Handler k()
    {
        HandlerThread handlerthread = new HandlerThread("Preview Data Thread");
        handlerthread.start();
        return new Handler(handlerthread.getLooper());
    }

    protected abstract CameraDecor a(RelativeLayout relativelayout);

    protected Resolution a(PortraitDisplayMetrics portraitdisplaymetrics, CameraPreviewSizeFinder camerapreviewsizefinder, android.hardware.Camera.Parameters parameters)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(portraitdisplaymetrics.heightPixels);
        aobj[1] = Integer.valueOf(portraitdisplaymetrics.widthPixels);
        Timber.c("BaseCameraFragment", "Preview Size Finding: display [%d, %d]", aobj);
        double d1 = CameraUtils.a(portraitdisplaymetrics);
        boolean flag;
        Resolution resolution;
        if (!j.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        resolution = camerapreviewsizefinder.a(parameters, d1, flag);
        if (resolution == null)
        {
            CameraPreviewSizeFinder camerapreviewsizefinder1 = m;
            int i1 = j.h();
            Object aobj1[];
            boolean flag1;
            if (!j.c())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            resolution = camerapreviewsizefinder1.a(parameters, i1, d1, flag1);
        }
        aobj1 = new Object[2];
        aobj1[0] = Integer.valueOf(resolution.a());
        aobj1[1] = Integer.valueOf(resolution.b());
        Timber.c("BaseCameraFragment", "Preview Size Finding: preview size [%d, %d]", aobj1);
        return resolution;
    }

    public void a(SurfaceTexture surfacetexture)
    {
        Resolution resolution;
        if (!j.i())
        {
            if ((resolution = j.j()) != null)
            {
                a(surfacetexture, a(resolution));
                b.a(resolution, new PortraitDisplayMetrics());
                return;
            }
        }
    }

    protected void a(SurfaceTexture surfacetexture, byte abyte0[])
    {
        if (j.i() || c == null)
        {
            return;
        }
        c.a(surfacetexture);
        if (abyte0 != null)
        {
            c.a(abyte0);
            if (i != null)
            {
                i.a();
            }
            i = new PreviewCallbackMessenger(k(), c, this);
            c.a(i);
        }
        c.g();
    }

    protected void a(android.hardware.Camera.Parameters parameters)
    {
        Resolution resolution = a(new PortraitDisplayMetrics(), m, parameters);
        j.a(resolution);
        a(parameters, resolution);
        c(parameters);
        d(parameters);
        b(parameters);
        c.a(parameters);
        int i1 = l.a(j);
        c.a(i1);
    }

    public void a(Surface surface)
    {
    }

    protected void a(CameraDecor cameradecor)
    {
        d = cameradecor;
    }

    public void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, int i1)
    {
        if (cameraproxy != null)
        {
            c = cameraproxy;
            android.hardware.Camera.Parameters parameters = c.c();
            if (!j.i() && parameters != null && getActivity() != null)
            {
                j.a(c);
                j.c(i1);
                a(parameters);
                f();
                j.c(false);
                d.a(j.e());
                return;
            }
        }
    }

    public void a(CameraManager cameramanager)
    {
    }

    protected void a(boolean flag)
    {
        if (c != null)
        {
            c.b(flag);
            c.a(null);
            if (i != null)
            {
                i.a();
            }
            c.a(flag);
            c = null;
        }
        j.g();
    }

    public void a(byte abyte0[], com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
    }

    protected byte[] a(Resolution resolution)
    {
        return null;
    }

    protected void b()
    {
        g.setEnabled(false);
        g.setScrollable(false);
    }

    public void b(int i1)
    {
        j.c(false);
    }

    protected void b(android.hardware.Camera.Parameters parameters)
    {
    }

    protected void c()
    {
        k_();
        i();
    }

    public void c(int i1)
    {
        j.c(false);
    }

    public boolean e()
    {
        return d.e();
    }

    protected void f()
    {
        if (b == null)
        {
            k_();
        } else
        {
            SurfaceTexture surfacetexture = b.a(this);
            if (surfacetexture != null && j.j() != null)
            {
                a(surfacetexture, a(j.j()));
                b.a(j.j(), new PortraitDisplayMetrics());
                return;
            }
        }
    }

    protected boolean k_()
    {
        if (b != null)
        {
            return false;
        }
        b = (CameraView)f.findViewById(0x7f0a0000);
        if (b == null)
        {
            b = new CameraView(getActivity(), null);
            b.setId(0x7f0a0000);
            f.addView(b);
        }
        return true;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle != null)
        {
            d.b(bundle);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04000e, viewgroup, false);
        h = PreferenceManager.getDefaultSharedPreferences(getActivity());
        if (b != null && ApiHelper.a)
        {
            d(0x7f0a0088).setVisibility(8);
        }
        f = (FrameLayout)d(0x7f0a0082);
        e = (RelativeLayout)d(0x7f0a0086);
        a(a(e));
        g = (ProfileViewFlipper)d(0x7f0a0083);
        b();
        return x;
    }

    public void onPause()
    {
        super.onPause();
        Timber.a("BaseCameraFragment", "BaseCameraFragment onPause", new Object[0]);
        j.d(true);
        if (j.f())
        {
            CameraManagerFactory.a().a();
            return;
        } else
        {
            a(true);
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
        Timber.a("BaseCameraFragment", "BaseCameraFragment onResume", new Object[0]);
        if (h())
        {
            return;
        } else
        {
            j.d(false);
            c();
            return;
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        d.a(bundle);
    }
}
