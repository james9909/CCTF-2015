// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;

import android.hardware.Camera;
import com.snapchat.android.camera.CameraUtils;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.PreferenceUtils;
import com.snapchat.android.util.Resolution;

public class CameraModel
{
    public static final class CameraType extends Enum
    {

        public static final CameraType a;
        public static final CameraType b;
        public static final CameraType c;
        private static final CameraType d[];

        public static CameraType valueOf(String s)
        {
            return (CameraType)Enum.valueOf(com/snapchat/android/camera/model/CameraModel$CameraType, s);
        }

        public static CameraType[] values()
        {
            return (CameraType[])d.clone();
        }

        static 
        {
            a = new CameraType("FRONT_FACING", 0);
            b = new CameraType("BACK_FACING", 1);
            c = new CameraType("NONE", 2);
            CameraType acameratype[] = new CameraType[3];
            acameratype[0] = a;
            acameratype[1] = b;
            acameratype[2] = c;
            d = acameratype;
        }

        private CameraType(String s, int i1)
        {
            super(s, i1);
        }
    }


    protected int a;
    private android.hardware.Camera.CameraInfo b[];
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private Resolution g;
    private boolean h;
    private com.snapchat.android.camera.hardware.CameraManager.CameraProxy i;
    private boolean j;
    private boolean k;

    public CameraModel()
    {
        b = CameraUtils.a();
        a = Camera.getNumberOfCameras();
        c = -1;
        d = -1;
        e = false;
        j = false;
        k = false;
    }

    private void d(int i1)
    {
        PreferenceUtils.a(SharedPreferenceKey.y.a(), i1);
    }

    public void a()
    {
        c = 1 + c;
        a(CameraUtils.a(c, a));
    }

    public void a(int i1)
    {
        c = i1;
        d(c);
    }

    public void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy)
    {
        i = cameraproxy;
    }

    public void a(CameraType cameratype)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[CameraType.values().length];
                try
                {
                    a[CameraType.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CameraType.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls1.a[cameratype.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 42;
           goto _L1 _L2
_L1:
        int i1 = CameraUtils.a(b);
_L4:
        a(i1);
        return;
_L2:
        i1 = CameraUtils.b(b);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(Resolution resolution)
    {
        g = resolution;
    }

    public void a(boolean flag)
    {
        k = flag;
    }

    public void b(boolean flag)
    {
        j = flag;
    }

    public boolean b()
    {
        return k;
    }

    public boolean b(int i1)
    {
        return d != -1 && i1 >= 0 && i1 < b.length && b[i1].facing == 1;
    }

    public void c(int i1)
    {
        d = i1;
    }

    public void c(boolean flag)
    {
        e = flag;
    }

    public boolean c()
    {
        return j;
    }

    public int d()
    {
        return c;
    }

    public void d(boolean flag)
    {
        f = flag;
    }

    public void e(boolean flag)
    {
        h = flag;
    }

    public boolean e()
    {
        return b(d);
    }

    public boolean f()
    {
        return d == -1;
    }

    public void g()
    {
        d = -1;
        h = false;
        i = null;
        e = false;
    }

    public int h()
    {
        return d;
    }

    public boolean i()
    {
        return f;
    }

    public Resolution j()
    {
        return g;
    }

    public boolean k()
    {
        return h;
    }

    public com.snapchat.android.camera.hardware.CameraManager.CameraProxy l()
    {
        return i;
    }

    public android.hardware.Camera.CameraInfo m()
    {
        if (d != -1)
        {
            return b[d];
        } else
        {
            return null;
        }
    }
}
