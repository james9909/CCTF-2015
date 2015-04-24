// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import com.snapchat.android.Timber;
import com.snapchat.android.camera.util.PortraitDisplayMetrics;
import com.snapchat.android.util.Resolution;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class VideoRecordingSizeFinder
{

    protected VideoRecordingSizeFinder()
    {
    }

    private void a(List list)
    {
        Collections.sort(list, new Comparator() {

            final VideoRecordingSizeFinder a;

            public int a(Resolution resolution, Resolution resolution1)
            {
                return resolution1.d() - resolution.d();
            }

            public int compare(Object obj, Object obj1)
            {
                return a((Resolution)obj, (Resolution)obj1);
            }

            
            {
                a = VideoRecordingSizeFinder.this;
                super();
            }
        });
    }

    private boolean a(Resolution resolution, double d1, double d2, int i)
    {
        while (resolution == null || d1 > d2 || resolution.b() < i) 
        {
            return false;
        }
        return true;
    }

    protected Resolution a()
    {
        PortraitDisplayMetrics portraitdisplaymetrics = new PortraitDisplayMetrics();
        return new Resolution(portraitdisplaymetrics.widthPixels, portraitdisplaymetrics.heightPixels);
    }

    public Resolution a(android.hardware.Camera.Parameters parameters, int i, double d1, boolean flag)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf(d1);
        Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: finding best fit video size for AspectRatio[%f]", aobj);
        return a(b(parameters, true), d1, flag);
    }

    protected Resolution a(List list, double d1, boolean flag)
    {
        double d2 = 1.7976931348623157E+308D;
        Resolution resolution = null;
        a(list);
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf(d1);
        Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: Target aspect ratio %f", aobj);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution1 = (Resolution)iterator.next();
            double d3 = Math.abs(resolution1.c() - d1);
            Object aobj2[] = new Object[5];
            aobj2[0] = Integer.valueOf(resolution1.a());
            aobj2[1] = Integer.valueOf(resolution1.b());
            aobj2[2] = Double.valueOf(resolution1.c());
            aobj2[3] = Double.valueOf(d3);
            aobj2[4] = Boolean.valueOf(flag);
            Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: [%d x %d] AR [%f] difference [%f] pickhighest [%b]", aobj2);
            if (d3 < d2 || !flag && a(resolution, d3, d2, 720))
            {
                resolution = resolution1;
                d2 = d3;
            }
        } while (true);
        if (resolution != null)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(resolution.a());
            aobj1[1] = Integer.valueOf(resolution.b());
            Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: Determined best size as [%d x %d]", aobj1);
            return resolution;
        } else
        {
            Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: no good preview size found", new Object[0]);
            return resolution;
        }
    }

    protected List b(android.hardware.Camera.Parameters parameters, boolean flag)
    {
        List list = parameters.getSupportedVideoSizes();
        if (list == null)
        {
            Timber.c("VideoRecordingSizeFinder", "Preview Size Finding: preview output is the same as video output", new Object[0]);
            list = parameters.getSupportedPreviewSizes();
        }
        Object obj;
        if (list == null)
        {
            Timber.e("VideoRecordingSizeFinder", "Can not get sizes from hardware returning empty list", new Object[0]);
            obj = new ArrayList();
        } else
        {
            obj = d(list);
            if (flag)
            {
                c(((List) (obj)));
                return ((List) (obj));
            }
        }
        return ((List) (obj));
    }

    protected void c(List list)
    {
        Iterator iterator = list.iterator();
        Resolution resolution = a();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution1 = (Resolution)iterator.next();
            if (resolution1.a(resolution))
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(resolution1.a());
                aobj[1] = Integer.valueOf(resolution1.b());
                Timber.c("VideoRecordingSizeFinder", "Preview Size Finder: Removing [%d, %d]. TOO LARGE!", aobj);
                iterator.remove();
            }
        } while (true);
    }

    protected List d(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.hardware.Camera.Size size = (android.hardware.Camera.Size)iterator.next();
            if (size != null)
            {
                arraylist.add(new Resolution(size.width, size.height));
            }
        } while (true);
        return arraylist;
    }
}
