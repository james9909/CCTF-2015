// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.ui.swipefilters.VideoFilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageProvider;
import com.snapchat.videotranscoder.task.VideoFilterRenderingTask;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeViewState, SwipeImageView

public class SwipeVideoViewController
    implements SwipeController.OnScrollListener
{

    private FilterPageProvider a;
    private SwipeViewState b;
    private VideoFilterRenderingTask c;
    private com.snapchat.videotranscoder.video.ShaderText.Type d;
    private com.snapchat.videotranscoder.video.ShaderText.Type e;
    private float f;

    public SwipeVideoViewController(FilterPageProvider filterpageprovider, SwipeViewState swipeviewstate)
    {
        a = filterpageprovider;
        b = swipeviewstate;
        d = com.snapchat.videotranscoder.video.ShaderText.Type.a;
        e = com.snapchat.videotranscoder.video.ShaderText.Type.a;
        f = 0.0F;
    }

    private void c()
    {
        boolean flag = true;
        if (c != null)
        {
            boolean flag1;
            com.snapchat.android.ui.swipefilters.FilterPage filterpage;
            com.snapchat.android.ui.swipefilters.FilterPage filterpage1;
            com.snapchat.videotranscoder.video.ShaderText.Type type;
            com.snapchat.videotranscoder.video.ShaderText.Type type1;
            com.snapchat.videotranscoder.video.ShaderText.Type type2;
            boolean flag2;
            com.snapchat.videotranscoder.video.ShaderText.Type type3;
            if (b.b() && !(a.a(b.c()) instanceof VideoFilterPage))
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            filterpage = a.a(b.c(flag1));
            filterpage1 = a.a(b.d(flag1));
            type = com.snapchat.videotranscoder.video.ShaderText.Type.a;
            if (filterpage instanceof VideoFilterPage)
            {
                type1 = ((VideoFilterPage)filterpage).f();
            } else
            {
                type1 = type;
            }
            type2 = e;
            flag2 = false;
            if (type2 != type1)
            {
                e = type1;
                flag2 = flag;
            }
            type3 = com.snapchat.videotranscoder.video.ShaderText.Type.a;
            if (filterpage1 instanceof VideoFilterPage)
            {
                type3 = ((VideoFilterPage)filterpage1).f();
            }
            if (d != type3)
            {
                d = type3;
            } else
            {
                flag = flag2;
            }
            if (flag)
            {
                c.a(e, d);
            }
        }
    }

    public void a()
    {
        c = null;
    }

    public void a(SwipeImageView swipeimageview)
    {
        f = swipeimageview.getScrollOffset();
        if (c != null)
        {
            c();
            c.b(f);
        }
    }

    public void a(SwipeImageView swipeimageview, boolean flag)
    {
        if (flag && c != null)
        {
            c();
        }
    }

    public void a(VideoFilterRenderingTask videofilterrenderingtask)
    {
        c = videofilterrenderingtask;
    }

    public com.snapchat.videotranscoder.video.ShaderText.Type b()
    {
        if ((double)f > 0.5D)
        {
            return e;
        } else
        {
            return d;
        }
    }

    public void b(SwipeImageView swipeimageview)
    {
    }
}
