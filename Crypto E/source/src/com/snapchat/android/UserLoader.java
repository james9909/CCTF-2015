// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.Activity;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import android.support.v4.content.AsyncTaskLoader;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.model.User;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.debug.TimeLogger;
import java.io.File;

// Referenced classes of package com.snapchat.android:
//            Timber

public class UserLoader extends AsyncTaskLoader
{

    private final Activity a;

    public UserLoader(Activity activity)
    {
        super(activity);
        a = activity;
    }

    public User a()
    {
        TimeLogger.a();
        android.content.Context context = getContext();
        long l = SystemClock.elapsedRealtime();
        User user;
        try
        {
            long l1 = (new File(DatabaseHelper.a(context).getWritableDatabase().getPath())).length();
            TimeLogger.e((new StringBuilder()).append("UserLoader.loadInBackground DB SIZE ").append(l1).append(" bytes").toString());
        }
        catch (SQLiteException sqliteexception)
        {
            Object aobj[] = new Object[1];
            aobj[0] = sqliteexception.getMessage();
            Timber.e("UserLoader", "Error while opening database: %s", aobj);
            ActivityLauncher.a(a);
            return null;
        }
        user = User.a(context);
        Timber.c("UserLoader", (new StringBuilder()).append("loadInBackground() Elapsed Time: ").append(SystemClock.elapsedRealtime() - l).toString(), new Object[0]);
        TimeLogger.b();
        return user;
    }

    public Object loadInBackground()
    {
        return a();
    }

    protected void onStartLoading()
    {
        forceLoad();
    }

    protected void onStopLoading()
    {
        cancelLoad();
    }
}
