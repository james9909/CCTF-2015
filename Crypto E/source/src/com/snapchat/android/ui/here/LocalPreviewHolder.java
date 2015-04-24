// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.content.Context;
import android.view.TextureView;
import android.view.View;
import com.snapchat.android.analytics.framework.ErrorMetric;

// Referenced classes of package com.snapchat.android.ui.here:
//            LocalPreview

class LocalPreviewHolder
{

    private LocalPreview a;

    LocalPreviewHolder()
    {
    }

    public View a(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        a = new LocalPreview(context);
_L3:
        if (a != null) goto _L2; else goto _L1
_L1:
        Object obj = new TextureView(context);
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((View) (obj));
        LocalPreview.NativeLibraryException nativelibraryexception;
        nativelibraryexception;
        (new ErrorMetric(nativelibraryexception.getMessage())).a(nativelibraryexception).c();
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L2:
        View view = a.b();
        obj = view;
          goto _L4
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            a.d();
        }
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        LocalPreview.a(false);
        a = null;
        (new ErrorMetric("resetPreviewSize() UnsatisfiedLinkError")).a(unsatisfiedlinkerror).c();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(float f)
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            a.a(f);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(int i, int j, int k, int l, android.hardware.Camera.CameraInfo camerainfo)
    {
        this;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        boolean flag = a.c();
        if (!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        a.a(i, j, k, l);
        if (camerainfo.facing != 1) goto _L2; else goto _L4
_L4:
        camerainfo.orientation;
        JVM INSTR lookupswitch 4: default 96
    //                   0: 23
    //                   90: 134
    //                   180: 144
    //                   270: 161;
           goto _L5 _L2 _L6 _L7 _L8
_L5:
        throw new RuntimeException((new StringBuilder()).append("Illegal camera orientation: ").append(camerainfo.orientation).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        a.f();
          goto _L2
_L7:
        a.e();
        a.f();
          goto _L2
_L8:
        a.e();
          goto _L2
    }

    public void a(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            a.a(abyte0);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
