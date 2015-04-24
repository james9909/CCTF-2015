// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import java.io.File;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.apache.http.HttpEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.content.ByteArrayBody;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.InputStreamBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.entity.mime:
//            HttpMultipartMode, FormBodyPart, HttpStrictMultipart, MultipartFormEntity, 
//            AbstractMultipartForm, HttpBrowserCompatibleMultipart, HttpRFC6532Multipart

public class MultipartEntityBuilder
{

    private static final String DEFAULT_SUBTYPE = "form-data";
    private static final char MULTIPART_CHARS[] = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private List bodyParts;
    private String boundary;
    private Charset charset;
    private HttpMultipartMode mode;
    private String subType;

    MultipartEntityBuilder()
    {
        subType = "form-data";
        mode = HttpMultipartMode.STRICT;
        boundary = null;
        charset = null;
        bodyParts = null;
    }

    public static MultipartEntityBuilder create()
    {
        return new MultipartEntityBuilder();
    }

    private String generateBoundary()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Random random = new Random();
        int i = 30 + random.nextInt(11);
        for (int j = 0; j < i; j++)
        {
            stringbuilder.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
        }

        return stringbuilder.toString();
    }

    private String generateContentType(String s, Charset charset1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("multipart/form-data; boundary=");
        stringbuilder.append(s);
        if (charset1 != null)
        {
            stringbuilder.append("; charset=");
            stringbuilder.append(charset1.name());
        }
        return stringbuilder.toString();
    }

    public MultipartEntityBuilder addBinaryBody(String s, File file)
    {
        ContentType contenttype = ContentType.DEFAULT_BINARY;
        String s1;
        if (file != null)
        {
            s1 = file.getName();
        } else
        {
            s1 = null;
        }
        return addBinaryBody(s, file, contenttype, s1);
    }

    public MultipartEntityBuilder addBinaryBody(String s, File file, ContentType contenttype, String s1)
    {
        return addPart(s, new FileBody(file, contenttype, s1));
    }

    public MultipartEntityBuilder addBinaryBody(String s, InputStream inputstream)
    {
        return addBinaryBody(s, inputstream, ContentType.DEFAULT_BINARY, null);
    }

    public MultipartEntityBuilder addBinaryBody(String s, InputStream inputstream, ContentType contenttype, String s1)
    {
        return addPart(s, new InputStreamBody(inputstream, contenttype, s1));
    }

    public MultipartEntityBuilder addBinaryBody(String s, byte abyte0[])
    {
        return addBinaryBody(s, abyte0, ContentType.DEFAULT_BINARY, null);
    }

    public MultipartEntityBuilder addBinaryBody(String s, byte abyte0[], ContentType contenttype, String s1)
    {
        return addPart(s, new ByteArrayBody(abyte0, contenttype, s1));
    }

    public MultipartEntityBuilder addPart(String s, ContentBody contentbody)
    {
        Args.notNull(s, "Name");
        Args.notNull(contentbody, "Content body");
        return addPart(new FormBodyPart(s, contentbody));
    }

    MultipartEntityBuilder addPart(FormBodyPart formbodypart)
    {
        if (formbodypart == null)
        {
            return this;
        }
        if (bodyParts == null)
        {
            bodyParts = new ArrayList();
        }
        bodyParts.add(formbodypart);
        return this;
    }

    public MultipartEntityBuilder addTextBody(String s, String s1)
    {
        return addTextBody(s, s1, ContentType.DEFAULT_TEXT);
    }

    public MultipartEntityBuilder addTextBody(String s, String s1, ContentType contenttype)
    {
        return addPart(s, new StringBody(s1, contenttype));
    }

    public HttpEntity build()
    {
        return buildEntity();
    }

    MultipartFormEntity buildEntity()
    {
        String s;
        Charset charset1;
        String s1;
        Object obj;
        Object obj1;
        static class _cls1
        {

            static final int $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[];

            static 
            {
                $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode = new int[HttpMultipartMode.values().length];
                try
                {
                    $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[HttpMultipartMode.BROWSER_COMPATIBLE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$apache$http$entity$mime$HttpMultipartMode[HttpMultipartMode.RFC6532.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        HttpMultipartMode httpmultipartmode;
        if (subType != null)
        {
            s = subType;
        } else
        {
            s = "form-data";
        }
        charset1 = charset;
        if (boundary != null)
        {
            s1 = boundary;
        } else
        {
            s1 = generateBoundary();
        }
        if (bodyParts != null)
        {
            obj = new ArrayList(bodyParts);
        } else
        {
            obj = Collections.emptyList();
        }
        if (mode != null)
        {
            httpmultipartmode = mode;
        } else
        {
            httpmultipartmode = HttpMultipartMode.STRICT;
        }
        _cls1..SwitchMap.org.apache.http.entity.mime.HttpMultipartMode[httpmultipartmode.ordinal()];
        JVM INSTR tableswitch 1 2: default 92
    //                   1 157
    //                   2 174;
           goto _L1 _L2 _L3
_L1:
        obj1 = new HttpStrictMultipart(s, charset1, s1, ((List) (obj)));
_L5:
        return new MultipartFormEntity(((AbstractMultipartForm) (obj1)), generateContentType(s1, charset1), ((AbstractMultipartForm) (obj1)).getTotalLength());
_L2:
        obj1 = new HttpBrowserCompatibleMultipart(s, charset1, s1, ((List) (obj)));
        continue; /* Loop/switch isn't completed */
_L3:
        obj1 = new HttpRFC6532Multipart(s, charset1, s1, ((List) (obj)));
        if (true) goto _L5; else goto _L4
_L4:
    }

    public MultipartEntityBuilder setBoundary(String s)
    {
        boundary = s;
        return this;
    }

    public MultipartEntityBuilder setCharset(Charset charset1)
    {
        charset = charset1;
        return this;
    }

    public MultipartEntityBuilder setLaxMode()
    {
        mode = HttpMultipartMode.BROWSER_COMPATIBLE;
        return this;
    }

    public MultipartEntityBuilder setMode(HttpMultipartMode httpmultipartmode)
    {
        mode = httpmultipartmode;
        return this;
    }

    public MultipartEntityBuilder setStrictMode()
    {
        mode = HttpMultipartMode.STRICT;
        return this;
    }

}
