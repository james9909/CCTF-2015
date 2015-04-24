// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

public class LockableFileWriter extends Writer
{

    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(File file)
    {
        this(file, false, null);
    }

    public LockableFileWriter(File file, String s)
    {
        this(file, s, false, null);
    }

    public LockableFileWriter(File file, String s, boolean flag, String s1)
    {
        this(file, Charsets.toCharset(s), flag, s1);
    }

    public LockableFileWriter(File file, Charset charset)
    {
        this(file, charset, false, null);
    }

    public LockableFileWriter(File file, Charset charset, boolean flag, String s)
    {
        File file1 = file.getAbsoluteFile();
        if (file1.getParentFile() != null)
        {
            FileUtils.forceMkdir(file1.getParentFile());
        }
        if (file1.isDirectory())
        {
            throw new IOException("File specified is a directory");
        }
        if (s == null)
        {
            s = System.getProperty("java.io.tmpdir");
        }
        File file2 = new File(s);
        FileUtils.forceMkdir(file2);
        testLockDir(file2);
        lockFile = new File(file2, (new StringBuilder()).append(file1.getName()).append(".lck").toString());
        createLock();
        out = initWriter(file1, charset, flag);
    }

    public LockableFileWriter(File file, boolean flag)
    {
        this(file, flag, null);
    }

    public LockableFileWriter(File file, boolean flag, String s)
    {
        this(file, Charset.defaultCharset(), flag, s);
    }

    public LockableFileWriter(String s)
    {
        this(s, false, null);
    }

    public LockableFileWriter(String s, boolean flag)
    {
        this(s, flag, null);
    }

    public LockableFileWriter(String s, boolean flag, String s1)
    {
        this(new File(s), flag, s1);
    }

    private void createLock()
    {
        org/apache/commons/io/output/LockableFileWriter;
        JVM INSTR monitorenter ;
        if (!lockFile.createNewFile())
        {
            throw new IOException((new StringBuilder()).append("Can't write file, lock ").append(lockFile.getAbsolutePath()).append(" exists").toString());
        }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        org/apache/commons/io/output/LockableFileWriter;
        JVM INSTR monitorexit ;
        throw exception;
        lockFile.deleteOnExit();
        org/apache/commons/io/output/LockableFileWriter;
        JVM INSTR monitorexit ;
    }

    private Writer initWriter(File file, Charset charset, boolean flag)
    {
        boolean flag1 = file.exists();
        FileOutputStream fileoutputstream = new FileOutputStream(file.getAbsolutePath(), flag);
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(fileoutputstream, Charsets.toCharset(charset));
        return outputstreamwriter;
        IOException ioexception;
        ioexception;
        fileoutputstream = null;
_L4:
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(fileoutputstream);
        FileUtils.deleteQuietly(lockFile);
        if (!flag1)
        {
            FileUtils.deleteQuietly(file);
        }
        throw ioexception;
        RuntimeException runtimeexception;
        runtimeexception;
        fileoutputstream = null;
_L2:
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(fileoutputstream);
        FileUtils.deleteQuietly(lockFile);
        if (!flag1)
        {
            FileUtils.deleteQuietly(file);
        }
        throw runtimeexception;
        runtimeexception;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void testLockDir(File file)
    {
        if (!file.exists())
        {
            throw new IOException((new StringBuilder()).append("Could not find lockDir: ").append(file.getAbsolutePath()).toString());
        }
        if (!file.canWrite())
        {
            throw new IOException((new StringBuilder()).append("Could not write to lockDir: ").append(file.getAbsolutePath()).toString());
        } else
        {
            return;
        }
    }

    public void close()
    {
        out.close();
        lockFile.delete();
        return;
        Exception exception;
        exception;
        lockFile.delete();
        throw exception;
    }

    public void flush()
    {
        out.flush();
    }

    public void write(int i)
    {
        out.write(i);
    }

    public void write(String s)
    {
        out.write(s);
    }

    public void write(String s, int i, int j)
    {
        out.write(s, i, j);
    }

    public void write(char ac[])
    {
        out.write(ac);
    }

    public void write(char ac[], int i, int j)
    {
        out.write(ac, i, j);
    }
}
