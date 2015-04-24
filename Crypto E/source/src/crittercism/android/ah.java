// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package crittercism.android:
//            af, al, as, ai

public final class ah extends af
{

    private ai d;
    private int e;
    private int f;

    public ah(ai ai1, int i)
    {
        super(ai1);
        f = 0;
        d = ai1;
        e = i;
    }

    public final boolean a(int i)
    {
        if (f < 2 + e)
        {
            if (i == -1)
            {
                super.a.b(a());
                super.a.a(as.d);
                return true;
            }
            c = 1 + c;
            char c1 = (char)i;
            f = 1 + f;
            if (f > e)
            {
                if (c1 == '\n')
                {
                    d.b(a());
                    super.a.a(d);
                    return true;
                }
                if (f == 2 + e && c1 != '\n')
                {
                    super.a.a(as.d);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean a(CharArrayBuffer chararraybuffer)
    {
        return true;
    }

    public final af b()
    {
        return d;
    }

    public final af c()
    {
        return null;
    }

    protected final int d()
    {
        return 0;
    }

    protected final int e()
    {
        return 0;
    }

    public final void f()
    {
        super.a.b(a());
        super.a.a(as.d);
    }
}
