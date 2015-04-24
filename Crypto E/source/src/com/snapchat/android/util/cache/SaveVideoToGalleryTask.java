// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util.cache:
//            FileUtils

public class SaveVideoToGalleryTask extends AsyncTask
{

    private final Uri a;
    protected final Context c;

    public SaveVideoToGalleryTask(Context context, Uri uri)
    {
        c = context;
        a = uri;
    }

    public SaveVideoToGalleryTask(Context context, String s)
    {
        Uri uri;
        if (TextUtils.isEmpty(s))
        {
            uri = null;
        } else
        {
            uri = Uri.parse(s);
        }
        this(context, uri);
    }

    protected transient Boolean a(Void avoid[])
    {
        boolean flag;
        if (a != null && FileUtils.a(c, a))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    public void a()
    {
    }

    protected void a(Boolean boolean1)
    {
        int i;
        if (boolean1.booleanValue())
        {
            a();
            i = 0x7f0c0170;
        } else
        {
            b();
            i = 0x7f0c016f;
        }
        BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, i));
    }

    public void b()
    {
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }
}
