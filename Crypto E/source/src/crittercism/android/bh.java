// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.File;
import java.io.IOException;

// Referenced classes of package crittercism.android:
//            dk

public class bh
{

    protected File a;

    public bh(File file)
    {
        a = file;
    }

    public Object a()
    {
        String s;
        try
        {
            s = dk.b(a);
        }
        catch (IOException ioexception)
        {
            return "";
        }
        return s;
    }
}
