// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package crittercism.android:
//            bh, bw

public final class bo extends bh
{
    public static final class a extends bw
    {

        public final bh a(File file)
        {
            return new bo(file, (byte)0);
        }

        public a()
        {
        }
    }


    private bo(File file)
    {
        super(file);
    }

    bo(File file, byte byte0)
    {
        this(file);
    }

    public final Object a()
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray((String)super.a());
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return jsonarray;
    }
}
