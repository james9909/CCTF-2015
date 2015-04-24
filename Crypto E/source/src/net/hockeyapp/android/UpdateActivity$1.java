// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import net.hockeyapp.android.listeners.DownloadFileListener;
import net.hockeyapp.android.tasks.DownloadFileTask;

// Referenced classes of package net.hockeyapp.android:
//            UpdateActivity, UpdateManager, UpdateManagerListener

class dFileListener extends DownloadFileListener
{

    final UpdateActivity a;

    public String a(int i)
    {
        UpdateManagerListener updatemanagerlistener = UpdateManager.b();
        if (updatemanagerlistener != null)
        {
            return updatemanagerlistener.a(i);
        } else
        {
            return null;
        }
    }

    public void a(DownloadFileTask downloadfiletask)
    {
        a.d();
    }

    public void a(DownloadFileTask downloadfiletask, Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            a.c();
            return;
        } else
        {
            a.d();
            return;
        }
    }

    eTask(UpdateActivity updateactivity)
    {
        a = updateactivity;
        super();
    }
}
