// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.tasks;

import android.content.DialogInterface;
import java.lang.ref.WeakReference;
import net.hockeyapp.android.UpdateManager;
import net.hockeyapp.android.utils.VersionCache;
import org.json.JSONArray;

// Referenced classes of package net.hockeyapp.android.tasks:
//            CheckUpdateTask

class a
    implements android.content.ClickListener
{

    final JSONArray a;
    final CheckUpdateTask b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (b.b())
        {
            VersionCache.a(CheckUpdateTask.b(b), "[]");
        }
        WeakReference weakreference = new WeakReference(CheckUpdateTask.b(b));
        if (UpdateManager.a().booleanValue() && UpdateManager.a(weakreference).booleanValue())
        {
            CheckUpdateTask.a(b, a);
            return;
        } else
        {
            CheckUpdateTask.a(b, a, Boolean.valueOf(false));
            return;
        }
    }

    r(CheckUpdateTask checkupdatetask, JSONArray jsonarray)
    {
        b = checkupdatetask;
        a = jsonarray;
        super();
    }
}
