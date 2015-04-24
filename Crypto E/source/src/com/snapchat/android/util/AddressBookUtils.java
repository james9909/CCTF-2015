// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerFriend;
import com.snapchat.android.service.SnapchatServiceManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class AddressBookUtils
{

    public AddressBookUtils()
    {
    }

    private static String a(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (Character.isDigit(c))
            {
                stringbuilder.append(c);
            }
        }

        return stringbuilder.toString();
    }

    public static LinkedHashMap a(Context context)
    {
        LinkedHashMap linkedhashmap;
        Cursor cursor;
        linkedhashmap = new LinkedHashMap();
        String as[] = {
            "_id", "data1", "display_name", "times_contacted"
        };
        cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, as, null, null, null);
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L4:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        String s;
        String s1;
        s = cursor.getString(1);
        s1 = cursor.getString(2);
        if (s == null || s1 == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        linkedhashmap.put(a(s), s1);
        boolean flag1 = cursor.moveToNext();
        flag = flag1;
        if (true) goto _L4; else goto _L2
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        return linkedhashmap;
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    public static void a(long l, Context context)
    {
        if (a(l))
        {
            SnapchatServiceManager.a().d(context);
        }
    }

    public static void a(Context context, List list, Map map, User user)
    {
        List list1;
        List list2;
        Set set;
        list1 = user.q();
        list2 = user.n();
        set = user.p();
        HashSet hashset = new HashSet();
        list1;
        JVM INSTR monitorenter ;
        list1.clear();
        set.clear();
        Friend friend;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); set.add(friend))
        {
            ServerFriend serverfriend = (ServerFriend)iterator.next();
            hashset.add(serverfriend.display);
            friend = new Friend(serverfriend, user);
            list1.add(friend);
        }

        break MISSING_BLOCK_LABEL_130;
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        Collections.sort(list1);
        list1;
        JVM INSTR monitorexit ;
        list2;
        JVM INSTR monitorenter ;
        list2.clear();
        Iterator iterator1 = map.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            String s = (String)entry.getKey();
            String s1 = (String)entry.getValue();
            if (!hashset.contains(s1))
            {
                list2.add(new Friend("", s1, s));
            }
        } while (true);
        break MISSING_BLOCK_LABEL_251;
        Exception exception1;
        exception1;
        list2;
        JVM INSTR monitorexit ;
        throw exception1;
        Collections.sort(list2);
        list2;
        JVM INSTR monitorexit ;
    }

    protected static boolean a(long l)
    {
        return UserPrefs.J() && (0L == l || UserPrefs.N() != l);
    }
}
