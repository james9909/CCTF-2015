// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.snapchat.android.Timber;
import com.snapchat.android.operation.Operation;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.service:
//            IntentPool, SnapchatServiceListener, SnapchatService

public class SnapchatServiceManager
{

    private static SnapchatServiceManager a;
    private Integer b;
    private final Map c = Collections.synchronizedMap(new HashMap());
    private IntentPool d;
    private Context e;
    private final SparseArray f = new SparseArray();

    SnapchatServiceManager()
    {
        b = Integer.valueOf(0);
        f();
    }

    public static int a(Operation operation)
    {
        int i = -1;
        if (operation != null)
        {
            Intent intent = operation.a();
            if (intent != null)
            {
                i = intent.getIntExtra("request_id", i);
            }
        }
        return i;
    }

    public static SnapchatServiceManager a()
    {
        com/snapchat/android/service/SnapchatServiceManager;
        JVM INSTR monitorenter ;
        SnapchatServiceManager snapchatservicemanager;
        if (a == null)
        {
            a = new SnapchatServiceManager();
        }
        snapchatservicemanager = a;
        com/snapchat/android/service/SnapchatServiceManager;
        JVM INSTR monitorexit ;
        return snapchatservicemanager;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        com/snapchat/android/service/SnapchatServiceManager;
        JVM INSTR monitorenter ;
        a.f();
        com/snapchat/android/service/SnapchatServiceManager;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static int c(Operation operation)
    {
        int i = -1;
        if (operation != null)
        {
            Intent intent = operation.a();
            if (intent != null)
            {
                i = intent.getIntExtra("op_code", i);
            }
        }
        return i;
    }

    private Integer d(Intent intent)
    {
        Bundle bundle;
        bundle = intent.getExtras();
        if (bundle == null)
        {
            throw new NullPointerException();
        }
        Map map = c;
        map;
        JVM INSTR monitorenter ;
        Iterator iterator = c.values().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Intent intent1;
        Bundle bundle1;
        intent1 = (Intent)iterator.next();
        bundle1 = intent1.getExtras();
        if (bundle1 != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        throw new NullPointerException();
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        if (bundle.size() != bundle1.size()) goto _L4; else goto _L3
_L3:
        Iterator iterator1 = bundle1.keySet().iterator();
_L9:
        String s;
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_267;
            }
            s = (String)iterator1.next();
        } while (TextUtils.equals("request_id", s));
        if (bundle.containsKey(s)) goto _L6; else goto _L5
_L5:
        boolean flag = false;
_L10:
        if (!flag) goto _L4; else goto _L7
_L7:
        Integer integer = Integer.valueOf(intent1.getIntExtra("request_id", -1));
        map;
        JVM INSTR monitorexit ;
        return integer;
_L6:
        Object obj;
        Object obj1;
        obj = bundle1.get(s);
        obj1 = bundle.get(s);
        if (obj != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Timber.c("SnapchatServiceManager", (new StringBuilder()).append("pending request id key [").append(s).append("] has value null!").toString(), new Object[0]);
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        flag = false;
          goto _L10
        if (obj.equals(obj1)) goto _L9; else goto _L11
_L11:
        flag = false;
          goto _L10
_L2:
        map;
        JVM INSTR monitorexit ;
        return null;
        flag = true;
          goto _L10
    }

    private void f()
    {
        b = Integer.valueOf(0);
        c.clear();
        d = new IntentPool();
    }

    private int g()
    {
        if (b.intValue() != 0);
        Integer integer = Integer.valueOf(1 + b.intValue());
        b = integer;
        return integer.intValue();
    }

    public int a(Context context, int i, byte abyte0[])
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1009);
        intent.putExtra("snapTagVersion", i);
        intent.putExtra("snapTag", abyte0);
        intent.putExtra("timestamp", System.currentTimeMillis());
        return b(context, intent);
    }

    public int a(Context context, ContentValues contentvalues)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1005);
        intent.putExtra("content_values", contentvalues);
        return b(context, intent);
    }

    public int a(Context context, Intent intent)
    {
        Intent intent1 = g(context);
        intent1.putExtra("op_code", 1000);
        intent1.putExtra("gcm_intent", intent);
        return b(context, intent1);
    }

    public int a(Context context, String s, String s1, String s2)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1012);
        intent.putExtra("action", s);
        intent.putExtra("param", s1);
        intent.putExtra("password", s2);
        return b(context, intent);
    }

    public PendingIntent a(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1000);
        intent.putExtra("clear", true);
        intent.putExtra("notification_type", s);
        return PendingIntent.getService(context, 0, intent, 0x10000000);
    }

    public PendingIntent a(Context context, String s, long l)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1001);
        intent.putExtra("conversationId", s);
        intent.putExtra("latestSeenItemTimestamp", l);
        return PendingIntent.getService(context, 0, intent, 0x10000000);
    }

    public Intent a(int i)
    {
        return (Intent)c.remove(Integer.valueOf(i));
    }

    public void a(int i, SnapchatServiceListener snapchatservicelistener)
    {
        Timber.c("SnapchatServiceManager", (new StringBuilder()).append("registerListener ").append(snapchatservicelistener).append(" to operation ").append(i).toString(), new Object[0]);
        SparseArray sparsearray = f;
        sparsearray;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)f.get(i);
        if (hashset != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        hashset = new HashSet();
        hashset.add(snapchatservicelistener);
        f.append(i, hashset);
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Context context)
    {
        e = context;
    }

    public boolean a(Intent intent)
    {
        return intent != null && intent.hasExtra("request_id");
    }

    public int b(Context context)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1000);
        intent.putExtra("display_notifications", true);
        return b(context, intent);
    }

    public int b(Context context, Intent intent)
    {
        Timber.c("SnapchatServiceManager", "startCommand", new Object[0]);
        int i = g();
        intent.putExtra("request_id", i);
        Integer integer = d(intent);
        if (integer == null)
        {
            Timber.c("SnapchatServiceManager", (new StringBuilder()).append("Start service with the new request ").append(intent).toString(), new Object[0]);
            c.put(Integer.valueOf(i), intent);
            context.startService(intent);
            return i;
        } else
        {
            Timber.c("SnapchatServiceManager", (new StringBuilder()).append("Do not start service if there is a pending operation with the request ").append(intent).toString(), new Object[0]);
            d.a(intent);
            return integer.intValue();
        }
    }

    public int b(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1000);
        intent.putExtra("clear", true);
        intent.putExtra("notification_type", s);
        return b(context, intent);
    }

    public int b(Intent intent)
    {
        return intent.getIntExtra("request_id", -1);
    }

    public void b(int i, SnapchatServiceListener snapchatservicelistener)
    {
        Timber.c("SnapchatServiceManager", (new StringBuilder()).append("unregisterListener ").append(snapchatservicelistener).append(" from operation ").append(i).toString(), new Object[0]);
        SparseArray sparsearray = f;
        sparsearray;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)f.get(i);
        if (hashset == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        hashset.remove(snapchatservicelistener);
        sparsearray;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(Operation operation)
    {
        SparseArray sparsearray = f;
        sparsearray;
        JVM INSTR monitorenter ;
        HashSet hashset = (HashSet)f.get(c(operation));
        if (hashset == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        for (Iterator iterator = hashset.iterator(); iterator.hasNext(); ((SnapchatServiceListener)iterator.next()).a(operation)) { }
        break MISSING_BLOCK_LABEL_69;
        Exception exception;
        exception;
        sparsearray;
        JVM INSTR monitorexit ;
        throw exception;
        sparsearray;
        JVM INSTR monitorexit ;
    }

    public int c()
    {
        Intent intent = g(e);
        intent.putExtra("op_code", 1013);
        return b(e, intent);
    }

    public int c(Context context)
    {
        return b(context, ((String) (null)));
    }

    public int c(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1015);
        intent.putExtra("email", s);
        return b(context, intent);
    }

    public void c(Intent intent)
    {
        if (intent != null && IntentPool.b(intent))
        {
            d.a(intent);
        }
    }

    public int d()
    {
        Intent intent = g(e);
        intent.putExtra("op_code", 1014);
        return b(e, intent);
    }

    public int d(Context context)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1002);
        return b(context, intent);
    }

    public int d(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1016);
        intent.putExtra("password", s);
        return b(context, intent);
    }

    public int e(Context context)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1005);
        intent.putExtra("clear", true);
        return b(context, intent);
    }

    public int e(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1004);
        intent.putExtra("url", s);
        return b(context, intent);
    }

    public boolean e()
    {
        return !c.isEmpty();
    }

    public int f(Context context)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1007);
        return b(context, intent);
    }

    public int f(Context context, String s)
    {
        Intent intent = g(context);
        intent.putExtra("op_code", 1010);
        intent.putExtra("ImageId", s);
        return b(context, intent);
    }

    public Intent g(Context context)
    {
        return d.a(context, com/snapchat/android/service/SnapchatService);
    }
}
