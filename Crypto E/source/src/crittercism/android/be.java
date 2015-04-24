// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bv, bu, bk

public final class be
    implements bv
{

    private JSONObject a;
    private String b;

    public be()
    {
        b = bu.a.a();
        a = (new bk()).a(new bn.c()).a(new bn.b()).a(new bn.f()).a(new bn.k()).a(new bn.n()).a(new bn.p()).a(new bn.u()).a(new bn.v()).a();
    }

    public final void a(OutputStream outputstream)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("app_state", a);
        outputstream.write((new JSONObject(hashmap)).toString().getBytes());
    }

    public final String b()
    {
        return b;
    }
}
