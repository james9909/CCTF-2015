// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime.content;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.ContentType;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.entity.mime.content:
//            AbstractContentBody

public class FileBody extends AbstractContentBody
{

    private final File file;
    private final String filename;

    public FileBody(File file1)
    {
        ContentType contenttype = ContentType.DEFAULT_BINARY;
        String s;
        if (file1 != null)
        {
            s = file1.getName();
        } else
        {
            s = null;
        }
        this(file1, contenttype, s);
    }

    public FileBody(File file1, String s)
    {
        this(file1, ContentType.create(s), null);
    }

    public FileBody(File file1, String s, String s1)
    {
        this(file1, null, s, s1);
    }

    public FileBody(File file1, String s, String s1, String s2)
    {
        this(file1, ContentType.create(s1, s2), s);
    }

    public FileBody(File file1, ContentType contenttype)
    {
        this(file1, contenttype, null);
    }

    public FileBody(File file1, ContentType contenttype, String s)
    {
        super(contenttype);
        Args.notNull(file1, "File");
        file = file1;
        filename = s;
    }

    public long getContentLength()
    {
        return file.length();
    }

    public File getFile()
    {
        return file;
    }

    public String getFilename()
    {
        return filename;
    }

    public InputStream getInputStream()
    {
        return new FileInputStream(file);
    }

    public String getTransferEncoding()
    {
        return "binary";
    }

    public void writeTo(OutputStream outputstream)
    {
        FileInputStream fileinputstream;
        Args.notNull(outputstream, "Output stream");
        fileinputstream = new FileInputStream(file);
        byte abyte0[] = new byte[4096];
_L1:
        int i = fileinputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        outputstream.write(abyte0, 0, i);
          goto _L1
        Exception exception;
        exception;
        fileinputstream.close();
        throw exception;
        outputstream.flush();
        fileinputstream.close();
        return;
    }
}
