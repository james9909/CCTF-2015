// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipefilters;


// Referenced classes of package com.snapchat.android.ui.swipefilters:
//            FilterPage, FilterPageType

public class VideoFilterPage extends FilterPage
{

    private com.snapchat.videotranscoder.video.ShaderText.Type b;

    public VideoFilterPage(com.snapchat.videotranscoder.video.ShaderText.Type type)
    {
        b = type;
    }

    public String a()
    {
        return (new StringBuilder()).append("Shader type is: ").append(b.name()).toString();
    }

    public FilterPageType b()
    {
        return FilterPageType.d;
    }

    public com.snapchat.videotranscoder.video.ShaderText.Type f()
    {
        return b;
    }
}
