// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.analytics.handledexceptions.FailedToPersistVideoEncodingResolutionsException;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.Resolution;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

public class DeviceVideoEncodingResolutionSet
{

    private static final DeviceVideoEncodingResolutionSet a = new DeviceVideoEncodingResolutionSet();
    private final Set b;
    private SharedPreferences c;
    private final ExceptionReporter d;

    private DeviceVideoEncodingResolutionSet()
    {
        this(new ExceptionReporter());
    }

    protected DeviceVideoEncodingResolutionSet(ExceptionReporter exceptionreporter)
    {
        b = new HashSet();
        d = exceptionreporter;
    }

    public static DeviceVideoEncodingResolutionSet a()
    {
        return a;
    }

    protected String a(Set set)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Resolution resolution = (Resolution)iterator.next();
            if (resolution != null)
            {
                stringbuilder.append(resolution.a()).append("x").append(resolution.b()).append(",");
            }
        } while (true);
        return stringbuilder.toString();
    }

    protected List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        StringTokenizer stringtokenizer = new StringTokenizer(s, ",");
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s1 = stringtokenizer.nextToken();
            if (!s1.isEmpty())
            {
                Resolution resolution = b(s1);
                if (resolution != null)
                {
                    arraylist.add(resolution);
                }
            }
        } while (true);
        return arraylist;
    }

    protected List a(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        android.hardware.Camera.Size size;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new Resolution(size.width, size.height)))
        {
            size = (android.hardware.Camera.Size)iterator.next();
        }

        return arraylist;
    }

    public void a(Context context)
    {
        a(PreferenceManager.getDefaultSharedPreferences(context));
    }

    protected void a(android.content.SharedPreferences.Editor editor, Set set)
    {
        String s = a(set);
        editor.putString(SharedPreferenceKey.aW.a(), s);
        editor.apply();
    }

    protected void a(SharedPreferences sharedpreferences)
    {
        c = sharedpreferences;
        b(sharedpreferences);
    }

    public void a(android.hardware.Camera.Parameters parameters)
    {
        while (parameters == null || !b.addAll(a(b(parameters)))) 
        {
            return;
        }
        if (c != null)
        {
            a(c.edit(), b);
            return;
        } else
        {
            d.a(new FailedToPersistVideoEncodingResolutionsException());
            return;
        }
    }

    protected Resolution b(String s)
    {
        String as[] = s.split("x");
        if (as.length != 2)
        {
            return null;
        }
        Resolution resolution;
        try
        {
            resolution = new Resolution(Integer.parseInt(as[0]), Integer.parseInt(as[1]));
        }
        catch (NumberFormatException numberformatexception)
        {
            return null;
        }
        return resolution;
    }

    protected List b(android.hardware.Camera.Parameters parameters)
    {
        List list = parameters.getSupportedVideoSizes();
        if (list == null)
        {
            list = parameters.getSupportedPreviewSizes();
        }
        return list;
    }

    public Set b()
    {
        return b;
    }

    protected void b(SharedPreferences sharedpreferences)
    {
        if (sharedpreferences == null)
        {
            return;
        } else
        {
            List list = a(sharedpreferences.getString(SharedPreferenceKey.aW.a(), ""));
            b.addAll(list);
            return;
        }
    }

}
