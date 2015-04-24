// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.util.gl.GlTextureView;
import com.snapchat.android.util.gl.RawResourceReader;
import com.snapchat.android.util.gl.ShaderHelper;

public class LocalPreview
{
    class MyGlTextureView extends GlTextureView
    {

        final LocalPreview a;

        public void a()
        {
            LocalPreview.a(a);
        }

        public void b()
        {
            LocalPreview.a(a, a.c);
        }

        protected MyGlTextureView(Context context)
        {
            a = LocalPreview.this;
            super(context);
        }
    }

    public class NativeLibraryException extends Exception
    {

        final LocalPreview a;

        private NativeLibraryException(String s)
        {
            a = LocalPreview.this;
            super(s);
        }

    }


    private static boolean d;
    protected Context a;
    protected DisplayMetrics b;
    protected byte c[];
    private MyGlTextureView e;

    public LocalPreview(Context context)
    {
        if (!d)
        {
            throw new NativeLibraryException("Native library failed to load.");
        } else
        {
            a = context;
            b = context.getResources().getDisplayMetrics();
            e = new MyGlTextureView(context);
            return;
        }
    }

    static void a(LocalPreview localpreview)
    {
        localpreview.g();
    }

    static void a(LocalPreview localpreview, byte abyte0[])
    {
        localpreview.nativeRenderFrame(abyte0);
    }

    public static void a(boolean flag)
    {
        d = flag;
    }

    public static boolean a()
    {
        return d;
    }

    private void g()
    {
        nativeInitialize(ShaderHelper.a(ShaderHelper.a(35633, RawResourceReader.a(a, 0x7f060002)), ShaderHelper.a(35632, RawResourceReader.a(a, 0x7f060001)), new String[] {
            "a_Position", "a_TexCoordinate", "a_CircleCoordinate"
        }));
    }

    private static native void nativeInitialize(int i);

    private static native boolean nativeIsPreviewSizeSet();

    private static native void nativeReflectX();

    private static native void nativeReflectY();

    private native void nativeRenderFrame(byte abyte0[]);

    private static native void nativeResetPreviewSize();

    private static native void nativeSetCircleRadius(float f1);

    private static native void nativeSetPreviewSize(int i, int j, int k, int l);

    public void a(float f1)
    {
        nativeSetCircleRadius(f1);
    }

    public void a(int i, int j, int k, int l)
    {
        nativeSetPreviewSize(i, j, k, l);
    }

    public void a(byte abyte0[])
    {
        c = abyte0;
        e.c();
    }

    public View b()
    {
        return e;
    }

    public boolean c()
    {
        return nativeIsPreviewSizeSet();
    }

    public void d()
    {
        nativeResetPreviewSize();
    }

    public void e()
    {
        nativeReflectX();
    }

    public void f()
    {
        nativeReflectY();
    }

    static 
    {
        try
        {
            System.loadLibrary("stlport_shared");
            System.loadLibrary("LocalPreview");
            d = true;
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            Object aobj[] = new Object[1];
            aobj[0] = unsatisfiedlinkerror.getMessage();
            Timber.c("GlCameraPreview", "System.loadLibrary(\"LocalPreview\") failed: %s.", aobj);
        }
    }
}
