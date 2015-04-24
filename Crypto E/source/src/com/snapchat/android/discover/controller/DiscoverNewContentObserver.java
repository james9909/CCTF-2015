// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.system.Clock;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

public class DiscoverNewContentObserver
    implements com.snapchat.android.discover.model.database.vtable.DiscoverRepository.ChannelRepositoryListener
{
    public static interface DiscoverNewContentListener
    {

        public abstract void a(boolean flag);
    }


    private static DiscoverNewContentObserver c = new DiscoverNewContentObserver();
    private final Set a;
    private final Set b;
    private final SharedPreferences d;
    private final UserPrefs e;
    private final Clock f;

    private DiscoverNewContentObserver()
    {
        this(DiscoverRepository.a(), PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()), new UserPrefs(), new Clock());
    }

    protected DiscoverNewContentObserver(DiscoverRepository discoverrepository, SharedPreferences sharedpreferences, UserPrefs userprefs, Clock clock)
    {
        a = new HashSet();
        b = new HashSet();
        discoverrepository.a(this);
        d = sharedpreferences;
        e = userprefs;
        f = clock;
    }

    public static DiscoverNewContentObserver a()
    {
        return c;
    }

    protected String a(Set set)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (s != null)
            {
                stringbuilder.append(s).append(",");
            }
        } while (true);
        return stringbuilder.toString();
    }

    public void a(DiscoverNewContentListener discovernewcontentlistener)
    {
        synchronized (a)
        {
            a.add(discovernewcontentlistener);
        }
        return;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(List list)
    {
        Set set = b;
        set;
        JVM INSTR monitorenter ;
        Iterator iterator;
        b.clear();
        iterator = list.iterator();
_L2:
        String s;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_74;
            }
            s = ((ChannelPage)iterator.next()).f();
        } while (s == null);
        b.add(s);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        set;
        JVM INSTR monitorexit ;
        if (c())
        {
            Timber.c("DiscoverNewContentObserver", "Updated - new editions were found", new Object[0]);
            a(true);
            return;
        } else
        {
            Timber.c("DiscoverNewContentObserver", "Updated - no new editions were found", new Object[0]);
            return;
        }
    }

    protected void a(boolean flag)
    {
        Set set = a;
        set;
        JVM INSTR monitorenter ;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((DiscoverNewContentListener)iterator.next()).a(flag)) { }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        set;
        JVM INSTR monitorexit ;
    }

    protected Set b()
    {
        HashSet hashset = new HashSet();
        StringTokenizer stringtokenizer = new StringTokenizer(d.getString(SharedPreferenceKey.bb.a(), ""), ",");
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s = stringtokenizer.nextToken();
            if (!s.isEmpty())
            {
                try
                {
                    hashset.add(s);
                }
                catch (NumberFormatException numberformatexception)
                {
                    Timber.e("DiscoverNewContentObserver", numberformatexception.toString(), new Object[0]);
                }
            }
        } while (true);
        return hashset;
    }

    public boolean c()
    {
label0:
        {
            Set set = b();
            synchronized (b)
            {
                Iterator iterator = b.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                } while (set.contains((String)iterator.next()));
            }
            return true;
        }
        set1;
        JVM INSTR monitorexit ;
        return false;
        exception;
        set1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d()
    {
        Timber.c("DiscoverNewContentObserver", "Discover has been seen by the user, resetting list of seen editions ids.", new Object[0]);
        if (b.isEmpty())
        {
            return;
        }
        e.c(f.a());
        d.getString(SharedPreferenceKey.bb.a(), null);
        String s;
        synchronized (b)
        {
            s = a(b);
        }
        android.content.SharedPreferences.Editor editor = d.edit();
        editor.putString(SharedPreferenceKey.bb.a(), s);
        editor.apply();
        a(false);
        return;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
