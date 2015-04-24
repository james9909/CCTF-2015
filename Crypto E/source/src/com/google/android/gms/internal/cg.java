// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cn, ch, hk, hf, 
//            l, k, hd, hg, 
//            dw, g

public final class cg
{

    public static final ch qh = new ch() {

        public void a(hk hk, Map map)
        {
        }

    };
    public static final ch qi = new ch() {

        public void a(hk hk1, Map map)
        {
            String s = (String)map.get("urls");
            if (TextUtils.isEmpty(s))
            {
                hf.X("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String as[] = s.split(",");
            HashMap hashmap = new HashMap();
            PackageManager packagemanager = hk1.getContext().getPackageManager();
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String s1 = as[j];
                String as1[] = s1.split(";", 2);
                String s2 = as1[0].trim();
                String s3;
                boolean flag;
                if (as1.length > 1)
                {
                    s3 = as1[1].trim();
                } else
                {
                    s3 = "android.intent.action.VIEW";
                }
                if (packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                hashmap.put(s1, Boolean.valueOf(flag));
                j++;
            }
            hk1.a("openableURLs", hashmap);
        }

    };
    public static final ch qj = new ch() {

        public void a(hk hk1, Map map)
        {
            String s;
            Uri uri;
            s = (String)map.get("u");
            if (s == null)
            {
                hf.X("URL missing from click GMSG.");
                return;
            }
            uri = Uri.parse(s);
            k k1 = hk1.dP();
            if (k1 == null) goto _L2; else goto _L1
_L1:
            if (!k1.b(uri)) goto _L2; else goto _L3
_L3:
            Uri uri2 = k1.a(uri, hk1.getContext());
            Uri uri1 = uri2;
_L5:
            String s1 = uri1.toString();
            (new hd(hk1.getContext(), hk1.dQ().xP, s1)).start();
            return;
            l l1;
            l1;
            hf.X((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
_L2:
            uri1 = uri;
            if (true) goto _L5; else goto _L4
_L4:
        }

    };
    public static final ch qk = new ch() {

        public void a(hk hk1, Map map)
        {
            dw dw1 = hk1.dM();
            if (dw1 == null)
            {
                hf.X("A GMSG tried to close something that wasn't an overlay.");
                return;
            } else
            {
                dw1.close();
                return;
            }
        }

    };
    public static final ch ql = new ch() {

        public void a(hk hk1, Map map)
        {
            hk1.r("1".equals(map.get("custom_close")));
        }

    };
    public static final ch qm = new ch() {

        public void a(hk hk1, Map map)
        {
            String s = (String)map.get("u");
            if (s == null)
            {
                hf.X("URL missing from httpTrack GMSG.");
                return;
            } else
            {
                (new hd(hk1.getContext(), hk1.dQ().xP, s)).start();
                return;
            }
        }

    };
    public static final ch qn = new ch() {

        public void a(hk hk, Map map)
        {
            hf.V((new StringBuilder()).append("Received log message: ").append((String)map.get("string")).toString());
        }

    };
    public static final ch qo = new ch() {

        public void a(hk hk1, Map map)
        {
            String s = (String)map.get("tx");
            String s1 = (String)map.get("ty");
            String s2 = (String)map.get("td");
            int i;
            int j;
            int l;
            k k1;
            try
            {
                i = Integer.parseInt(s);
                j = Integer.parseInt(s1);
                l = Integer.parseInt(s2);
                k1 = hk1.dP();
            }
            catch (NumberFormatException numberformatexception)
            {
                hf.X("Could not parse touch parameters from gmsg.");
                return;
            }
            if (k1 == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            k1.C().a(i, j, l);
        }

    };
    public static final ch qp = new cn();

}
