// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v4.app.NotificationManagerCompat;
import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api.SyncAllTask;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.database.table.ChatsReceivedInLastHourTable;
import com.snapchat.android.database.table.ConversationTable;
import com.snapchat.android.database.table.NotificationTable;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.UsernameDisplayNamePair;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.ApiHelper;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.snapchat.android.notification:
//            UploadLogNotificationResponder

public class AndroidNotificationManager
{
    public static final class Destination extends Enum
    {

        public static final Destination a;
        private static final Destination b[];

        public static Destination valueOf(String s)
        {
            return (Destination)Enum.valueOf(com/snapchat/android/notification/AndroidNotificationManager$Destination, s);
        }

        public static Destination[] values()
        {
            return (Destination[])b.clone();
        }

        static 
        {
            a = new Destination("ADD_FRIENDS", 0);
            Destination adestination[] = new Destination[1];
            adestination[0] = a;
            b = adestination;
        }

        private Destination(String s, int k)
        {
            super(s, k);
        }
    }

    public static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        public static final Type c;
        public static final Type d;
        public static final Type e;
        public static final Type f;
        public static final Type g;
        public static final Type h;
        public static final Type i;
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final Type m;
        public static final Type n;
        public static final Type o;
        public static final Type p;
        private static final Type r[];
        private final int q;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/android/notification/AndroidNotificationManager$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])r.clone();
        }

        public int a()
        {
            return q;
        }

        public String b()
        {
            return (new StringBuilder("LANDING_PAGE_ACTION_FROM_NOTIF_TYPE")).append(name()).toString();
        }

        static 
        {
            a = new Type("SNAP", 0, 0);
            b = new Type("CHAT", 1, 0);
            c = new Type("ADDFRIEND", 2, 1);
            d = new Type("REPLAY", 3, 2);
            e = new Type("TYPING", 4, 3);
            f = new Type("SCREENSHOT", 5, 4);
            g = new Type("CHAT_SCREENSHOT", 6, 5);
            h = new Type("HERE_SCREENSHOT", 7, 6);
            i = new Type("STORIES", 8, 7);
            j = new Type("CASH", 9, 11);
            k = new Type("CASH_MESSAGE", 10, 13);
            l = new Type("FAILED_SNAP_AND_CHAT", 11, 8);
            m = new Type("FAILED_CHAT_NOT_FRIENDS", 12, 9);
            n = new Type("UPLOAD_LOGS_REQUEST", 13, 10);
            o = new Type("FAILED_CASH", 14, 12);
            p = new Type("EMAIL_VERIFIED", 15, 15);
            Type atype[] = new Type[16];
            atype[0] = a;
            atype[1] = b;
            atype[2] = c;
            atype[3] = d;
            atype[4] = e;
            atype[5] = f;
            atype[6] = g;
            atype[7] = h;
            atype[8] = i;
            atype[9] = j;
            atype[10] = k;
            atype[11] = l;
            atype[12] = m;
            atype[13] = n;
            atype[14] = o;
            atype[15] = p;
            r = atype;
        }

        private Type(String s, int i1, int j1)
        {
            super(s, i1);
            q = j1;
        }
    }


    private static final String a[];
    private static final long b[] = {
        0L, 50L, 100L, 180L
    };
    private static String c;
    private static AndroidNotificationManager d;
    private final SnapchatServiceManager e;
    private final ChatsReceivedInLastHourTable f;
    private final LoadConversationPageTaskExecutor g;
    private boolean h;
    private Handler i;
    private final UserPrefs j;

    private AndroidNotificationManager()
    {
        this(ChatsReceivedInLastHourTable.b(), SnapchatServiceManager.a(), LoadConversationPageTaskExecutor.a(), UserPrefs.a());
    }

    AndroidNotificationManager(ChatsReceivedInLastHourTable chatsreceivedinlasthourtable, SnapchatServiceManager snapchatservicemanager, LoadConversationPageTaskExecutor loadconversationpagetaskexecutor, UserPrefs userprefs)
    {
        f = chatsreceivedinlasthourtable;
        e = snapchatservicemanager;
        g = loadconversationpagetaskexecutor;
        i = new Handler(Looper.getMainLooper());
        j = userprefs;
    }

    private Pair a(List list)
    {
        switch (list.size())
        {
        default:
            return Pair.create(list.get(0), list.get(1));

        case 0: // '\0'
            return Pair.create(null, null);

        case 1: // '\001'
            return Pair.create(list.get(0), null);
        }
    }

    public static AndroidNotificationManager a()
    {
        com/snapchat/android/notification/AndroidNotificationManager;
        JVM INSTR monitorenter ;
        AndroidNotificationManager androidnotificationmanager;
        if (d == null)
        {
            d = new AndroidNotificationManager();
        }
        androidnotificationmanager = d;
        com/snapchat/android/notification/AndroidNotificationManager;
        JVM INSTR monitorexit ;
        return androidnotificationmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private String a(Resources resources, ArrayList arraylist, int k)
    {
        String as[] = resources.getStringArray(k);
        int l = Math.min(-1 + arraylist.size(), -1 + as.length);
        Pair pair = a(((List) (arraylist)));
        String s = as[l];
        Object aobj[] = new Object[2];
        aobj[0] = pair.first;
        aobj[1] = pair.second;
        return String.format(s, aobj);
    }

    private String a(LinkedHashMap linkedhashmap)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = linkedhashmap.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            UsernameDisplayNamePair usernamedisplaynamepair = (UsernameDisplayNamePair)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(usernamedisplaynamepair.b());
            int k = ((Integer)linkedhashmap.get(usernamedisplaynamepair)).intValue();
            if (k > 1)
            {
                stringbuilder.append(" (");
                stringbuilder.append(k);
                stringbuilder.append(")");
            }
        } while (true);
        return stringbuilder.toString();
    }

    private void a(Context context, Resources resources, Cursor cursor)
    {
        LinkedHashMap linkedhashmap;
        ArrayList arraylist;
        ArrayList arraylist1;
        Type type = Type.j;
        if (cursor == null || cursor.getCount() == 0 || !cursor.moveToFirst())
        {
            a(context, type);
            return;
        }
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        linkedhashmap = new LinkedHashMap();
        boolean flag = false;
        do
        {
            String s = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.c.b());
            String s1 = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.d.b());
            linkedhashmap.put(s, cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.i.b()));
            if (cursor.isLast())
            {
                String as[];
                String s3;
                boolean flag1;
                if (cursor.getInt(com.snapchat.android.database.table.NotificationTable.NotificationSchema.h.b()) == 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                flag = flag1;
            }
        } while (cursor.moveToNext());
        as = resources.getStringArray(b(type));
        arraylist = new ArrayList();
        arraylist1 = new ArrayList(linkedhashmap.keySet());
        arraylist1.size();
        JVM INSTR tableswitch 1 1: default 204
    //                   1 290;
           goto _L1 _L2
