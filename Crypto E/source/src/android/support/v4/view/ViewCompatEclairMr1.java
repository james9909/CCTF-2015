// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ViewCompatEclairMr1
{

    public static final String TAG = "ViewCompat";
    private static Method sChildrenDrawingOrderMethod;

    ViewCompatEclairMr1()
    {
    }

    public static boolean isOpaque(View view)
    {
        return view.isOpaque();
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewgroup, boolean flag)
    {
        if (sChildrenDrawingOrderMethod == null)
        {
            Method method;
            Object aobj[];
            try
            {
                Class aclass[] = new Class[1];
                aclass[0] = Boolean.TYPE;
                sChildrenDrawingOrderMethod = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", aclass);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", nosuchmethodexception);
            }
            sChildrenDrawingOrderMethod.setAccessible(true);
        }
        try
        {
            method = sChildrenDrawingOrderMethod;
            aobj = new Object[1];
            aobj[0] = Boolean.valueOf(flag);
            method.invoke(viewgroup, aobj);
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", illegalaccessexception);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", illegalargumentexception);
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", invocationtargetexception);
        }
    }
}
