// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.zip.CRC32;

// Referenced classes of package com.google.android.gms.internal:
//            ik, hz, rq, hx, 
//            hv

public class ij
    implements SafeParcelable
{

    public static final ik CREATOR = new ik();
    final int DN;
    final long EA;
    final int EB;
    final hv EC;
    final hx Ez;
    public final String pm;

    ij(int j, hx hx1, long l, int k, String s, hv hv)
    {
        DN = j;
        Ez = hx1;
        EA = l;
        EB = k;
        pm = s;
        EC = hv;
    }

    public ij(hx hx1, long l, int j)
    {
        this(1, hx1, l, j, null, ((hv) (null)));
    }

    public ij(hx hx1, long l, int j, String s, hv hv)
    {
        this(1, hx1, l, j, s, hv);
    }

    public ij(String s, Intent intent, String s1, Uri uri, String s2, List list)
    {
        this(1, a(s, intent), System.currentTimeMillis(), 0, null, a(intent, s1, uri, s2, list).fM());
    }

    public static hv.a a(Intent intent, String s, Uri uri, String s1, List list)
    {
        hv.a a1 = new hv.a();
        a1.a(ax(s));
        if (uri != null)
        {
            a1.a(g(uri));
        }
        if (list != null)
        {
            a1.a(b(list));
        }
        String s2 = intent.getAction();
        if (s2 != null)
        {
            a1.a(i("intent_action", s2));
        }
        String s3 = intent.getDataString();
        if (s3 != null)
        {
            a1.a(i("intent_data", s3));
        }
        ComponentName componentname = intent.getComponent();
        if (componentname != null)
        {
            a1.a(i("intent_activity", componentname.getClassName()));
        }
        Bundle bundle = intent.getExtras();
        if (bundle != null)
        {
            String s4 = bundle.getString("intent_extra_data_key");
            if (s4 != null)
            {
                a1.a(i("intent_extra_data", s4));
            }
        }
        return a1.at(s1).F(true);
    }

    public static hx a(String s, Intent intent)
    {
        return h(s, g(intent));
    }

    private static hz ax(String s)
    {
        return new hz(s, (new ih.a("title")).S(1).H(true).aw("name").fP(), "text1");
    }

    private static hz b(List list)
    {
        no.a a1 = new no.a();
        no.a.a aa[] = new no.a.a[list.size()];
        for (int j = 0; j < aa.length; j++)
        {
            aa[j] = new no.a.a();
            com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink appindexinglink = (com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink)list.get(j);
            aa[j].amL = appindexinglink.appIndexingUrl.toString();
            aa[j].viewId = appindexinglink.viewId;
            if (appindexinglink.webUrl != null)
            {
                aa[j].amM = appindexinglink.webUrl.toString();
            }
        }

        a1.amJ = aa;
        return new hz(rq.f(a1), (new ih.a("outlinks")).G(true).aw(".private:outLinks").av("blob").fP());
    }

    private static hz g(Uri uri)
    {
        return new hz(uri.toString(), (new ih.a("web_url")).S(4).G(true).aw("url").fP());
    }

    private static String g(Intent intent)
    {
        String s = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try
        {
            crc32.update(s.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new IllegalStateException(unsupportedencodingexception);
        }
        return Long.toHexString(crc32.getValue());
    }

    private static hx h(String s, String s1)
    {
        return new hx(s, "", s1);
    }

    private static hz i(String s, String s1)
    {
        return new hz(s1, (new ih.a(s)).G(true).fP(), s);
    }

    public int describeContents()
    {
        ik _tmp = CREATOR;
        return 0;
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Ez;
        aobj[1] = Long.valueOf(EA);
        aobj[2] = Integer.valueOf(EB);
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d]", aobj);
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        ik _tmp = CREATOR;
        ik.a(this, parcel, j);
    }

}
