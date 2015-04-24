// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package android.support.v4.app:
//            NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor, NotificationCompatApi20, NotificationCompatApi21

public static class b
    implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor
{

    private android.app._cls21.Builder.b b;

    public void addAction(cessor cessor)
    {
        NotificationCompatApi20.addAction(b, cessor);
    }

    public Notification build()
    {
        return b.b();
    }

    public android.app._cls21.Builder getBuilder()
    {
        return b;
    }

    public cessor(Context context, Notification notification, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, RemoteViews remoteviews, int i, 
            PendingIntent pendingintent, PendingIntent pendingintent1, Bitmap bitmap, int j, int k, boolean flag, boolean flag1, 
            boolean flag2, int l, CharSequence charsequence3, boolean flag3, String s, ArrayList arraylist, Bundle bundle, 
            int i1, int j1, Notification notification1, String s1, boolean flag4, String s2)
    {
        android.app._cls21.Builder builder = (new android.app._cls21.Builder(context)).Builder(notification.when).(flag1).n(notification.icon, notification.iconLevel).n(notification.contentView).n(notification.tickerText, remoteviews).n(notification.sound, notification.audioStreamType).n(notification.vibrate).n(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean flag5;
        android.app._cls21.Builder builder1;
        boolean flag6;
        android.app._cls21.Builder builder2;
        boolean flag7;
        android.app._cls21.Builder builder3;
        boolean flag8;
        if ((2 & notification.flags) != 0)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        builder1 = builder.n(flag5);
        if ((8 & notification.flags) != 0)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        builder2 = builder1.tOnce(flag6);
        if ((0x10 & notification.flags) != 0)
        {
            flag7 = true;
        } else
        {
            flag7 = false;
        }
        builder3 = builder2.el(flag7).(notification.defaults).itle(charsequence).ext(charsequence1).ext(charsequence3).nfo(charsequence2).ntent(pendingintent).tent(notification.deleteIntent);
        if ((0x80 & notification.flags) != 0)
        {
            flag8 = true;
        } else
        {
            flag8 = false;
        }
        b = builder3.enIntent(pendingintent1, flag8).n(bitmap).n(i).nometer(flag2).(l).(j, k, flag).y(flag3).y(bundle).y(s1).mary(flag4).mary(s2).(s).(i1).ty(j1).rsion(notification1);
        String s3;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); b.b(s3))
        {
            s3 = (String)iterator.next();
        }

    }
}
