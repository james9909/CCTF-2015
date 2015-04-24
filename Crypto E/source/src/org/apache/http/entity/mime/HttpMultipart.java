// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.entity.mime.content.ContentBody;

// Referenced classes of package org.apache.http.entity.mime:
//            AbstractMultipartForm, HttpMultipartMode, FormBodyPart, Header, 
//            MinimalField

public class HttpMultipart extends AbstractMultipartForm
{

    private final HttpMultipartMode mode;
    private final List parts;

    public HttpMultipart(String s, String s1)
    {
        this(s, null, s1);
    }

    public HttpMultipart(String s, Charset charset, String s1)
    {
        this(s, charset, s1, HttpMultipartMode.STRICT);
    }

    public HttpMultipart(String s, Charset charset, String s1, HttpMultipartMode httpmultipartmode)
    {
        super(s, charset, s1);
        mode = httpmultipartmode;
        parts = new ArrayList();
    }

    public void addBodyPart(FormBodyPart formbodypart)
    {
        if (formbodypart == null)
        {
            return;
        } else
        {
            parts.add(formbodypart);
            return;
        }
    }

    protected void formatMultipartHeader(FormBodyPart formbodypart, OutputStream outputstream)
    {
        Header header = formbodypart.getHeader();
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
            }
        }

        switch (_cls1..SwitchMap.org.apache.http.entity.mime.HttpMultipartMode[mode.ordinal()])
        {
        default:
            for (Iterator iterator = header.iterator(); iterator.hasNext(); writeField((MinimalField)iterator.next(), outputstream)) { }
            break;

        case 1: // '\001'
            writeField(header.getField("Content-Disposition"), charset, outputstream);
            if (formbodypart.getBody().getFilename() != null)
            {
                writeField(header.getField("Content-Type"), charset, outputstream);
            }
            break;
        }
    }

    public List getBodyParts()
    {
        return parts;
    }

    public volatile String getBoundary()
    {
        return super.getBoundary();
    }

    public volatile Charset getCharset()
    {
        return super.getCharset();
    }

    public HttpMultipartMode getMode()
    {
        return mode;
    }

    public volatile String getSubType()
    {
        return super.getSubType();
    }

    public volatile long getTotalLength()
    {
        return super.getTotalLength();
    }

    public volatile void writeTo(OutputStream outputstream)
    {
        super.writeTo(outputstream);
    }
}
