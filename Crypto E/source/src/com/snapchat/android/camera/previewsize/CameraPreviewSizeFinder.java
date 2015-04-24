// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.previewsize;

import com.snapchat.android.Timber;
import com.snapchat.android.camera.util.DeviceExceptions;
import com.snapchat.android.util.Resolution;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.snapchat.android.camera.previewsize:
//            VideoRecordingSizeFinder

public class CameraPreviewSizeFinder extends VideoRecordingSizeFinder
{

    private final DeviceExceptions a;

    public CameraPreviewSizeFinder(DeviceExceptions deviceexceptions)
    {
        a = deviceexceptions;
    }

    private Resolution b(android.hardware.Camera.Parameters parameters, double d, boolean flag)
    {
        List list = b(parameters, false);
        List list1 = f(a(parameters, false));
        List list2 = a(list1, list);
        if (list2.isEmpty())
        {
            list2 = list1;
        }
        Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best preview size from list of supported preview sizes", new Object[0]);
        return a(list2, d, flag);
    }

    private Set e(List list)
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); hashset.add(Double.valueOf(((Resolution)iterator.next()).c()))) { }
        return hashset;
    }

    private List f(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        c(arraylist);
        return arraylist;
    }

    public Resolution a(android.hardware.Camera.Parameters parameters, double d, boolean flag)
    {
        Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best HQ preview", new Object[0]);
        List list = b(parameters, true);
        return a(f(a(a(parameters, flag), list)), d, flag);
    }

    public Resolution a(android.hardware.Camera.Parameters parameters, int i, double d, boolean flag)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf(d);
        Timber.c("CameraPreviewSizeFinder", "Preview Size Finding: finding best fit preview size for AspectRatio[%f]", aobj);
        return b(parameters, super.a(parameters, i, d, flag).c(), flag);
    }

    protected List a(android.hardware.Camera.Parameters parameters, boolean flag)
    {
        List list = d(parameters.getSupportedPreviewSizes());
        if (flag)
        {
            list = a(list);
        }
        return b(list);
    }

    protected List a(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!((Resolution)iterator.next()).e())
            {
                iterator.remove();
            }
        } while (true);
        return arraylist;
    }

    protected List a(List list, List list1)
    {
        ArrayList arraylist = new ArrayList(list);
        Set set = e(list1);
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!set.contains(Double.valueOf(((Resolution)iterator.next()).c())))
            {
                iterator.remove();
            }
        } while (true);
        return arraylist;
    }

    protected List b(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        arraylist.removeAll(a.b());
        return arraylist;
    }
}
