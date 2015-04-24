// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.model.AnnotatedMediabryo;
import org.apache.commons.lang3.NotImplementedException;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapbryo

public class DSnapVideobryo extends DSnapbryo
{

    private boolean c;

    public DSnapVideobryo(DSnapVideobryo dsnapvideobryo)
    {
        super(dsnapvideobryo);
    }

    DSnapVideobryo(DSnapbryo.Builder builder)
    {
        super(builder);
    }

    public DSnapbryo a()
    {
        return new DSnapVideobryo(this);
    }

    public int b()
    {
        return !c ? 1 : 2;
    }

    public boolean c()
    {
        return c;
    }

    public Object clone()
    {
        return a();
    }

    public byte[] d()
    {
        throw new NotImplementedException("Currently we only send the screenshot of the discover video when the user double taps");
    }

    public AnnotatedMediabryo e()
    {
        return a();
    }
}
