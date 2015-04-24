// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class rg
{

    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri aFS = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern aFT = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern aFU = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    private static HashMap aFV;
    private static Object aFW;
    private static String aFX[] = new String[0];
    private static Context aFY = null;

    public rg()
    {
    }

    static Object E(Object obj)
    {
        aFW = obj;
        return obj;
    }

    public static String a(ContentResolver contentresolver, String s, String s1)
    {
        tG();
        com/google/android/gms/internal/rg;
        JVM INSTR monitorenter ;
        Object obj;
        String s3;
        a(contentresolver);
        obj = aFW;
        if (!aFV.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_50;
        }
        s3 = (String)aFV.get(s);
        if (s3 != null)
        {
            s1 = s3;
        }
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        return s1;
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        String as[] = aFX;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            if (s.startsWith(as[j]))
            {
                break MISSING_BLOCK_LABEL_236;
            }
        }

        break MISSING_BLOCK_LABEL_97;
        Exception exception;
        exception;
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        throw exception;
        Cursor cursor;
        cursor = contentresolver.query(CONTENT_URI, null, null, new String[] {
            s
        }, null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        if (cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_155;
        }
        aFV.put(s, null);
        if (cursor != null)
        {
            cursor.close();
            return s1;
        }
        break MISSING_BLOCK_LABEL_236;
        String s2 = cursor.getString(1);
        com/google/android/gms/internal/rg;
        JVM INSTR monitorenter ;
        if (obj == aFW)
        {
            aFV.put(s, s2);
        }
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        if (s2 != null)
        {
            s1 = s2;
        }
        if (cursor != null)
        {
            cursor.close();
            return s1;
        }
        break MISSING_BLOCK_LABEL_236;
        Exception exception2;
        exception2;
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception1;
        exception1;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception1;
        return s1;
    }

    public static transient Map a(ContentResolver contentresolver, String as[])
    {
        Cursor cursor;
        TreeMap treemap;
        tG();
        cursor = contentresolver.query(aFS, null, null, as, null);
        treemap = new TreeMap();
        if (cursor == null)
        {
            return treemap;
        }
        for (; cursor.moveToNext(); treemap.put(cursor.getString(0), cursor.getString(1))) { }
        break MISSING_BLOCK_LABEL_71;
        Exception exception;
        exception;
        cursor.close();
        throw exception;
        cursor.close();
        return treemap;
    }

    private static void a(ContentResolver contentresolver)
    {
        if (aFV == null)
        {
            aFV = new HashMap();
            aFW = new Object();
            (new Thread("Gservices", contentresolver) {

                final ContentResolver aFZ;

                public void run()
                {
                    Looper.prepare();
                    aFZ.registerContentObserver(rg.CONTENT_URI, true, new ContentObserver(this, new Handler(Looper.myLooper())) {

                        final _cls1 aGa;

                        public void onChange(boolean flag)
                        {
                            com/google/android/gms/internal/rg;
                            JVM INSTR monitorenter ;
                            rg.tH().clear();
                            rg.E(new Object());
                            if (rg.tI().length > 0)
                            {
                                rg.b(aGa.aFZ, rg.tI());
                            }
                            com/google/android/gms/internal/rg;
                            JVM INSTR monitorexit ;
                            return;
                            Exception exception;
                            exception;
                            com/google/android/gms/internal/rg;
                            JVM INSTR monitorexit ;
                            throw exception;
                        }

            
            {
                aGa = _pcls1;
                super(handler);
            }
                    });
                    Looper.loop();
                }

            
            {
                aFZ = contentresolver;
                super(s);
            }
            }).start();
        }
    }

    public static boolean a(ContentResolver contentresolver, String s, boolean flag)
    {
        String s1 = getString(contentresolver, s);
        if (s1 == null || s1.equals(""))
        {
            return flag;
        }
        if (aFT.matcher(s1).matches())
        {
            return true;
        }
        if (aFU.matcher(s1).matches())
        {
            return false;
        } else
        {
            Log.w("Gservices", (new StringBuilder()).append("attempt to read gservices key ").append(s).append(" (value \"").append(s1).append("\") as boolean").toString());
            return flag;
        }
    }

    public static transient void b(ContentResolver contentresolver, String as[])
    {
        tG();
        Map map = a(contentresolver, as);
        com/google/android/gms/internal/rg;
        JVM INSTR monitorenter ;
        a(contentresolver);
        aFX = as;
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); aFV.put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_85;
        Exception exception;
        exception;
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
        throw exception;
        com/google/android/gms/internal/rg;
        JVM INSTR monitorexit ;
    }

    public static String getString(ContentResolver contentresolver, String s)
    {
        return a(contentresolver, s, ((String) (null)));
    }

    private static void tG()
    {
        if (aFY != null)
        {
            aFY.enforceCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES", "attempting to read gservices without permission");
        }
    }

    static HashMap tH()
    {
        return aFV;
    }

    static String[] tI()
    {
        return aFX;
    }

}
