// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.snapchat.android.Timber;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.User;
import com.snapchat.android.util.crypto.CbcSlightlySecurePreferences;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.snapchat.android.database.table:
//            StorySnapTable, StorySnapNoteTable

public class MyPostedStorySnapTable extends StorySnapTable
{

    private static MyPostedStorySnapTable a;

    protected MyPostedStorySnapTable()
    {
    }

    private List a(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            StorySnap storysnap = ((StorySnapLogbook)iterator.next()).e();
            if (storysnap != null)
            {
                arraylist.add(storysnap);
            }
        } while (true);
        return arraylist;
    }

    public static MyPostedStorySnapTable b()
    {
        com/snapchat/android/database/table/MyPostedStorySnapTable;
        JVM INSTR monitorenter ;
        MyPostedStorySnapTable mypostedstorysnaptable;
        if (a == null)
        {
            a = new MyPostedStorySnapTable();
        }
        mypostedstorysnaptable = a;
        com/snapchat/android/database/table/MyPostedStorySnapTable;
        JVM INSTR monitorexit ;
        return mypostedstorysnaptable;
        Exception exception;
        exception;
        throw exception;
    }

    public String a()
    {
        return "MyPostedStorySnapTable";
    }

    public void a(User user)
    {
        List list = a(null, null);
        if (!(new CbcSlightlySecurePreferences()).a(list, SlightlySecurePreferencesKeys.c))
        {
            return;
        } else
        {
            java.util.Map map = StorySnapNoteTable.b().b(d);
            StoryLibrary.a().a(list, map);
            return;
        }
    }

    protected Collection b(User user)
    {
        return null;
    }

    public void c(User user)
    {
        if (o() == null)
        {
            return;
        }
        j().lock();
        List list;
        List list1;
        d.beginTransaction();
        list = StoryLibrary.a().h();
        list1 = a(list);
        (new CbcSlightlySecurePreferences()).b(list1, SlightlySecurePreferencesKeys.c);
        k();
        if (list1 == null)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        Iterator iterator;
        if (list1.isEmpty())
        {
            break MISSING_BLOCK_LABEL_208;
        }
        Timber.c("MyPostedStorySnapTable", (new StringBuilder()).append("saveToDatabase ").append(a()).append(" ").append(list1.size()).append(" item(s)").toString(), new Object[0]);
        iterator = list1.iterator();
_L2:
        ContentValues contentvalues;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_208;
            }
            contentvalues = a((StorySnap)iterator.next());
        } while (contentvalues == null);
        if (contentvalues.size() <= 0) goto _L2; else goto _L1
_L1:
        d.insert(a(), null, contentvalues);
          goto _L2
        Exception exception;
        exception;
        d.endTransaction();
        j().unlock();
        throw exception;
        StorySnapNoteTable.b().a(d, list);
        d.setTransactionSuccessful();
        d.endTransaction();
        j().unlock();
        return;
    }
}
