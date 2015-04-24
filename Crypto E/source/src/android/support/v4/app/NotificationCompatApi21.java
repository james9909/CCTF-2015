// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package android.support.v4.app:
//            NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor, NotificationCompatApi20

class NotificationCompatApi21
{
    public static class Builder
        implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor
    {

        private android.app.Notification.Builder b;

        public void addAction(NotificationCompatBase.Action action)
        {
            NotificationCompatApi20.addAction(b, action);
        }

        public Notification build()
        {
            return b.build();
        }

        public android.app.Notification.Builder getBuilder()
        {
            return b;
        }

        public Builder(Context context, Notification notification, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, RemoteViews remoteviews, int i, 
                PendingIntent pendingintent, PendingIntent pendingintent1, Bitmap bitmap, int j, int k, boolean flag, boolean flag1, 
                boolean flag2, int l, CharSequence charsequence3, boolean flag3, String s, ArrayList arraylist, Bundle bundle, 
                int i1, int j1, Notification notification1, String s1, boolean flag4, String s2)
        {
            android.app.Notification.Builder builder = (new android.app.Notification.Builder(context)).setWhen(notification.when).setShowWhen(flag1).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteviews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
            boolean flag5;
            android.app.Notification.Builder builder1;
            boolean flag6;
            android.app.Notification.Builder builder2;
            boolean flag7;
            android.app.Notification.Builder builder3;
            boolean flag8;
            if ((2 & notification.flags) != 0)
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
            builder1 = builder.setOngoing(flag5);
            if ((8 & notification.flags) != 0)
            {
                flag6 = true;
            } else
            {
                flag6 = false;
            }
            builder2 = builder1.setOnlyAlertOnce(flag6);
            if ((0x10 & notification.flags) != 0)
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            builder3 = builder2.setAutoCancel(flag7).setDefaults(notification.defaults).setContentTitle(charsequence).setContentText(charsequence1).setSubText(charsequence3).setContentInfo(charsequence2).setContentIntent(pendingintent).setDeleteIntent(notification.deleteIntent);
            if ((0x80 & notification.flags) != 0)
            {
                flag8 = true;
            } else
            {
                flag8 = false;
            }
            b = builder3.setFullScreenIntent(pendingintent1, flag8).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(flag2).setPriority(l).setProgress(j, k, flag).setLocalOnly(flag3).setExtras(bundle).setGroup(s1).setGroupSummary(flag4).setSortKey(s2).setCategory(s).setColor(i1).setVisibility(j1).setPublicVersion(notification1);
            String s3;
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); b.addPerson(s3))
            {
                s3 = (String)iterator.next();
            }

        }
    }


    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";

    NotificationCompatApi21()
    {
    }

    private static RemoteInput fromCompatRemoteInput(RemoteInputCompatBase.RemoteInput remoteinput)
    {
        return (new android.app.RemoteInput.Builder(remoteinput.getResultKey())).setLabel(remoteinput.getLabel()).setChoices(remoteinput.getChoices()).setAllowFreeFormInput(remoteinput.getAllowFreeFormInput()).addExtras(remoteinput.getExtras()).build();
    }

    static Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation unreadconversation)
    {
        int i = 0;
        if (unreadconversation == null)
        {
            return null;
        }
        Bundle bundle = new Bundle();
        String as[] = unreadconversation.getParticipants();
        String s = null;
        if (as != null)
        {
            int j = unreadconversation.getParticipants().length;
            s = null;
            if (j > 1)
            {
                s = unreadconversation.getParticipants()[0];
            }
        }
        Parcelable aparcelable[];
        for (aparcelable = new Parcelable[unreadconversation.getMessages().length]; i < aparcelable.length; i++)
        {
            Bundle bundle1 = new Bundle();
            bundle1.putString("text", unreadconversation.getMessages()[i]);
            bundle1.putString("author", s);
            aparcelable[i] = bundle1;
        }

        bundle.putParcelableArray("messages", aparcelable);
        RemoteInputCompatBase.RemoteInput remoteinput = unreadconversation.getRemoteInput();
        if (remoteinput != null)
        {
            bundle.putParcelable("remote_input", fromCompatRemoteInput(remoteinput));
        }
        bundle.putParcelable("on_reply", unreadconversation.getReplyPendingIntent());
        bundle.putParcelable("on_read", unreadconversation.getReadPendingIntent());
        bundle.putStringArray("participants", unreadconversation.getParticipants());
        bundle.putLong("timestamp", unreadconversation.getLatestTimestamp());
        return bundle;
    }

    public static String getCategory(Notification notification)
    {
        return notification.category;
    }

    static NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle bundle, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory1)
    {
        if (bundle != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        Parcelable aparcelable[];
        String as2[];
        int i;
        aparcelable = bundle.getParcelableArray("messages");
        if (aparcelable == null)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        as2 = new String[aparcelable.length];
        i = 0;
_L9:
        if (i >= as2.length) goto _L4; else goto _L3
_L3:
        boolean flag;
        boolean flag1;
        flag1 = aparcelable[i] instanceof Bundle;
        flag = false;
        if (flag1) goto _L6; else goto _L5
_L5:
        if (!flag) goto _L1; else goto _L7
_L7:
        String as[] = as2;
_L10:
        PendingIntent pendingintent = (PendingIntent)bundle.getParcelable("on_read");
        PendingIntent pendingintent1 = (PendingIntent)bundle.getParcelable("on_reply");
        RemoteInput remoteinput = (RemoteInput)bundle.getParcelable("remote_input");
        String as1[] = bundle.getStringArray("participants");
        if (as1 != null && as1.length == 1)
        {
            RemoteInputCompatBase.RemoteInput remoteinput1;
            String s;
            if (remoteinput != null)
            {
                remoteinput1 = toCompatRemoteInput(remoteinput, factory1);
            } else
            {
                remoteinput1 = null;
            }
            return factory.build(as, remoteinput1, pendingintent1, pendingintent, as1, bundle.getLong("timestamp"));
        }
          goto _L1
_L6:
        as2[i] = ((Bundle)aparcelable[i]).getString("text");
        s = as2[i];
        flag = false;
        if (s == null) goto _L5; else goto _L8
_L8:
        i++;
          goto _L9
_L4:
        flag = true;
          goto _L5
        as = null;
          goto _L10
    }

    private static RemoteInputCompatBase.RemoteInput toCompatRemoteInput(RemoteInput remoteinput, RemoteInputCompatBase.RemoteInput.Factory factory)
    {
        return factory.build(remoteinput.getResultKey(), remoteinput.getLabel(), remoteinput.getChoices(), remoteinput.getAllowFreeFormInput(), remoteinput.getExtras());
    }
}