_L1:
        arraylist.addAll(arraylist1);
_L4:
        s3 = String.format(as[Math.min(-1 + arraylist1.size(), -1 + as.length)], arraylist.toArray());
        if (arraylist1.size() > 1)
        {
            s1 = null;
        }
        a(context, c(context), s3, s3, sharedpreferences, type, s1, flag, false);
        return;
_L2:
        String s2 = (String)arraylist1.get(0);
        arraylist.add(s2);
        arraylist.add(linkedhashmap.get(s2));
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(Context context, Resources resources, Cursor cursor, Type type)
    {
        boolean flag1;
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        UsernameDisplayNamePair usernamedisplaynamepair = null;
        boolean flag = false;
        String s;
        UsernameDisplayNamePair usernamedisplaynamepair1;
        boolean flag2;
        String s1;
        String s2;
        Object aobj[];
        String s3;
        String s4;
        int k;
        boolean flag4;
        if (cursor != null && cursor.getCount() > 0 && cursor.moveToFirst())
        {
            flag1 = false;
            break MISSING_BLOCK_LABEL_46;
        } else
        {
            a(context, type);
            return;
        }
        do
        {
            s = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.c.b());
            usernamedisplaynamepair1 = new UsernameDisplayNamePair(cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.d.b()), s);
            boolean flag3;
            if (type == Type.a)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag2)
            {
                flag3 = true;
            } else
            {
                flag3 = flag1;
            }
            a(usernamedisplaynamepair1, linkedhashmap);
            if (cursor.isLast())
            {
                if (cursor.getInt(com.snapchat.android.database.table.NotificationTable.NotificationSchema.h.b()) == 1)
                {
                    flag4 = true;
                } else
                {
                    flag4 = false;
                }
                flag = flag4;
                usernamedisplaynamepair = usernamedisplaynamepair1;
            }
            if (!cursor.moveToNext())
            {
                switch (linkedhashmap.size())
                {
                default:
                    s1 = c(context);
                    s2 = a(linkedhashmap);
                    aobj = new Object[1];
                    aobj[0] = usernamedisplaynamepair.b();
                    s3 = LocalizationUtils.a(0x7f0c013f, aobj);
                    s4 = null;
                    if (!flag3)
                    {
                        k = linkedhashmap.size();
                        s4 = null;
                        if (k == 1)
                        {
                            s4 = usernamedisplaynamepair.a();
                        }
                    }
                    a(context, s1, s2, s3, sharedpreferences, type, s4, flag, false);
                    return;

                case 0: // '\0'
                    a(context, type);
                    return;
                }
            }
            flag1 = flag3;
        } while (true);
    }

    private void a(Context context, String s, String s1, String s2, SharedPreferences sharedpreferences, Type type, String s3, 
            boolean flag, boolean flag1)
    {
        if (sharedpreferences.getBoolean(SharedPreferenceKey.aw.a(), true))
        {
            NotificationManager notificationmanager = (NotificationManager)context.getSystemService("notification");
            boolean flag2;
            int k;
            android.graphics.Bitmap bitmap;
            PendingIntent pendingintent;
            PendingIntent pendingintent1;
            android.support.v4.app.NotificationCompat.Builder builder;
            android.support.v4.app.NotificationCompat.Builder builder1;
            boolean flag3;
            boolean flag4;
            boolean flag5;
            android.support.v4.app.NotificationCompat.WearableExtender wearableextender;
            boolean flag6;
            if (type == Type.f || type == Type.g || type == Type.h)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (flag2)
            {
                k = 0x7f02015f;
            } else
            {
                k = 0x7f02015d;
            }
            if (flag2)
            {
                bitmap = SnapMediaUtils.a(context, 0x7f02015e);
            } else
            if (TextUtils.equals(s, c(context)))
            {
                bitmap = SnapMediaUtils.a(context, 0x7f02015b);
            } else
            {
                bitmap = SnapMediaUtils.a(context, 0x7f02015c);
            }
            pendingintent = c(context, type, s3);
            pendingintent1 = e.a(context, type.name());
            builder = (new android.support.v4.app.NotificationCompat.Builder(context)).setContentTitle(s).setContentText(s1).setStyle((new android.support.v4.app.NotificationCompat.BigTextStyle()).bigText(s1)).setSmallIcon(k).setLargeIcon(bitmap).setAutoCancel(true).setContentIntent(pendingintent).setWhen(System.currentTimeMillis());
            if (flag)
            {
                s2 = null;
            }
            builder1 = builder.setTicker(s2).setDeleteIntent(pendingintent1).setVibrate(new long[0]);
            if (!flag && sharedpreferences.getBoolean(SharedPreferenceKey.ax.a(), false))
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (!flag && sharedpreferences.getBoolean(SharedPreferenceKey.ay.a(), flag3))
            {
                flag4 = true;
            } else
            {
                flag4 = false;
            }
            if (flag4)
            {
                builder1.setVibrate(b);
            }
            if (!flag && sharedpreferences.getBoolean(SharedPreferenceKey.az.a(), flag3))
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
            if (flag5)
            {
                builder1.setDefaults(1);
            }
            if (sharedpreferences.getBoolean(SharedPreferenceKey.aA.a(), true))
            {
                builder1.setLights(-256, 1000, 2000);
            }
            wearableextender = new android.support.v4.app.NotificationCompat.WearableExtender();
            wearableextender.setBackground(BitmapFactory.decodeResource(context.getResources(), 0x7f020083));
            builder1.extend(wearableextender);
            if (h && (LandingPageActivity.k() || LandingPageActivity.l()))
            {
                flag6 = true;
            } else
            {
                flag6 = false;
            }
            if (flag6)
            {
                UserPrefs.p(true);
                Timber.c("AndroidNotificationManager", "Do not display notifications because the app is in the full screen mode or has any back stack.", new Object[0]);
                return;
            }
            if (ApiHelper.c)
            {
                builder1.setPriority(1);
            }
            notificationmanager.notify(type.a(), builder1.build());
            boolean flag7;
            if (!flag && sharedpreferences.getBoolean(SharedPreferenceKey.aB.a(), true))
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            if (flag7)
            {
                d(context);
            }
            if (h && !flag1)
            {
                if (!ApiHelper.e)
                {
                    a(context, type);
                    return;
                } else
                {
                    i.postDelayed(new Runnable(context, type) {

                        final Context a;
                        final Type b;
                        final AndroidNotificationManager c;

                        public void run()
                        {
                            c.a(a, b);
                        }

            
            {
                c = AndroidNotificationManager.this;
                a = context;
                b = type;
                super();
            }
                    }, 2500L);
                    return;
                }
            }
        }
    }

    private void a(UsernameDisplayNamePair usernamedisplaynamepair, LinkedHashMap linkedhashmap)
    {
        Integer integer = (Integer)linkedhashmap.get(usernamedisplaynamepair);
        if (integer == null)
        {
            integer = Integer.valueOf(0);
        }
        linkedhashmap.put(usernamedisplaynamepair, Integer.valueOf(1 + integer.intValue()));
    }

    private boolean a(Type type)
    {
        static class _cls3
        {

            static final int a[];

            static 
            {
                a = new int[Type.values().length];
                try
                {
                    a[Type.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[Type.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[Type.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[Type.f.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[Type.g.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[Type.h.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[Type.j.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[Type.e.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[Type.i.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    a[Type.k.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    a[Type.c.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    a[Type.l.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror11)
                {
                    return;
                }
            }
        }

        switch (_cls3.a[type.ordinal()])
        {
        default:
            return false;

        case 9: // '\t'
        case 10: // '\n'
            return true;
        }
    }

    private int b(Type type)
    {
        switch (_cls3.a[type.ordinal()])
        {
        case 9: // '\t'
        case 10: // '\n'
        default:
            return -1;

        case 11: // '\013'
            return 0x7f070007;

        case 3: // '\003'
            return 0x7f070008;

        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
            return 0x7f070009;

        case 7: // '\007'
            return 0x7f070006;

        case 8: // '\b'
            return 0x7f07000a;
        }
    }

    private void b(Context context, Resources resources, Cursor cursor, Type type)
    {
        if (cursor != null && cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        a(context, type);
_L4:
        return;
_L2:
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        ArrayList arraylist = new ArrayList();
        LinkedHashSet linkedhashset = new LinkedHashSet();
        boolean flag = false;
        String s = null;
        do
        {
            String s2;
label0:
            {
                String s1 = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.c.b());
                s2 = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.d.b());
                if (linkedhashset.add(s2))
                {
                    String s3;
                    int k;
                    String s4;
                    String s5;
                    boolean flag1;
                    if (s != null)
                    {
                        s2 = s;
                    }
                    arraylist.add(s1);
                } else
                {
                    s2 = s;
                }
                s3 = cursor.getString(com.snapchat.android.database.table.NotificationTable.NotificationSchema.e.b());
                if (cursor.isLast())
                {
                    if (cursor.getInt(com.snapchat.android.database.table.NotificationTable.NotificationSchema.h.b()) == 1)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    flag = flag1;
                }
                if (cursor.moveToNext())
                {
                    break label0;
                }
                k = b(type);
                if (k >= 0 || a(type))
                {
                    if (linkedhashset.size() > 1)
                    {
                        s4 = null;
                    } else
                    {
                        s4 = s2;
                    }
                    if (a(type))
                    {
                        if (TextUtils.isEmpty(s3))
                        {
                            AnalyticsEvents.a(type);
                            return;
                        }
                        s5 = s3;
                    } else
                    {
                        s5 = a(resources, arraylist, k);
                    }
                    a(context, c(context), s5, s5, sharedpreferences, type, s4, flag, false);
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            s = s2;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private PendingIntent c(Context context, Type type, String s)
    {
        return PendingIntent.getActivity(context, 0, b(context, type, s), 0x8000000);
    }

    private String c(Context context)
    {
        if (TextUtils.isEmpty(c))
        {
            c = context.getString(0x7f0c0140);
        }
        return c;
    }

    private void d(Context context)
    {
        PowerManager powermanager = (PowerManager)context.getSystemService("power");
        if (!powermanager.isScreenOn())
        {
            powermanager.newWakeLock(0x10000006, "MyLock").acquire(2000L);
        }
    }

    public void a(Context context)
    {
        int k = 0;
        this;
        JVM INSTR monitorenter ;
        NotificationManager notificationmanager;
        Type atype[];
        int l;
        Timber.c("AndroidNotificationManager", "clearAllNotifications", new Object[0]);
        notificationmanager = (NotificationManager)context.getSystemService("notification");
        atype = Type.values();
        l = atype.length;
_L2:
        if (k >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        Type type = atype[k];
        notificationmanager.cancel(type.a());
        NotificationTable.a(context, type.name());
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Context context, Bundle bundle, SharedPreferences sharedpreferences)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        String s = bundle.getString("username");
        flag = TextUtils.equals(sharedpreferences.getString(SharedPreferenceKey.d.a(), null), s);
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        long l;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        l = System.currentTimeMillis();
        s1 = bundle.getString("snap_id");
        s2 = bundle.getString("sender");
        s3 = bundle.getString("sender_username");
        s4 = bundle.getString("text");
        s5 = bundle.getString("chat_message_id");
        s6 = bundle.getString("type");
        s7 = bundle.getString("cash_amount");
        if (TextUtils.isEmpty(s6)) goto _L1; else goto _L3
_L3:
        Type type;
        boolean flag1;
        type = Type.valueOf(s6.toUpperCase(Locale.US));
        flag1 = Boolean.valueOf(bundle.getString("silent")).booleanValue();
        Timber.c("AndroidNotificationManager", "GCM Intent Extras", new Object[0]);
        String s8;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); Timber.c("AndroidNotificationManager", (new StringBuilder()).append(" > key=").append(s8).append(", value=").append(bundle.get(s8)).toString(), new Object[0]))
        {
            s8 = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_245;
        Exception exception;
        exception;
        throw exception;
        Type type1;
        if (type == Type.b)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        type1 = Type.e;
        boolean flag2;
        flag2 = false;
        if (type != type1)
        {
            break MISSING_BLOCK_LABEL_382;
        }
        long l1 = NotificationTable.a(context, type.name(), s3);
        long l2 = l - l1;
        Timber.c("AndroidNotificationManager", (new StringBuilder()).append("latestNonNinjaNotificationTimestamp=").append(l1).toString(), new Object[0]);
        Timber.c("AndroidNotificationManager", (new StringBuilder()).append("elapsedSinceLatestNonNinja=").append(l2).toString(), new Object[0]);
        int k = l2 != 0x124f80L;
        flag2 = false;
        if (k >= 0)
        {
            break MISSING_BLOCK_LABEL_382;
        }
        Timber.c("AndroidNotificationManager", "Turn on the ninja mode of this chat notification!", new Object[0]);
        flag2 = true;
        boolean flag3 = TextUtils.equals(s3, ChatFragment.q());
        boolean flag5;
        boolean flag4;
        boolean flag6;
        boolean flag7;
        if (type == Type.e && (h || flag2))
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        break MISSING_BLOCK_LABEL_664;
        if (type != Type.b || !f.a(context, s5)) goto _L5; else goto _L4
_L4:
        f.b(context, s5);
        Timber.c("AndroidNotificationManager", "This notification is for a chat message that has already been seen. Will not sync or display.", new Object[0]);
        flag6 = false;
        flag7 = false;
_L7:
        if (!flag7)
        {
            break MISSING_BLOCK_LABEL_520;
        }
        if (type == Type.e)
        {
            NotificationTable.a(context, Type.e.name());
        }
        NotificationTable.a(context, s1, l, s2, s3, s4, s5, type.name(), flag2, s7);
        b(context, type);
        if (type == Type.b || type == Type.j)
        {
            NotificationTable.b(context, Type.e.name(), s3);
            b(context, Type.e);
        }
        if (!flag6) goto _L1; else goto _L6
_L6:
        a(context, type, s3);
          goto _L1
_L5:
        if (type != Type.n)
        {
            break MISSING_BLOCK_LABEL_603;
        }
        (new UploadLogNotificationResponder(context, s4)).a();
        flag7 = false;
        flag6 = false;
          goto _L7
        if (type != Type.p)
        {
            break MISSING_BLOCK_LABEL_651;
        }
        j.C(true);
        j;
        UserPrefs.i(j.aL());
        j.u(null);
        flag7 = false;
        flag6 = false;
          goto _L7
        flag6 = true;
        flag7 = flag5;
          goto _L7
        if (!flag3 && !flag4 && !flag1)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        break MISSING_BLOCK_LABEL_415;
    }

    public void a(Context context, Type type)
    {
        this;
        JVM INSTR monitorenter ;
        Timber.c("AndroidNotificationManager", (new StringBuilder()).append("clearNotifications type=").append(type).toString(), new Object[0]);
        ((NotificationManager)context.getSystemService("notification")).cancel(type.a());
        NotificationTable.a(context, type.name());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(Context context, Type type, String s)
    {
        User user = User.a(context);
        _cls3.a[type.ordinal()];
        JVM INSTR tableswitch 1 10: default 68
    //                   1 76
    //                   2 76
    //                   3 76
    //                   4 76
    //                   5 76
    //                   6 76
    //                   7 76
    //                   8 75
    //                   9 75
    //                   10 75;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L3 _L3 _L3
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        SyncAllTask.b(user, true);
_L5:
        return;
_L2:
        String s1 = UserPrefs.k();
        if (s1 != null)
        {
            String s2 = ChatUtils.a(s1, ListUtils.a(s));
            Timber.f("AndroidNotificationManager", "CHAT-LOG: AndroidNotificationManager executing LoadConversationPageTask %s", new Object[] {
                s2
            });
            g.a(s2, true, new com.snapchat.android.api2.chat.LoadConversationPageTask.LoadConversationPageTaskCallback(s2, user) {

                final String a;
                final User b;
                final AndroidNotificationManager c;

                public void a(boolean flag)
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = a;
                    aobj[1] = Boolean.valueOf(flag);
                    Timber.f("AndroidNotificationManager", "CHAT-LOG: AndroidNotificationManager LoadConversationPageTask completed for %s with success: %s", aobj);
                    if (flag)
                    {
                        ChatConversation chatconversation = ConversationUtils.a(a);
                        if (chatconversation != null)
                        {
                            if (chatconversation.aC())
                            {
                                chatconversation.n(false);
                            }
                            ConversationTable.b().c(b);
                        }
                    }
                }

            
            {
                c = AndroidNotificationManager.this;
                a = s;
                b = user;
                super();
            }
            });
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void a(Context context, String s)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String s1 = LocalizationUtils.a(0x7f0c013a, new Object[] {
            s
        });
        a(context, c(context), s1, s1, sharedpreferences, Type.m, null, false, true);
    }

    public void a(Context context, String s, boolean flag)
    {
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        a(context, c(context), s, s, sharedpreferences, Type.o, null, flag, true);
    }

    public void a(Context context, boolean flag)
    {
        SharedPreferences sharedpreferences;
        Iterator iterator;
        int k;
        int l;
        long l1;
        long l2;
        sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        iterator = ChatConversationManager.a().d().iterator();
        k = 0;
        l = 0;
        l1 = 0L;
        l2 = 0L;
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        List list = ((ChatConversation)iterator.next()).t();
        if (list == null) goto _L4; else goto _L3
_L3:
        list;
        JVM INSTR monitorenter ;
        Iterator iterator1 = list.iterator();
_L8:
        if (!iterator1.hasNext()) goto _L6; else goto _L5
_L5:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator1.next();
        if (!chatfeeditem.W() || chatfeeditem.X()) goto _L8; else goto _L7
_L7:
        long l3 = chatfeeditem.ae();
        if (!(chatfeeditem instanceof Chat)) goto _L10; else goto _L9
_L9:
        ((Chat)chatfeeditem).a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE);
          goto _L11
_L10:
        if (!(chatfeeditem instanceof Snap)) goto _L8; else goto _L12
_L12:
        if (chatfeeditem instanceof SentSnap)
        {
            ((SentSnap)chatfeeditem).a(com.snapchat.android.model.Snap.ClientSnapStatus.FAILED_AND_USER_NOTIFIED_OF_FAILURE);
        }
          goto _L13
_L6:
        list;
        JVM INSTR monitorexit ;
          goto _L4
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (k == 0 && l == 0)
        {
            return;
        }
        String s1;
        String s2;
        if (k > 0 && l == 0)
        {
            s1 = context.getString(0x7f0c0139);
            User user2 = User.a(context);
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable2[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[1];
            adatabasetable2[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.w;
            user2.a(adatabasetable2);
            s2 = s1;
        } else
        if (k == 0 && l > 0)
        {
            s1 = context.getString(0x7f0c013b);
            User user1 = User.a(context);
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable1[] = new com.snapchat.android.database.table.DbTable.DatabaseTable[1];
            adatabasetable1[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.e;
            user1.a(adatabasetable1);
            s2 = s1;
        } else
        {
            String s = context.getString(0x7f0c013c);
            int i1;
            User user;
            com.snapchat.android.database.table.DbTable.DatabaseTable adatabasetable[];
            if (l1 > l2)
            {
                i1 = 0x7f0c013b;
            } else
            {
                i1 = 0x7f0c0139;
            }
            s1 = context.getString(i1);
            user = User.a(context);
            adatabasetable = new com.snapchat.android.database.table.DbTable.DatabaseTable[2];
            adatabasetable[0] = com.snapchat.android.database.table.DbTable.DatabaseTable.w;
            adatabasetable[1] = com.snapchat.android.database.table.DbTable.DatabaseTable.e;
            user.a(adatabasetable);
            s2 = s;
        }
        a(context, c(context), s2, s1, sharedpreferences, Type.l, null, flag, true);
        return;
_L15:
        l3 = l1;
        break; /* Loop/switch isn't completed */
_L11:
        Exception exception;
        if (l2 < l3)
        {
            l2 = l3;
        }
        k++;
          goto _L8
_L13:
        if (l1 >= l3) goto _L15; else goto _L14
_L14:
        l++;
        l1 = l3;
          goto _L8
    }

    public transient void a(Context context, boolean flag, int k, Object aobj[])
    {
        a(context, context.getString(k, aobj), flag);
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    Intent b(Context context, Type type, String s)
    {
        Intent intent;
        intent = new Intent(context, com/snapchat/android/LandingPageActivity);
        intent.putExtra("fromNotification", true);
        _cls3.a[type.ordinal()];
        JVM INSTR tableswitch 9 12: default 60
    //                   9 284
    //                   10 60
    //                   11 249
    //                   12 226;
           goto _L1 _L2 _L1 _L3 _L4
_L1:
        intent.putExtra("makeSyncRequest", true);
        if (s != null)
        {
            intent.putExtra("goToFragmentNum", 0);
            intent.putExtra("friendUsername", s);
        } else
        {
            intent.putExtra("goToFragmentNum", 1);
        }
        _cls3.a[type.ordinal()];
        JVM INSTR tableswitch 1 11: default 160
    //                   1 320
    //                   2 320
    //                   3 320
    //                   4 320
    //                   5 320
    //                   6 320
    //                   7 320
    //                   8 320
    //                   9 320
    //                   10 320
    //                   11 320;
           goto _L5 _L6 _L6 _L6 _L6 _L6 _L6 _L6 _L6 _L6 _L6 _L6
_L5:
        if (Type.b.equals(type) || Type.j.equals(type) || Type.k.equals(type))
        {
            intent.putExtra("chatOrCashFromServerNotification", true);
        }
        if (type != null)
        {
            intent.setAction(type.b());
        }
        intent.setFlags(0x24000000);
        return intent;
_L4:
        intent.putExtra("makeSyncRequest", true);
        intent.putExtra("goToFragmentNum", 1);
        break MISSING_BLOCK_LABEL_94;
_L3:
        intent.putExtra("makeSyncRequest", true);
        intent.putExtra("goToFragmentNum", 2);
        intent.putExtra("destinationPage", Destination.a);
        break MISSING_BLOCK_LABEL_94;
_L2:
        intent.putExtra("makeSyncRequest", true);
        intent.putExtra("goToFragmentNum", 3);
        break MISSING_BLOCK_LABEL_94;
_L6:
        intent.putExtra("fromServerNotification", true);
        intent.putExtra("type", type.name());
        if (true) goto _L5; else goto _L7
_L7:
    }

    public void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        Timber.c("AndroidNotificationManager", "displayNotifications", new Object[0]);
        for (Iterator iterator = NotificationTable.a(context).iterator(); iterator.hasNext(); b(context, Type.valueOf((String)iterator.next()))) { }
        break MISSING_BLOCK_LABEL_59;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void b(Context context, Type type)
    {
        Resources resources;
        Cursor cursor;
        resources = context.getResources();
        boolean flag;
        String as[];
        if (type == Type.a || type == Type.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            as = a;
        } else
        {
            as = new String[1];
            as[0] = type.name();
        }
        cursor = NotificationTable.a(context, as);
        if (!flag) goto _L2; else goto _L1
_L1:
        a(context, resources, cursor, type);
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        return;
_L2:
        if (type != Type.j)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        a(context, resources, cursor);
          goto _L3
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        b(context, resources, cursor, type);
          goto _L3
    }

    public void b(Context context, String s)
    {
        if (!ReleaseManager.f())
        {
            return;
        }
        String s1 = (new StringBuilder()).append(ScApplicationInfo.a(context)).append("\n").append(s).toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.setFlags(0x10000000);
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            "shake2reportdroid@snapchat.com"
        });
        intent.putExtra("android.intent.extra.SUBJECT", "[Android] New ANR Report");
        intent.putExtra("android.intent.extra.TEXT", s1);
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x8000000);
        NotificationManagerCompat notificationmanagercompat = NotificationManagerCompat.from(context);
        android.support.v4.app.NotificationCompat.InboxStyle inboxstyle = new android.support.v4.app.NotificationCompat.InboxStyle();
        if (!TextUtils.isEmpty(s))
        {
            String as[] = TextUtils.split(s, "\n");
            for (int k = 1; k < as.length; k++)
            {
                inboxstyle.addLine(as[k]);
            }

        }
        long al[] = {
            0L, 400L, 200L, 400L, 200L, 400L, 200L, 100L, 100L, 100L, 
            100L, 100L, 100L, 400L, 200L, 400L, 200L, 400L, 200L, 100L, 
            100L, 100L, 100L, 100L, 100L
        };
        notificationmanagercompat.notify(14, (new android.support.v4.app.NotificationCompat.Builder(context)).setContentTitle("ANR detected from Snapchat").setSmallIcon(0x1080078).setContentText(s).setTicker("ANR detected from Snapchat").setStyle(inboxstyle).addAction(0x108008f, "Send E-mail", pendingintent).setContentIntent(pendingintent).setVibrate(al).setAutoCancel(true).build());
    }

    static 
    {
        String as[] = new String[2];
        as[0] = Type.a.name();
        as[1] = Type.b.name();
        a = as;
    }
}
