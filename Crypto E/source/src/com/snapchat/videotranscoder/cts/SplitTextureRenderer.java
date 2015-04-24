// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.cts;

import android.opengl.GLES20;
import android.opengl.Matrix;
import com.snapchat.videotranscoder.video.ShaderText;

// Referenced classes of package com.snapchat.videotranscoder.cts:
//            TextureRenderer

public class SplitTextureRenderer extends TextureRenderer
{

    private static final String o;
    private int p;
    private float q;
    private float r;
    private int s;
    private float t[];

    public SplitTextureRenderer(float af[])
    {
        super(af);
        q = 0.0F;
        r = 0.0F;
        t = new float[16];
        Matrix.invertM(t, 0, d, 0);
    }

    public void a()
    {
        super.a();
        b();
        p = GLES20.glGetUniformLocation(e, "uSplit");
        if (p == -1)
        {
            throw new RuntimeException("Could not get uniform location for uSplit");
        }
        s = GLES20.glGetUniformLocation(e, "uTransform");
        if (s == -1)
        {
            throw new RuntimeException("Could not get uniform location for transform");
        } else
        {
            return;
        }
    }

    public void a(float f1)
    {
        r = f1;
    }

    public void a(String s1)
    {
        throw new UnsupportedOperationException();
    }

    protected void b()
    {
        e = a("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", o);
        if (e == 0)
        {
            throw new RuntimeException("failed creating program");
        } else
        {
            return;
        }
    }

    public volatile void b(String s1)
    {
        super.b(s1);
    }

    protected void c()
    {
        q = r;
        GLES20.glUniform1f(p, q);
        GLES20.glUniformMatrix4fv(s, 1, false, t, 0);
    }

    public volatile void c(String s1)
    {
        super.c(s1);
    }

    public volatile void d()
    {
        super.d();
    }

    public volatile void e()
    {
        super.e();
    }

    public volatile int f()
    {
        return super.f();
    }

    static 
    {
        o = ShaderText.a(com.snapchat.videotranscoder.video.ShaderText.Type.a, com.snapchat.videotranscoder.video.ShaderText.Type.a);
    }
}
