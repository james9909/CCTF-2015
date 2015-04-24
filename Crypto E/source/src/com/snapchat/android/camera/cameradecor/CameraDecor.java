// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class CameraDecor
{
    public static interface CameraDecorInterface
    {

        public abstract void a(float f);

        public abstract void a(int j, boolean flag);

        public abstract void a(TakeSnapButtonAction takesnapbuttonaction);

        public abstract void a(com.snapchat.android.camera.model.CameraModel.CameraType cameratype);

        public abstract void b(MotionEvent motionevent);

        public abstract void c(boolean flag);

        public abstract FragmentActivity h();

        public abstract boolean i();

        public abstract boolean l_();

        public abstract boolean q();

        public abstract boolean s();

        public abstract void t();

        public abstract void w();
    }

    public static final class CameraDecorInterface.TakeSnapButtonAction extends Enum
    {

        public static final CameraDecorInterface.TakeSnapButtonAction a;
        public static final CameraDecorInterface.TakeSnapButtonAction b;
        private static final CameraDecorInterface.TakeSnapButtonAction c[];

        public static CameraDecorInterface.TakeSnapButtonAction valueOf(String s)
        {
            return (CameraDecorInterface.TakeSnapButtonAction)Enum.valueOf(com/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction, s);
        }

        public static CameraDecorInterface.TakeSnapButtonAction[] values()
        {
            return (CameraDecorInterface.TakeSnapButtonAction[])c.clone();
        }

        static 
        {
            a = new CameraDecorInterface.TakeSnapButtonAction("FINGER_DOWN", 0);
            b = new CameraDecorInterface.TakeSnapButtonAction("FINGER_UP", 1);
            CameraDecorInterface.TakeSnapButtonAction atakesnapbuttonaction[] = new CameraDecorInterface.TakeSnapButtonAction[2];
            atakesnapbuttonaction[0] = a;
            atakesnapbuttonaction[1] = b;
            c = atakesnapbuttonaction;
        }

        private CameraDecorInterface.TakeSnapButtonAction(String s, int i)
        {
            super(s, i);
        }
    }


    protected final CameraDecorInterface a;

    protected CameraDecor(Context context, RelativeLayout relativelayout, CameraDecorInterface cameradecorinterface)
    {
        a = cameradecorinterface;
    }

    public void a()
    {
    }

    public void a(int i, int j)
    {
    }

    public void a(Bundle bundle)
    {
    }

    public void a(boolean flag)
    {
    }

    public boolean a(MotionEvent motionevent)
    {
        return false;
    }

    public void b()
    {
    }

    public void b(Bundle bundle)
    {
    }

    public void b(boolean flag)
    {
    }

    public void c()
    {
    }

    public void d()
    {
    }

    public boolean e()
    {
        return false;
    }
}
