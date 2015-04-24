// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.video;


public class ShaderText
{
    public static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        public static final Type c;
        public static final Type d;
        private static final Type e[];

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/videotranscoder/video/ShaderText$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])e.clone();
        }

        static 
        {
            a = new Type("NORMAL", 0);
            b = new Type("INSTASNAP", 1);
            c = new Type("GREYSCALE", 2);
            d = new Type("SEPIA", 3);
            Type atype[] = new Type[4];
            atype[0] = a;
            atype[1] = b;
            atype[2] = c;
            atype[3] = d;
            e = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    public ShaderText()
    {
    }

    public static String a(Type type)
    {
        Object aobj[] = new Object[1];
        aobj[0] = String.format(b(type), new Object[] {
            "gl_FragColor"
        });
        return String.format("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   %s}\n", aobj);
    }

    public static String a(Type type, Type type1)
    {
        String s = String.format(b(type), new Object[] {
            "vec4 leftSample"
        });
        String s1 = String.format(b(type1), new Object[] {
            "vec4 rightSample"
        });
        if (type == type1)
        {
            s1 = "vec4 rightSample = leftSample;\n";
        }
        return String.format("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform mat4 uTransform;\nuniform float uSplit;\nvoid main() {\n   vec4 originalCoord = uTransform * vec4(vTextureCoord.x, vTextureCoord.y, 0.0, 1.0);\n   %s   %s   float isLeftSample = step(originalCoord.x, uSplit);\n   float isRightSample = 1.0 - isLeftSample;\n   gl_FragColor = leftSample * isLeftSample + rightSample * isRightSample;\n}\n", new Object[] {
            s, s1
        });
    }

    private static String b(Type type)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[Type.values().length];
                try
                {
                    a[Type.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[Type.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[Type.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[type.ordinal()])
        {
        default:
            return "%s = texture2D(sTexture, vTextureCoord);\n";

        case 1: // '\001'
            return "   vec3 R0 = vec3( 0.299, 0.587, 0.114 );\n   vec3 irgb = texture2D(sTexture, vTextureCoord).rgb;\n   float luminance = dot(irgb, R0);\n   %s = vec4(luminance, luminance, luminance, 1.);\n";

        case 2: // '\002'
            return "   lowp mat4 colorMatrix = mat4(0.3588, 0.7044, 0.1368, 0.0,                                0.2990, 0.5870, 0.1140, 0.0,                                0.2392, 0.4969, 0.0912, 0.0,                                0.0, 0.0, 0.0, 1.0)   ;\n   lowp float intensity = 1.0;\n   lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n   lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    %s = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n";

        case 3: // '\003'
            return "     lowp vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;\n     float red = rgb.x * 0.9647;\n     float green = rgb.y * 0.8666;\n     float blue = 0.1330 + 0.5454 * rgb.z;\n     %s = vec4(red, green, blue, 1.0);\n";
        }
    }
}
