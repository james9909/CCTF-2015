// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.s;

public abstract class g
{
    public static class a extends Exception
    {

        public a(String s1)
        {
            super(s1);
        }

        public a(String s1, Throwable throwable)
        {
            super(s1, throwable);
        }
    }


    private final String aaX;
    private Object aaY;

    public g(String s1)
    {
        aaX = s1;
    }

    public final Object K(Context context)
    {
        if (aaY == null)
        {
            s.l(context);
            Context context1 = GooglePlayServicesUtil.getRemoteContext(context);
            if (context1 == null)
            {
                throw new a("Could not get remote context.");
            }
            ClassLoader classloader = context1.getClassLoader();
            try
            {
                aaY = d((IBinder)classloader.loadClass(aaX).newInstance());
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                throw new a("Could not load creator class.", classnotfoundexception);
            }
            catch (InstantiationException instantiationexception)
            {
                throw new a("Could not instantiate creator.", instantiationexception);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new a("Could not access creator.", illegalaccessexception);
            }
        }
        return aaY;
    }

    public abstract Object d(IBinder ibinder);
}
