// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.HandlerThread;
import android.os.Message;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.CameraUtils;
import com.snapchat.android.camera.hardware.callback.AutofocusCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.CameraOpenCallbackMessenger;
import com.snapchat.android.camera.hardware.callback.PreviewCallbackMessenger;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.camera.hardware:
//            CameraManager, CameraOperationHandler

public class SnapchatCameraManagerImpl
    implements CameraManager, CameraManager.CameraProxy
{

    private final CameraOperationHandler a;
    private final DeviceVideoEncodingResolutionSet b = DeviceVideoEncodingResolutionSet.a();
    private Camera c;
    private android.hardware.Camera.Parameters d;
    private boolean e;

    public SnapchatCameraManagerImpl()
    {
        HandlerThread handlerthread = new HandlerThread("Camera Handler Thread");
        handlerthread.start();
        a = new CameraOperationHandler(handlerthread.getLooper());
    }

    static android.hardware.Camera.Parameters a(SnapchatCameraManagerImpl snapchatcameramanagerimpl, android.hardware.Camera.Parameters parameters)
    {
        snapchatcameramanagerimpl.d = parameters;
        return parameters;
    }

    static Camera a(SnapchatCameraManagerImpl snapchatcameramanagerimpl)
    {
        return snapchatcameramanagerimpl.c;
    }

    static Camera a(SnapchatCameraManagerImpl snapchatcameramanagerimpl, Camera camera)
    {
        snapchatcameramanagerimpl.c = camera;
        return camera;
    }

    static void a(SnapchatCameraManagerImpl snapchatcameramanagerimpl, int i, CameraOpenCallbackMessenger cameraopencallbackmessenger)
    {
        snapchatcameramanagerimpl.b(i, cameraopencallbackmessenger);
    }

    static boolean a(SnapchatCameraManagerImpl snapchatcameramanagerimpl, boolean flag)
    {
        snapchatcameramanagerimpl.e = flag;
        return flag;
    }

    private void b(int i, CameraOpenCallbackMessenger cameraopencallbackmessenger)
    {
        c = CameraUtils.a(i);
        if (c != null)
        {
            d = c.getParameters();
            b.a(d);
            cameraopencallbackmessenger.a(this, i);
            return;
        } else
        {
            cameraopencallbackmessenger.c(i);
            return;
        }
    }

    static boolean b(SnapchatCameraManagerImpl snapchatcameramanagerimpl)
    {
        return snapchatcameramanagerimpl.e;
    }

    static android.hardware.Camera.Parameters c(SnapchatCameraManagerImpl snapchatcameramanagerimpl)
    {
        return snapchatcameramanagerimpl.d;
    }

    public void a()
    {
        a(true);
    }

    public void a(int i)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.m.ordinal(), new CameraOperationHandler.CameraOperation(i) {

            final int a;
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(b).setDisplayOrientation(a);
                    return;
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = i;
                super();
            }
        }).sendToTarget();
    }

    public void a(int i, CameraOpenCallbackMessenger cameraopencallbackmessenger)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.a.ordinal(), new CameraOperationHandler.CameraOperation(i, cameraopencallbackmessenger) {

            final int a;
            final CameraOpenCallbackMessenger b;
            final SnapchatCameraManagerImpl c;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(c) != null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(c, a, b);
                    return;
                }
            }

            
            {
                c = SnapchatCameraManagerImpl.this;
                a = i;
                b = cameraopencallbackmessenger;
                super();
            }
        }).sendToTarget();
    }

    public void a(SurfaceTexture surfacetexture)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.l.ordinal(), new CameraOperationHandler.CameraOperation(surfacetexture) {

            final SurfaceTexture a;
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                }
                try
                {
                    SnapchatCameraManagerImpl.a(b).setPreviewTexture(a);
                    return;
                }
                catch (IOException ioexception)
                {
                    Timber.e("SnapchatCameraManagerImpl", "Could not set preview texture", new Object[0]);
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = surfacetexture;
                super();
            }
        }).sendToTarget();
    }

    public void a(android.hardware.Camera.Parameters parameters)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.c.ordinal(), new CameraOperationHandler.CameraOperation(parameters) {

            final android.hardware.Camera.Parameters a;
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(b, true);
                    SnapchatCameraManagerImpl.a(b).setParameters(a);
                    return;
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = parameters;
                super();
            }
        }).sendToTarget();
    }

    public void a(AutofocusCallbackMessenger autofocuscallbackmessenger)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.h.ordinal(), new CameraOperationHandler.CameraOperation(autofocuscallbackmessenger) {

            final AutofocusCallbackMessenger a;
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(b).autoFocus(a);
                    return;
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = autofocuscallbackmessenger;
                super();
            }
        }).sendToTarget();
    }

    public void a(PreviewCallbackMessenger previewcallbackmessenger)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.k.ordinal(), new CameraOperationHandler.CameraOperation(previewcallbackmessenger) {

            final PreviewCallbackMessenger a;
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(b).setPreviewCallbackWithBuffer(a);
                    return;
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = previewcallbackmessenger;
                super();
            }
        }).sendToTarget();
    }

    public void a(boolean flag)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.b.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(a).release();
                    SnapchatCameraManagerImpl.a(a, null);
                    SnapchatCameraManagerImpl.a(a, null);
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
        if (flag)
        {
            a.d();
        }
    }

    public void a(byte abyte0[])
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.n.ordinal(), new CameraOperationHandler.CameraOperation(abyte0) {

            final byte a[];
            final SnapchatCameraManagerImpl b;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(b) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(b).addCallbackBuffer(a);
                    return;
                }
            }

            
            {
                b = SnapchatCameraManagerImpl.this;
                a = abyte0;
                super();
            }
        }).sendToTarget();
    }

    public Camera b()
    {
        return c;
    }

    public void b(boolean flag)
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.j.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(a).stopPreview();
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
        if (flag)
        {
            a.d();
        }
    }

    public android.hardware.Camera.Parameters c()
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.d.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) != null && (SnapchatCameraManagerImpl.b(a) || SnapchatCameraManagerImpl.c(a) == null))
                {
                    SnapchatCameraManagerImpl.a(a, SnapchatCameraManagerImpl.a(a).getParameters());
                    SnapchatCameraManagerImpl.a(a, false);
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
        a.d();
        return d;
    }

    public void d()
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.e.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(a).unlock();
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
        a.d();
    }

    public void e()
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.f.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(a).lock();
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
    }

    public boolean f()
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.g.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                }
                try
                {
                    SnapchatCameraManagerImpl.a(a).reconnect();
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
        a.d();
        return true;
    }

    public void g()
    {
        a.obtainMessage(CameraOperationHandler.CameraOperationType.i.ordinal(), new CameraOperationHandler.CameraOperation() {

            final SnapchatCameraManagerImpl a;

            public void a()
            {
                if (SnapchatCameraManagerImpl.a(a) == null)
                {
                    return;
                } else
                {
                    SnapchatCameraManagerImpl.a(a).startPreview();
                    return;
                }
            }

            
            {
                a = SnapchatCameraManagerImpl.this;
                super();
            }
        }).sendToTarget();
    }
}
