// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.cts;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.Log;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.Debug;
import com.snapchat.videotranscoder.video.ShaderText;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

class TextureRenderer
{

    protected static final float a[] = {
        -1F, -1F, 0.0F, 0.0F, 0.0F, 1.0F, -1F, 0.0F, 1.0F, 0.0F, 
        -1F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F
    };
    private static final String o;
    protected FloatBuffer b;
    protected float c[];
    protected float d[];
    protected int e;
    protected int f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected int k;
    protected boolean l;
    protected Map m;
    protected int n;
    private String p;

    public TextureRenderer(float af[])
    {
        c = new float[16];
        d = new float[16];
        f = -12345;
        g = -12345;
        p = null;
        l = false;
        m = new HashMap();
        n = -1;
        if (af == null || af.length != 16)
        {
            throw new SetupException("Transformation matrix must be defined and have a length of 16");
        } else
        {
            b = ByteBuffer.allocateDirect(4 * a.length).order(ByteOrder.nativeOrder()).asFloatBuffer();
            b.put(a).position(0);
            Matrix.setIdentityM(d, 0);
            d = af;
            return;
        }
    }

    private int a(int i1, String s)
    {
        int j1 = GLES20.glCreateShader(i1);
        b((new StringBuilder()).append("glCreateShader type=").append(i1).toString());
        GLES20.glShaderSource(j1, s);
        GLES20.glCompileShader(j1);
        int ai[] = new int[1];
        GLES20.glGetShaderiv(j1, 35713, ai, 0);
        if (ai[0] == 0)
        {
            Log.e("TextureRenderer", (new StringBuilder()).append("Could not compile shader ").append(i1).append(":").toString());
            Log.e("TextureRenderer", (new StringBuilder()).append(" ").append(GLES20.glGetShaderInfoLog(j1)).toString());
            GLES20.glDeleteShader(j1);
            throw new RuntimeException("Could not compile shader");
        } else
        {
            m.put(s, Integer.valueOf(j1));
            return j1;
        }
    }

