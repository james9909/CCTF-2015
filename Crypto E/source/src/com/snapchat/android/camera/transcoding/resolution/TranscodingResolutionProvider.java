// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding.resolution;

import com.snapchat.android.Timber;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import com.snapchat.android.util.Resolution;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class TranscodingResolutionProvider
{

    protected final Resolution a;
    protected final DeviceVideoEncodingResolutionSet b;

    public TranscodingResolutionProvider(Resolution resolution)
    {
        this(resolution, DeviceVideoEncodingResolutionSet.a());
    }

    public TranscodingResolutionProvider(Resolution resolution, DeviceVideoEncodingResolutionSet devicevideoencodingresolutionset)
    {
        a = resolution;
        b = devicevideoencodingresolutionset;
    }

    private float a(Resolution resolution, int i)
    {
        return (float)i / (float)resolution.d();
    }

    private Resolution a(int i, List list)
    {
        if (list.isEmpty())
        {
            return null;
        }
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Resolution resolution = (Resolution)iterator.next();
            if (a(resolution, i) >= 4F)
            {
                return resolution;
            }
        }

        return (Resolution)list.get(-1 + list.size());
    }

    public Resolution a(int i)
    {
        return a(i, b.b());
    }

    public Resolution a(int i, Set set)
    {
        ArrayList arraylist = a();
        a(((List) (arraylist)));
        a(((List) (arraylist)), set);
        Resolution resolution = a(i, ((List) (arraylist)));
        if (resolution == null)
        {
            return null;
        } else
        {
            Timber.a("TranscodingResolutionProvider", (new StringBuilder()).append("Setting bitrate to ").append(i).append(" resolution ").append(resolution.a()).append("x").append(resolution.b()).append(" bitrateperPixel: ").append(a(resolution, i)).toString(), new Object[0]);
            return resolution;
        }
    }

    protected abstract ArrayList a();

    public void a(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution = (Resolution)iterator.next();
            if (a.a() < resolution.a() || a.b() < resolution.b())
            {
                arraylist.add(resolution);
            }
            if ((float)a.a() > 2.5F * (float)resolution.a() || (float)a.b() > 2.5F * (float)resolution.b())
            {
                arraylist.add(resolution);
            }
        } while (true);
        list.removeAll(arraylist);
    }

    protected void a(List list, Set set)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!set.contains((Resolution)iterator.next()))
            {
                iterator.remove();
            }
        } while (true);
    }
}
