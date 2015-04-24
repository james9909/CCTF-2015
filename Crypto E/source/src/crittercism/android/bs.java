// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bv, bu, bk, bf, 
//            bj, cc

public final class bs
    implements bv
{

    private JSONObject a;
    private JSONObject b;
    private JSONArray c;
    private File d;
    private String e;

    public bs(File file, bj bj1, bj bj2, bj bj3)
    {
        file.exists();
        e = bu.a.a();
        d = file;
        a = (new bk()).a(new bn.c()).a(new bn.b()).a(new bn.d()).a(new bn.f()).a(new bn.j()).a(new bn.h()).a(new bn.x()).a(new bn.y()).a(new bn.k()).a(new bn.p()).a(new bn.m()).a(new bn.q()).a(new bn.u()).a(new bn.v()).a();
        HashMap hashmap = new HashMap();
        hashmap.put("crashed_session", (new bf(bj1)).a);
        if (bj2.b() > 0)
        {
            hashmap.put("previous_session", (new bf(bj2)).a);
        }
        b = new JSONObject(hashmap);
        c = (new bf(bj3)).a;
    }

    public final void a(OutputStream outputstream)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("app_state", a);
        hashmap.put("breadcrumbs", b);
        hashmap.put("endpoints", c);
        byte abyte0[] = new byte[0];
        byte abyte1[] = new byte[8192];
        FileInputStream fileinputstream = new FileInputStream(d);
        do
        {
            int i = fileinputstream.read(abyte1);
            if (i != -1)
            {
                byte abyte2[] = new byte[i + abyte0.length];
                System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
                System.arraycopy(abyte1, 0, abyte2, abyte0.length, i);
                abyte0 = abyte2;
            } else
            {
                fileinputstream.close();
                HashMap hashmap1 = new HashMap();
                hashmap1.put("dmp_name", d.getName());
                hashmap1.put("dmp_file", cc.a(abyte0));
                hashmap.put("ndk_dmp_info", new JSONObject(hashmap1));
                outputstream.write((new JSONObject(hashmap)).toString().getBytes());
                return;
            }
        } while (true);
    }

    public final String b()
    {
        return e;
    }
}
