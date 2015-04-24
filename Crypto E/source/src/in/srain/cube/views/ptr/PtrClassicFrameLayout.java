// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import android.content.Context;
import android.util.AttributeSet;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrFrameLayout, PtrClassicDefaultHeader

public class PtrClassicFrameLayout extends PtrFrameLayout
{

    private PtrClassicDefaultHeader e;

    public PtrClassicFrameLayout(Context context)
    {
        super(context);
        a();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        e = new PtrClassicDefaultHeader(getContext());
        setHeaderView(e);
        a(((PtrUIHandler) (e)));
    }

    public PtrClassicDefaultHeader getHeader()
    {
        return e;
    }

    public void setLastUpdateTimeKey(String s)
    {
        if (e != null)
        {
            e.setLastUpdateTimeKey(s);
        }
    }

    public void setLastUpdateTimeRelateObject(Object obj)
    {
        if (e != null)
        {
            e.setLastUpdateTimeRelateObject(obj);
        }
    }
}
