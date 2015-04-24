// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.view;

import android.opengl.GLES20;
import com.addlive.impl.Log;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.addlive.service.DrawRequest;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class VideoRenderer
    implements android.opengl.GLSurfaceView.Renderer
{

    private static final String FRAGMENT_SHADER_SRC = "precision mediump float;                                \nvarying vec2 TexCoordOut;                           \nuniform sampler2D TextureY;                         \nuniform sampler2D TextureU;                         \nuniform sampler2D TextureV;                         \nconst mat3 yuv2rgb = mat3(                          \n  1, 1, 1,                                          \n  0, -0.18732, 1.8556,                              \n  1.57481, -0.46813, 0);                            \nvoid main(void) {                                   \n  vec3 yuv;                                         \n  vec3 rgb;                                         \n  yuv.x = texture2D(TextureY, TexCoordOut).r;       \n  yuv.y = texture2D(TextureU, TexCoordOut).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOut).r - 0.5; \n  rgb = yuv2rgb * yuv;                              \n  gl_FragColor = vec4(rgb, 1.0);                    \n}                                                   \n";
    private static final String LOG_TAG = "AddLive_SDK";
    private static final int SIZE_FLOAT = 4;
    private static final int SIZE_SHORT = 2;
    private static final String VERTEX_SHADER_SRC = "attribute vec4 Position;                                \nattribute vec2 TexCoordIn;                          \nvarying vec2 TexCoordOut;\t                       \nvoid main(void) {                                   \n  gl_Position = Position;\t                       \n  TexCoordOut = TexCoordIn;                         \n}                                                   \n";
    private ShortBuffer indexBuffer;
    private boolean mirror;
    private int positionSlot;
    private int program;
    private int rendererId;
    private int srfHeight;
    private int srfWidth;
    private int texCoordSlot;
    private int texHeight;
    private int texU;
    private int texUniformU;
    private int texUniformV;
    private int texUniformY;
    private int texV;
    private int texWidth;
    private int texY;
    private boolean updateTextures;
    private FloatBuffer vertexBuffer;

    public VideoRenderer()
    {
        mirror = false;
        rendererId = -1;
        program = -1;
        positionSlot = -1;
        texCoordSlot = -1;
        texUniformY = -1;
        texUniformU = -1;
        texUniformV = -1;
        texY = -1;
        texU = -1;
        texV = -1;
        texWidth = 0;
        texHeight = 0;
        srfWidth = 0;
        srfHeight = 0;
        vertexBuffer = null;
        indexBuffer = null;
        updateTextures = false;
        float af[] = {
            -1F, -1F, 0.0F, 0.0F, 1.0F, 1.0F, -1F, 0.0F, 1.0F, 1.0F, 
            1.0F, 1.0F, 0.0F, 1.0F, 0.0F, -1F, 1.0F, 0.0F, 0.0F, 0.0F
        };
        vertexBuffer = ByteBuffer.allocateDirect(4 * af.length).order(ByteOrder.nativeOrder()).asFloatBuffer();
        vertexBuffer.put(af).rewind();
        short aword0[] = {
            0, 1, 2, 2, 3, 0
        };
        indexBuffer = ByteBuffer.allocateDirect(2 * aword0.length).order(ByteOrder.nativeOrder()).asShortBuffer();
        indexBuffer.put(aword0).rewind();
    }

    private int align4(int i)
    {
        return -4 & i + 3;
    }

    private void allocTextures(int i, int j)
    {
        texY = newTexture(i, j, 6409, null);
        texU = newTexture(i / 2, j / 2, 6409, null);
        texV = newTexture(i / 2, j / 2, 6409, null);
        texWidth = i;
        texHeight = j;
    }

    private void clearTextures()
    {
        if (texWidth == 0 || texHeight == 0)
        {
            return;
        }
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(align4(texWidth) * texHeight);
        for (int i = 0; i < bytebuffer.capacity(); i++)
        {
            bytebuffer.put((byte)0);
        }

        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, texY);
        GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth), texHeight, 6409, 5121, bytebuffer.rewind());
        ByteBuffer bytebuffer1 = ByteBuffer.allocateDirect((align4(texWidth / 2) * texHeight) / 2);
        for (int j = 0; j < bytebuffer1.capacity(); j++)
        {
            bytebuffer1.put((byte)-128);
        }

        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, texU);
        GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth / 2), texHeight / 2, 6409, 5121, bytebuffer1.rewind());
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, texV);
        GLES20.glTexSubImage2D(3553, 0, 0, 0, align4(texWidth / 2), texHeight / 2, 6409, 5121, bytebuffer1.rewind());
    }

    private int createShader(int i, String s)
    {
        int j = GLES20.glCreateShader(i);
        if (j == 0)
        {
            Log.e("AddLive_SDK", "Error creating shader.");
            throw new RuntimeException("Error creating shader.");
        }
        GLES20.glShaderSource(j, s);
        GLES20.glCompileShader(j);
        int ai[] = new int[1];
        GLES20.glGetShaderiv(j, 35713, ai, 0);
        if (ai[0] == 0)
        {
            GLES20.glDeleteShader(j);
            Log.e("AddLive_SDK", "Error compiling shader.");
            throw new RuntimeException("Error compiling shader.");
        } else
        {
            return j;
        }
    }

    private void deallocTextures()
    {
        int ai[] = new int[3];
        ai[0] = texY;
        ai[1] = texU;
        ai[2] = texV;
        GLES20.glDeleteTextures(3, ai, 0);
        texV = -1;
        texU = -1;
        texY = -1;
    }

    private void initShaders()
    {
        int i = createShader(35633, "attribute vec4 Position;                                \nattribute vec2 TexCoordIn;                          \nvarying vec2 TexCoordOut;\t                       \nvoid main(void) {                                   \n  gl_Position = Position;\t                       \n  TexCoordOut = TexCoordIn;                         \n}                                                   \n");
        int j = createShader(35632, "precision mediump float;                                \nvarying vec2 TexCoordOut;                           \nuniform sampler2D TextureY;                         \nuniform sampler2D TextureU;                         \nuniform sampler2D TextureV;                         \nconst mat3 yuv2rgb = mat3(                          \n  1, 1, 1,                                          \n  0, -0.18732, 1.8556,                              \n  1.57481, -0.46813, 0);                            \nvoid main(void) {                                   \n  vec3 yuv;                                         \n  vec3 rgb;                                         \n  yuv.x = texture2D(TextureY, TexCoordOut).r;       \n  yuv.y = texture2D(TextureU, TexCoordOut).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOut).r - 0.5; \n  rgb = yuv2rgb * yuv;                              \n  gl_FragColor = vec4(rgb, 1.0);                    \n}                                                   \n");
        program = GLES20.glCreateProgram();
        if (program == 0)
        {
            Log.e("AddLive_SDK", "Error creating program.");
            throw new RuntimeException("Error creating program.");
        }
        GLES20.glAttachShader(program, i);
        GLES20.glAttachShader(program, j);
        GLES20.glLinkProgram(program);
        int ai[] = new int[1];
        GLES20.glGetProgramiv(program, 35714, ai, 0);
        if (ai[0] == 0)
        {
            GLES20.glDeleteProgram(program);
            Log.e("AddLive_SDK", "Error linking program.");
            throw new RuntimeException("Error linking program.");
        } else
        {
            GLES20.glUseProgram(program);
            positionSlot = GLES20.glGetAttribLocation(program, "Position");
            texCoordSlot = GLES20.glGetAttribLocation(program, "TexCoordIn");
            GLES20.glEnableVertexAttribArray(positionSlot);
            GLES20.glEnableVertexAttribArray(texCoordSlot);
            texUniformY = GLES20.glGetUniformLocation(program, "TextureY");
            texUniformU = GLES20.glGetUniformLocation(program, "TextureU");
            texUniformV = GLES20.glGetUniformLocation(program, "TextureV");
            return;
        }
    }

    private int newTexture(int i, int j, int k, ByteBuffer bytebuffer)
    {
        IntBuffer intbuffer = IntBuffer.allocate(1);
        GLES20.glGenTextures(1, intbuffer);
        GLES20.glBindTexture(3553, intbuffer.get(0));
        GLES20.glPixelStorei(3317, 1);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLES20.glTexImage2D(3553, 0, k, align4(i), j, 0, k, 5121, bytebuffer);
        return intbuffer.get(0);
    }

    private void renderFrame()
    {
        if (texY < 0 || texU < 0 || texV < 0)
        {
            return;
        } else
        {
            DrawRequest drawrequest = new DrawRequest(0, 0, texHeight, texWidth, rendererId, texY, texU, texV);
            ADL.getService().draw(drawrequest);
            GLES20.glVertexAttribPointer(positionSlot, 3, 5126, false, 20, 0);
            GLES20.glVertexAttribPointer(texCoordSlot, 2, 5126, false, 20, 12);
            GLES20.glEnableVertexAttribArray(positionSlot);
            GLES20.glEnableVertexAttribArray(texCoordSlot);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, texY);
            GLES20.glUniform1i(texUniformY, 0);
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, texU);
            GLES20.glUniform1i(texUniformU, 1);
            GLES20.glActiveTexture(33986);
            GLES20.glBindTexture(3553, texV);
            GLES20.glUniform1i(texUniformV, 2);
            GLES20.glDrawElements(4, 6, 5123, 0);
            return;
        }
    }

    private void updateTexCoord()
    {
        float f = (float)texWidth / (float)texHeight;
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        if (f * (float)srfHeight > (float)srfWidth)
        {
            f1 = f * (float)srfHeight;
        } else
        {
            f1 = srfWidth;
        }
        if ((float)srfWidth / f > (float)srfHeight)
        {
            f2 = (float)srfWidth / f;
        } else
        {
            f2 = srfHeight;
        }
        f3 = f1 - (float)srfWidth;
        f4 = f2 - (float)srfHeight;
        f5 = (f3 * 0.5F) / f1;
        f6 = (0.5F * f4) / f2;
        f7 = texWidth - (0xfffffff0 & texWidth);
        f8 = f7 / f;
        f9 = f7 / (float)texWidth;
        f10 = f8 / (float)texHeight;
        if (!mirror)
        {
            vertexBuffer.put(3, 0.0F + f5);
            vertexBuffer.put(4, 1.0F - f6 - f10);
            vertexBuffer.put(8, 1.0F - f5 - f9);
            vertexBuffer.put(9, 1.0F - f6 - f10);
            vertexBuffer.put(13, 1.0F - f5 - f9);
            vertexBuffer.put(14, 0.0F + f6);
            vertexBuffer.put(18, f5 + 0.0F);
            vertexBuffer.put(19, f6 + 0.0F);
        } else
        {
            vertexBuffer.put(3, 1.0F - f5 - f9);
            vertexBuffer.put(4, 1.0F - f6 - f10);
            vertexBuffer.put(8, 0.0F + f5);
            vertexBuffer.put(9, 1.0F - f6 - f10);
            vertexBuffer.put(13, 0.0F + f5);
            vertexBuffer.put(14, 0.0F + f6);
            vertexBuffer.put(18, 1.0F - f5 - f9);
            vertexBuffer.put(19, f6 + 0.0F);
        }
        GLES20.glBufferSubData(34962, 0, 80, vertexBuffer);
    }

    private void updateTextures(int i, int j)
    {
        deallocTextures();
        allocTextures(i, j);
        clearTextures();
        updateTexCoord();
        updateTextures = false;
    }

    public int getRendererId()
    {
        return rendererId;
    }

    public void onDrawFrame(GL10 gl10)
    {
        GLES20.glClear(16384);
        GLES20.glUseProgram(program);
        if (updateTextures)
        {
            updateTextures(texWidth, texHeight);
        }
        if (rendererId >= 0 && texWidth > 0 && texHeight > 0)
        {
            renderFrame();
        }
        GLES20.glFinish();
    }

    public void onResolutionChanged(int i, int j)
    {
        if (texWidth == i && texHeight == j)
        {
            return;
        } else
        {
            texWidth = i;
            texHeight = j;
            updateTextures = true;
            return;
        }
    }

    public void onStartRendering(int i, boolean flag)
    {
        rendererId = i;
        mirror = flag;
    }

    public void onStopRendering()
    {
        rendererId = -1;
        clearTextures();
    }

    public void onSurfaceChanged(GL10 gl10, int i, int j)
    {
        Log.d("AddLive_SDK", (new StringBuilder()).append("VideoRenderer::onSurfaceChanged(").append(i).append("x").append(j).append(")").toString());
        GLES20.glViewport(0, 0, i, j);
        srfWidth = i;
        srfHeight = j;
        updateTextures = true;
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        Log.i("AddLive_SDK", "GL Details: ==================");
        Log.i("AddLive_SDK", (new StringBuilder()).append("VERSION: ").append(GLES20.glGetString(7938)).toString());
        Log.i("AddLive_SDK", (new StringBuilder()).append("VENDOR: ").append(GLES20.glGetString(7936)).toString());
        Log.i("AddLive_SDK", (new StringBuilder()).append("RENDERER: ").append(GLES20.glGetString(7937)).toString());
        Log.i("AddLive_SDK", (new StringBuilder()).append("EXTENSION: ").append(GLES20.glGetString(7939)).toString());
        Log.i("AddLive_SDK", "==============================");
        IntBuffer intbuffer = IntBuffer.allocate(2);
        GLES20.glGenTextures(2, intbuffer);
        GLES20.glBindBuffer(34962, intbuffer.get(0));
        GLES20.glBufferData(34962, 80, vertexBuffer, 35040);
        GLES20.glBindBuffer(34963, intbuffer.get(1));
        GLES20.glBufferData(34963, 12, indexBuffer, 35044);
        initShaders();
    }
}
