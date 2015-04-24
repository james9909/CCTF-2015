// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import android.app.Activity;
import android.app.ProgressDialog;
import android.widget.Toast;

public class UiThreadUtil
{
    static class WbUtilHolder
    {

        public static final UiThreadUtil a = new UiThreadUtil();


        private WbUtilHolder()
        {
        }
    }


    private UiThreadUtil()
    {
    }


    // Unreferenced inner class net/hockeyapp/android/utils/UiThreadUtil$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final ProgressDialog a;
        final Activity b;
        final int c;

        public void run()
        {
            if (a != null && a.isShowing())
            {
                a.dismiss();
            }
            b.showDialog(c);
        }
    }


    // Unreferenced inner class net/hockeyapp/android/utils/UiThreadUtil$2

/* anonymous class */
    class _cls2
        implements Runnable
    {

        final ProgressDialog a;

        public void run()
        {
            if (a != null && a.isShowing())
            {
                a.dismiss();
            }
        }
    }


    // Unreferenced inner class net/hockeyapp/android/utils/UiThreadUtil$3

/* anonymous class */
    class _cls3
        implements Runnable
    {

        final Activity a;
        final String b;
        final int c;

        public void run()
        {
            Toast.makeText(a, b, c).show();
        }
    }

}
