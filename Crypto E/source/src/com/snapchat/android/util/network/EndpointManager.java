// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.network;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api.PingProxyEndpointTask;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.EndpointSet;
import com.snapchat.android.model.ProxyEndpoint;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.debug.DevUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.GetEndpointSetTaskEvent;
import com.snapchat.android.util.eventbus.PingProxyEndpointTaskEvent;
import com.squareup.otto.Bus;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class EndpointManager
    implements com.snapchat.android.api.GetEndpointSetTask.GetEndpointSetTaskCallback, com.snapchat.android.api.PingProxyEndpointTask.PingProxyEndpointTaskCallback
{
    public class EndpointsRefreshedEvent
    {

        final EndpointManager a;

        public EndpointsRefreshedEvent()
        {
            a = EndpointManager.this;
            super();
        }
    }


    protected static ProxyEndpoint a;
    private static EndpointManager b;
    private static final List c = Arrays.asList(new String[] {
        "snapchat.com", "suproo.com", "feelinsonice-hrd.appspot.com", "addlive.io"
    });
    private static EndpointSet d;
    private EndpointSet e;
    private ProxyEndpoint f;
    private List g;
    private long h;
    private Map i;
    private int j;
    private Map k;

    private EndpointManager()
    {
        g = new ArrayList();
        i = new HashMap();
        m();
        e = e();
        if (e == null)
        {
            e = d;
        }
        f = f();
        if (f == null)
        {
            f = a;
        }
        k = d();
        if (k == null)
        {
            k = new HashMap();
        }
    }

    public static EndpointManager a()
    {
        com/snapchat/android/util/network/EndpointManager;
        JVM INSTR monitorenter ;
        EndpointManager endpointmanager;
        if (b == null)
        {
            b = new EndpointManager();
        }
        endpointmanager = b;
        com/snapchat/android/util/network/EndpointManager;
        JVM INSTR monitorexit ;
        return endpointmanager;
        Exception exception;
        exception;
        throw exception;
    }

    protected static boolean a(String s)
    {
        URL url;
        Iterator iterator;
        url = new URL(s);
        iterator = c.iterator();
        boolean flag;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_89;
            }
            String s1 = (String)iterator.next();
            if (url.getHost().endsWith((new StringBuilder()).append(".").append(s1).toString()))
            {
                break;
            }
            flag = url.getHost().equals(s1);
        } while (!flag);
        return true;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        return false;
        return false;
    }

    private void b(ProxyEndpoint proxyendpoint)
    {
        f = proxyendpoint;
        a(proxyendpoint);
        BusProvider.a().a(new EndpointsRefreshedEvent());
    }

    private void m()
    {
        ArrayList arraylist = new ArrayList(Arrays.asList(new String[] {
            "https://cnc.addlive.io"
        }));
        ArrayList arraylist1 = new ArrayList(Arrays.asList(new String[] {
            "https://test.suproo.com/proxy/cnc"
        }));
        ProxyEndpoint proxyendpoint = new ProxyEndpoint("https://feelinsonice-hrd.appspot.com", "https://feelinsonice-hrd.appspot.com", arraylist, 0);
        d = new EndpointSet(-1L, new ArrayList(Arrays.asList(new ProxyEndpoint[] {
            proxyendpoint, new ProxyEndpoint("https://test.suproo.com", "https://test.suproo.com", arraylist1, 1)
        })), new ArrayList(Arrays.asList(new String[] {
            "https://list.suproo.com"
        })));
        a = proxyendpoint;
    }

    protected ProxyEndpoint a(Map map)
    {
        ProxyEndpoint proxyendpoint = null;
        Iterator iterator = map.entrySet().iterator();
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            long l1 = ((Long)entry.getValue()).longValue();
            ProxyEndpoint proxyendpoint1 = (ProxyEndpoint)entry.getKey();
            if (l1 == -1L || proxyendpoint != null && proxyendpoint1.a() >= proxyendpoint.a() && (proxyendpoint1.a() != proxyendpoint.a() || l1 >= ((Long)map.get(proxyendpoint)).longValue()))
            {
                proxyendpoint1 = proxyendpoint;
            }
            proxyendpoint = proxyendpoint1;
        }
        return proxyendpoint;
    }

    protected void a(EndpointSet endpointset)
    {
        i.clear();
        h = System.nanoTime() / 0xf4240L;
        j = 0;
        if (endpointset.a().size() != 0)
        {
            if (endpointset.a().size() == 1)
            {
                c(new HashMap());
                b((ProxyEndpoint)endpointset.a().get(0));
                return;
            }
            Iterator iterator = endpointset.a().iterator();
            while (iterator.hasNext()) 
            {
                (new PingProxyEndpointTask((ProxyEndpoint)iterator.next(), this)).executeOnExecutor(ScExecutors.b, new String[0]);
            }
        }
    }

    protected void a(ProxyEndpoint proxyendpoint)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        editor.putString(SharedPreferenceKey.S.a(), GsonUtil.a().toJson(proxyendpoint, com/snapchat/android/model/ProxyEndpoint));
        editor.apply();
    }

    public void a(GetEndpointSetTaskEvent getendpointsettaskevent)
    {
        this;
        JVM INSTR monitorenter ;
        j = 1 + j;
        if (getendpointsettaskevent.b())
        {
            g.add(getendpointsettaskevent.a());
        }
        if (j == e.b().size())
        {
            a(g);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(PingProxyEndpointTaskEvent pingproxyendpointtaskevent)
    {
        this;
        JVM INSTR monitorenter ;
        long l1;
        j = 1 + j;
        if (!pingproxyendpointtaskevent.a())
        {
            break MISSING_BLOCK_LABEL_80;
        }
        l1 = System.nanoTime() / 0xf4240L - h;
_L1:
        i.put(pingproxyendpointtaskevent.b(), Long.valueOf(l1));
        if (j == e.a().size())
        {
            b(i);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        l1 = -1L;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(List list)
    {
        list.removeAll(Collections.singleton(null));
        if (list.size() == 0)
        {
            return;
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (!b((EndpointSet)iterator.next()))
            {
                iterator.remove();
            }
        } while (true);
        EndpointSet endpointset = b(list);
        if (endpointset != null && e.c() <= endpointset.c())
        {
            c(endpointset);
        }
        a(e);
    }

    protected EndpointSet b(List list)
    {
        EndpointSet endpointset = null;
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            EndpointSet endpointset1 = (EndpointSet)iterator.next();
            if (endpointset != null && endpointset1.c() <= endpointset.c())
            {
                endpointset1 = endpointset;
            }
            endpointset = endpointset1;
        }
        return endpointset;
    }

    public String b()
    {
        return f.c();
    }

    protected void b(Map map)
    {
        k = map;
        c(map);
        ProxyEndpoint proxyendpoint;
        if (map.size() != 0)
        {
            if ((proxyendpoint = a(map)) != null)
            {
                b(proxyendpoint);
                return;
            }
        }
    }

    protected boolean b(EndpointSet endpointset)
    {
        Iterator iterator1;
        for (Iterator iterator = endpointset.b().iterator(); iterator.hasNext();)
        {
            if (!a((String)iterator.next()))
            {
                return false;
            }
        }

        iterator1 = endpointset.a().iterator();
_L2:
        Iterator iterator2;
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_132;
        }
        ProxyEndpoint proxyendpoint = (ProxyEndpoint)iterator1.next();
        if (!a(proxyendpoint.c()))
        {
            return false;
        }
        if (!a(proxyendpoint.d()))
        {
            return false;
        }
        iterator2 = proxyendpoint.b().iterator();
_L4:
        if (!iterator2.hasNext()) goto _L2; else goto _L1
_L1:
        if (a((String)iterator2.next())) goto _L4; else goto _L3
_L3:
        return false;
        return endpointset.a().contains(a) && endpointset.b().contains("https://list.suproo.com");
    }

    public void c()
    {
        this;
        JVM INSTR monitorenter ;
    }

    protected void c(EndpointSet endpointset)
    {
        e = endpointset;
        d(endpointset);
    }

    protected void c(Map map)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        java.lang.reflect.Type type = (new TypeToken() {

            final EndpointManager a;

            
            {
                a = EndpointManager.this;
                super();
            }
        }).getType();
        String s = GsonUtil.a().toJson(map, type);
        editor.putString(SharedPreferenceKey.R.a(), s);
        editor.apply();
    }

    protected Map d()
    {
        String s = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).getString(SharedPreferenceKey.R.a(), null);
        if (s == null)
        {
            return null;
        }
        java.lang.reflect.Type type = (new TypeToken() {

            final EndpointManager a;

            
            {
                a = EndpointManager.this;
                super();
            }
        }).getType();
        Map map = (Map)GsonUtil.a().fromJson(s, type);
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put((ProxyEndpoint)GsonUtil.a().fromJson((String)entry.getKey(), com/snapchat/android/model/ProxyEndpoint), entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return hashmap;
    }

    protected void d(EndpointSet endpointset)
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        String s = GsonUtil.a().toJson(endpointset, com/snapchat/android/model/EndpointSet);
        editor.putString(SharedPreferenceKey.T.a(), s);
        editor.apply();
    }

    protected EndpointSet e()
    {
        String s = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).getString(SharedPreferenceKey.T.a(), null);
        EndpointSet endpointset = null;
        if (s != null)
        {
            endpointset = (EndpointSet)GsonUtil.a().fromJson(s, com/snapchat/android/model/EndpointSet);
        }
        return endpointset;
    }

    protected ProxyEndpoint f()
    {
        String s = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).getString(SharedPreferenceKey.S.a(), null);
        ProxyEndpoint proxyendpoint = null;
        if (s != null)
        {
            proxyendpoint = (ProxyEndpoint)GsonUtil.a().fromJson(s, com/snapchat/android/model/ProxyEndpoint);
        }
        return proxyendpoint;
    }

    public Map g()
    {
        return k;
    }

    public List h()
    {
        ArrayList arraylist = new ArrayList();
        String s;
        for (Iterator iterator = f.b().iterator(); iterator.hasNext(); arraylist.add((new StringBuilder()).append(s).append("/resolve_streamer.do").toString()))
        {
            s = (String)iterator.next();
        }

        return arraylist;
    }

    public boolean i()
    {
        return false;
    }

    public String j()
    {
        return f.d();
    }

    public String k()
    {
        if (DevUtils.a())
        {
            return "https://cash.square-sandbox.com";
        } else
        {
            return "https://sc-connect.squareup.com";
        }
    }

    public String l()
    {
        if (DevUtils.a())
        {
            return "https://cash.square-sandbox.com";
        } else
        {
            return "https://cash.square.com";
        }
    }

}
