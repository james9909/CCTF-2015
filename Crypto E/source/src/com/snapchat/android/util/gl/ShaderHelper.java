// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.gl;

import android.opengl.GLES20;
import com.snapchat.android.Timber;

public class ShaderHelper
{

    public ShaderHelper()
    {
    }

    public static int a(int i, int j, String as[])
    {
        int k;
        int l;
        k = 0;
        l = GLES20.glCreateProgram();
        if (l == 0) goto _L2; else goto _L1
_L1:
        int ai[];
        GLES20.glAttachShader(l, i);
        GLES20.glAttachShader(l, j);
        if (as != null)
        {
            int i1 = as.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                GLES20.glBindAttribLocation(l, j1, as[j1]);
            }

        }
        GLES20.glLinkProgram(l);
        ai = new int[1];
        GLES20.glGetProgramiv(l, 35714, ai, 0);
        if (ai[0] != 0) goto _L2; else goto _L3
_L3:
        Timber.e("ShaderHelper", (new StringBuilder()).append("Error compiling program: ").append(GLES20.glGetProgramInfoLog(l)).toString(), new Object[0]);
        GLES20.glDeleteProgram(l);
_L5:
        if (k == 0)
        {
            throw new RuntimeException("Error creating program.");
        } else
        {
            return k;
        }
_L2:
        k = l;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static int a(int i, String s)
    {
        int j = GLES20.glCreateShader(i);
        if (j != 0)
        {
            GLES20.glShaderSource(j, s);
            GLES20.glCompileShader(j);
            int ai[] = new int[1];
            GLES20.glGetShaderiv(j, 35713, ai, 0);
            if (ai[0] == 0)
            {
                throw new RuntimeException((new StringBuilder()).append("Error compiling shader: ").append(GLES20.glGetShaderInfoLog(j)).toString());
            }
        }
        if (j == 0)
        {
            throw new RuntimeException("Error creating shader.");
        } else
        {
            return j;
        }
    }
}
