// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportGenerator

public class ShakeReporter
    implements SensorEventListener
{
    public static interface BugReporter
    {

        public abstract void a(Activity activity, ShakeReporter shakereporter);
    }


    private SensorManager a;
    private Activity b;
    private boolean c;
    private float d[];
    private float e[];
    private float f[];
    private int g;
    private boolean h;
    private int i;
    private BugReporter j;

    public ShakeReporter()
    {
        d = new float[20];
        e = new float[20];
        f = new float[20];
        h = false;
    }

    static float a(float af[], float f1, float f2)
    {
        int k = af.length;
        int l = 0;
        float f3 = f1;
        while (l < k) 
        {
            float f6 = af[l];
            int i1;
            int j1;
            float f4;
            float f5;
            if (f6 >= f3)
            {
                f6 = f3;
            }
            l++;
            f3 = f6;
        }
        i1 = af.length;
        j1 = 0;
        f4 = f2;
        while (j1 < i1) 
        {
            f5 = af[j1];
            if (f5 <= f4)
            {
                f5 = f4;
            }
            j1++;
            f4 = f5;
        }
        return Math.abs(f4 - f3);
    }

    private void a(float af[])
    {
        b(af);
        if (g() && f())
        {
            c = false;
            d();
        }
    }

    private void b(float af[])
    {
        d[g] = af[0];
        e[g] = af[1];
        f[g] = af[2];
        g = 1 + g;
        if (g == d.length)
        {
            h = true;
            g = 0;
        }
    }

    private boolean g()
    {
        if (!h)
        {
            return false;
        }
        float f1 = a(d, 3.402823E+38F, 1.401298E-45F);
        float f2 = a(e, 3.402823E+38F, 1.401298E-45F);
        float f3 = a(f, 3.402823E+38F, 1.401298E-45F);
        if (f1 > 18F || f2 > 18F || f3 > 18F)
        {
            if (i > 2)
            {
                i = 0;
                return true;
            } else
            {
                i = 1 + i;
                e();
                return false;
            }
        } else
        {
            i = 0;
            return false;
        }
    }

    private void h()
    {
        e();
        c = true;
    }

    public void a()
    {
        a.registerListener(this, a.getDefaultSensor(1), 1);
    }

    public void a(Activity activity)
    {
        b = activity;
        a = (SensorManager)activity.getSystemService("sensor");
        c = true;
        j = new BugReportGenerator();
    }

    public void a(boolean flag)
    {
        h();
    }

    float[] a(SensorEvent sensorevent)
    {
        float af[] = new float[3];
        af[0] = sensorevent.values[0];
        af[1] = sensorevent.values[1];
        af[2] = sensorevent.values[2];
        return af;
    }

    public void b()
    {
        a.unregisterListener(this);
    }

    public void c()
    {
        b = null;
        j = null;
    }

    protected void d()
    {
        if (j != null)
        {
            j.a(b, this);
        }
    }

    void e()
    {
        h = false;
        g = 0;
    }

    boolean f()
    {
        return c;
    }

    public void onAccuracyChanged(Sensor sensor, int k)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        a(a(sensorevent));
    }
}