    private void a(int i1)
    {
        a(i1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sExternalTexture;\nuniform sampler2D sOverlayTexture;\nvoid main() {\n   vec4 externalSample = texture2D(sExternalTexture, vTextureCoord);\n   vec4 overlaySample = texture2D(sOverlayTexture, vTextureCoord);\n   gl_FragColor = externalSample * (1.0 - overlaySample.a) + overlaySample;\n}\n");
        com.snapchat.videotranscoder.video.ShaderText.Type atype[] = com.snapchat.videotranscoder.video.ShaderText.Type.values();
        int j1 = atype.length;
        for (int k1 = 0; k1 < j1; k1++)
        {
            a(i1, ShaderText.a(atype[k1]));
        }

        com.snapchat.videotranscoder.video.ShaderText.Type atype1[] = com.snapchat.videotranscoder.video.ShaderText.Type.values();
        int l1 = atype1.length;
        for (int i2 = 0; i2 < l1; i2++)
        {
            com.snapchat.videotranscoder.video.ShaderText.Type type = atype1[i2];
            com.snapchat.videotranscoder.video.ShaderText.Type atype2[] = com.snapchat.videotranscoder.video.ShaderText.Type.values();
            int j2 = atype2.length;
            for (int k2 = 0; k2 < j2; k2++)
            {
                a(i1, ShaderText.a(type, atype2[k2]));
            }

        }

    }

    protected int a(String s, String s1)
    {
        int i1 = a(35633, s);
        if (i1 == 0)
        {
            return 0;
        }
        a(35632);
        int j1 = GLES20.glCreateProgram();
        b("glCreateProgram");
        if (j1 == 0)
        {
            Log.e("TextureRenderer", "Could not create program");
        }
        GLES20.glAttachShader(j1, i1);
        b("glAttachShader");
        n = ((Integer)m.get(s1)).intValue();
        GLES20.glAttachShader(j1, n);
        b("glAttachShader");
        GLES20.glLinkProgram(j1);
        int ai[] = new int[1];
        GLES20.glGetProgramiv(j1, 35714, ai, 0);
        int k1;
        if (ai[0] != 1)
        {
            Log.e("TextureRenderer", "Could not link program: ");
            Log.e("TextureRenderer", GLES20.glGetProgramInfoLog(j1));
            GLES20.glDeleteProgram(j1);
            k1 = 0;
        } else
        {
            k1 = j1;
        }
        return k1;
    }

    public void a()
    {
        boolean flag;
        if (!l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
        b();
        j = GLES20.glGetAttribLocation(e, "aPosition");
        b("glGetAttribLocation aPosition");
        if (j == -1)
        {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        k = GLES20.glGetAttribLocation(e, "aTextureCoord");
        b("glGetAttribLocation aTextureCoord");
        if (k == -1)
        {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        h = GLES20.glGetUniformLocation(e, "uMVPMatrix");
        b("glGetUniformLocation uMVPMatrix");
        if (h == -1)
        {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        i = GLES20.glGetUniformLocation(e, "uSTMatrix");
        b("glGetUniformLocation uSTMatrix");
        if (i == -1)
        {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        int ai[] = new int[2];
        GLES20.glGenTextures(2, ai, 0);
        f = ai[0];
        g = ai[1];
        GLES20.glBindTexture(36197, f);
        b("glBindTexture mExternalTextureID");
        GLES20.glTexParameterf(36197, 10241, 9728F);
        GLES20.glTexParameterf(36197, 10240, 9729F);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        b("glTexParameter");
        if (p != null)
        {
            GLES20.glBindTexture(3553, g);
            b("glBindTexture mOverlayTextureID");
            GLES20.glTexParameterf(3553, 10241, 9729F);
            GLES20.glTexParameterf(3553, 10240, 9729F);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            b("glTexParameter");
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            Bitmap bitmap = BitmapFactory.decodeFile(p, options);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
            b("texImage2D");
            bitmap.recycle();
        }
        l = true;
    }

    public void a(String s)
    {
        boolean flag;
        if (!l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Debug.a(flag);
        p = s;
    }

    protected void b()
    {
        String s;
        if (p != null)
        {
            s = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sExternalTexture;\nuniform sampler2D sOverlayTexture;\nvoid main() {\n   vec4 externalSample = texture2D(sExternalTexture, vTextureCoord);\n   vec4 overlaySample = texture2D(sOverlayTexture, vTextureCoord);\n   gl_FragColor = externalSample * (1.0 - overlaySample.a) + overlaySample;\n}\n";
        } else
        {
            s = o;
        }
        e = a("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", s);
        if (e == 0)
        {
            throw new RuntimeException("failed creating program");
        } else
        {
            return;
        }
    }

    public void b(String s)
    {
        int i1 = GLES20.glGetError();
        if (i1 != 0)
        {
            Log.e("TextureRenderer", (new StringBuilder()).append(s).append(": glError ").append(i1).toString());
            throw new RuntimeException((new StringBuilder()).append(s).append(": glError ").append(i1).append(" ").append(GLU.gluErrorString(i1)).toString());
        } else
        {
            return;
        }
    }

    protected void c()
    {
        if (p != null)
        {
            int i1 = GLES20.glGetUniformLocation(e, "sOverlayTexture");
            b("glGetUniformLocation");
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, g);
            GLES20.glUniform1i(i1, 1);
        }
    }

    public void c(String s)
    {
        if (e == 0)
        {
            throw new RuntimeException("Program doesn't exist");
        }
        if (!m.containsKey(s))
        {
            throw new RuntimeException("Shader does not exist");
        }
        int i1 = ((Integer)m.get(s)).intValue();
        if (n != i1)
        {
            if (n != -1)
            {
                GLES20.glDetachShader(e, n);
            }
            n = i1;
            GLES20.glAttachShader(e, n);
            GLES20.glLinkProgram(e);
            b("glAttachShader");
        }
    }

    public void d()
    {
        int ai[] = new int[2];
        ai[0] = f;
        ai[1] = g;
        GLES20.glDeleteTextures(2, ai, 0);
    }

    public void e()
    {
        Debug.a(l);
        b("onDrawFrame start");
        GLES20.glClearColor(0.0F, 1.0F, 0.0F, 1.0F);
        GLES20.glClear(16640);
        GLES20.glUseProgram(e);
        b("glUseProgram");
        int i1 = GLES20.glGetUniformLocation(e, "sExternalTexture");
        b("glGetUniformLocation");
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, f);
        GLES20.glUniform1i(i1, 0);
        c();
        b.position(0);
        GLES20.glVertexAttribPointer(j, 3, 5126, false, 20, b);
        b("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(j);
        b("glEnableVertexAttribArray maPositionHandle");
        b.position(3);
        GLES20.glVertexAttribPointer(k, 2, 5126, false, 20, b);
        b("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(k);
        b("glEnableVertexAttribArray maTextureHandle");
        Matrix.setIdentityM(c, 0);
        GLES20.glUniformMatrix4fv(h, 1, false, c, 0);
        GLES20.glUniformMatrix4fv(i, 1, false, d, 0);
        GLES20.glDrawArrays(5, 0, 4);
        b("glDrawArrays");
        GLES20.glFinish();
    }

    public int f()
    {
        Debug.a(l);
        return f;
    }

    static 
    {
        o = ShaderText.a(com.snapchat.videotranscoder.video.ShaderText.Type.a);
    }
}
