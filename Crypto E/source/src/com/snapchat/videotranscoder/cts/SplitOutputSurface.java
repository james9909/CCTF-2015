// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.cts;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.VerboseLogging;
import com.snapchat.videotranscoder.video.ShaderText;

// Referenced classes of package com.snapchat.videotranscoder.cts:
//            OutputSurface, SplitTextureRenderer, TextureRenderer

public class SplitOutputSurface extends OutputSurface
{

    public SplitOutputSurface(float af[])
    {
        super(af, null);
    }

    public void a(float f)
    {
        if (h != null)
        {
            ((SplitTextureRenderer)h).a(f);
            return;
        } else
        {
            throw new RuntimeException();
        }
    }

    public void a(com.snapchat.videotranscoder.video.ShaderText.Type type, com.snapchat.videotranscoder.video.ShaderText.Type type1)
    {
        ((SplitTextureRenderer)h).c(ShaderText.a(type, type1));
    }

    protected void a(float af[])
    {
        if (af == null || af.length != 16)
        {
            throw new SetupException("Transformation matrix must be defined and have a length of 16");
        } else
        {
            h = new SplitTextureRenderer(af);
            h.a();
            VerboseLogging.a("SplitOutputSurface", (new StringBuilder()).append("textureID=").append(h.f()).toString());
            d = new SurfaceTexture(h.f());
            d.setOnFrameAvailableListener(this);
            e = new Surface(d);
            return;
        }
    }

    public void d()
    {
        h.b("before updateTexImage");
        d.updateTexImage();
    }

    public void onFrameAvailable(SurfaceTexture surfacetexture)
    {
        VerboseLogging.a("SplitOutputSurface", "new frame available");
    }
}
