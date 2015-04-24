// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

// Referenced classes of package org.apache.commons.io.input:
//            TailerListener

public class Tailer
    implements Runnable
{

    private static final int DEFAULT_BUFSIZE = 4096;
    private static final int DEFAULT_DELAY_MILLIS = 1000;
    private static final String RAF_MODE = "r";
    private final long delayMillis;
    private final boolean end;
    private final File file;
    private final byte inbuf[];
    private final TailerListener listener;
    private final boolean reOpen;
    private volatile boolean run;

    public Tailer(File file1, TailerListener tailerlistener)
    {
        this(file1, tailerlistener, 1000L);
    }

    public Tailer(File file1, TailerListener tailerlistener, long l)
    {
        this(file1, tailerlistener, l, false);
    }

    public Tailer(File file1, TailerListener tailerlistener, long l, boolean flag)
    {
        this(file1, tailerlistener, l, flag, 4096);
    }

    public Tailer(File file1, TailerListener tailerlistener, long l, boolean flag, int i)
    {
        this(file1, tailerlistener, l, flag, false, i);
    }

    public Tailer(File file1, TailerListener tailerlistener, long l, boolean flag, boolean flag1)
    {
        this(file1, tailerlistener, l, flag, flag1, 4096);
    }

    public Tailer(File file1, TailerListener tailerlistener, long l, boolean flag, boolean flag1, int i)
    {
        run = true;
        file = file1;
        delayMillis = l;
        end = flag;
        inbuf = new byte[i];
        listener = tailerlistener;
        tailerlistener.init(this);
        reOpen = flag1;
    }

    public static Tailer create(File file1, TailerListener tailerlistener)
    {
        return create(file1, tailerlistener, 1000L, false);
    }

    public static Tailer create(File file1, TailerListener tailerlistener, long l)
    {
        return create(file1, tailerlistener, l, false);
    }

    public static Tailer create(File file1, TailerListener tailerlistener, long l, boolean flag)
    {
        return create(file1, tailerlistener, l, flag, 4096);
    }

    public static Tailer create(File file1, TailerListener tailerlistener, long l, boolean flag, int i)
    {
        Tailer tailer = new Tailer(file1, tailerlistener, l, flag, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    public static Tailer create(File file1, TailerListener tailerlistener, long l, boolean flag, boolean flag1)
    {
        return create(file1, tailerlistener, l, flag, flag1, 4096);
    }

    public static Tailer create(File file1, TailerListener tailerlistener, long l, boolean flag, boolean flag1, int i)
    {
        Tailer tailer = new Tailer(file1, tailerlistener, l, flag, flag1, i);
        Thread thread = new Thread(tailer);
        thread.setDaemon(true);
        thread.start();
        return tailer;
    }

    private long readLines(RandomAccessFile randomaccessfile)
    {
        StringBuilder stringbuilder;
        long l;
        boolean flag;
        long l1;
        stringbuilder = new StringBuilder();
        l = randomaccessfile.getFilePointer();
        flag = false;
        l1 = l;
_L5:
        int i;
        int j;
        if (!run)
        {
            break; /* Loop/switch isn't completed */
        }
        i = randomaccessfile.read(inbuf);
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        byte byte0 = inbuf[j];
        switch (byte0)
        {
        case 11: // '\013'
        case 12: // '\f'
        default:
            if (flag)
            {
                listener.handle(stringbuilder.toString());
                stringbuilder.setLength(0);
                l = 1L + (l1 + (long)j);
                flag = false;
            }
            stringbuilder.append((char)byte0);
            break;

        case 10: // '\n'
            break; /* Loop/switch isn't completed */

        case 13: // '\r'
            break MISSING_BLOCK_LABEL_174;
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        listener.handle(stringbuilder.toString());
        stringbuilder.setLength(0);
        l = 1L + (l1 + (long)j);
        flag = false;
          goto _L3
        if (flag)
        {
            stringbuilder.append('\r');
        }
        flag = true;
          goto _L3
        l1 = randomaccessfile.getFilePointer();
        if (true) goto _L5; else goto _L4
_L4:
        randomaccessfile.seek(l);
        return l;
    }

    public long getDelay()
    {
        return delayMillis;
    }

    public File getFile()
    {
        return file;
    }

    public void run()
    {
        RandomAccessFile randomaccessfile;
        long l;
        long l1;
        randomaccessfile = null;
        l = 0L;
        l1 = 0L;
_L5:
        boolean flag = run;
        if (!flag || randomaccessfile != null) goto _L2; else goto _L1
_L1:
        RandomAccessFile randomaccessfile4 = new RandomAccessFile(file, "r");
        randomaccessfile = randomaccessfile4;
_L6:
        if (randomaccessfile != null) goto _L4; else goto _L3
_L3:
        Thread.sleep(delayMillis);
          goto _L5
        InterruptedException interruptedexception1;
        interruptedexception1;
          goto _L5
        FileNotFoundException filenotfoundexception2;
        filenotfoundexception2;
        listener.fileNotFound();
          goto _L6
        Exception exception1;
        exception1;
_L19:
        listener.handle(exception1);
        IOUtils.closeQuietly(randomaccessfile);
        return;
_L4:
        if (!end) goto _L8; else goto _L7
_L7:
        l = file.length();
_L9:
        l1 = System.currentTimeMillis();
        randomaccessfile.seek(l);
          goto _L5
        Exception exception;
        exception;
_L18:
        IOUtils.closeQuietly(randomaccessfile);
        throw exception;
_L8:
        l = 0L;
          goto _L9
_L2:
        if (!run) goto _L11; else goto _L10
_L10:
        boolean flag1;
        long l2;
        flag1 = FileUtils.isFileNewer(file, l1);
        l2 = file.length();
        if (l2 >= l) goto _L13; else goto _L12
_L12:
        listener.fileRotated();
        RandomAccessFile randomaccessfile1 = new RandomAccessFile(file, "r");
        IOUtils.closeQuietly(randomaccessfile);
        l = 0L;
        randomaccessfile = randomaccessfile1;
          goto _L2
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        RandomAccessFile randomaccessfile2;
        long l3;
        long l5 = l;
        randomaccessfile2 = randomaccessfile;
        l3 = l5;
_L20:
        listener.fileNotFound();
        long l4 = l3;
        randomaccessfile = randomaccessfile2;
        l = l4;
          goto _L2
_L13:
        if (l2 <= l) goto _L15; else goto _L14
_L14:
        l = readLines(randomaccessfile);
        l1 = System.currentTimeMillis();
_L17:
        if (reOpen)
        {
            IOUtils.closeQuietly(randomaccessfile);
        }
        Exception exception2;
        Exception exception3;
        long l6;
        RandomAccessFile randomaccessfile3;
        Exception exception4;
        Exception exception5;
        try
        {
            Thread.sleep(delayMillis);
        }
        catch (InterruptedException interruptedexception) { }
        if (!run || !reOpen)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        randomaccessfile3 = new RandomAccessFile(file, "r");
        randomaccessfile3.seek(l);
_L21:
        randomaccessfile = randomaccessfile3;
          goto _L2
_L15:
        if (!flag1) goto _L17; else goto _L16
_L16:
        randomaccessfile.seek(0L);
        l = readLines(randomaccessfile);
        l6 = System.currentTimeMillis();
        l1 = l6;
          goto _L17
_L11:
        IOUtils.closeQuietly(randomaccessfile);
        return;
        exception3;
        randomaccessfile = randomaccessfile1;
        exception = exception3;
          goto _L18
        exception;
        randomaccessfile = randomaccessfile2;
          goto _L18
        exception5;
        randomaccessfile = randomaccessfile3;
        exception = exception5;
          goto _L18
        exception2;
        randomaccessfile = randomaccessfile1;
        exception1 = exception2;
          goto _L19
        exception1;
        randomaccessfile = randomaccessfile2;
          goto _L19
        exception4;
        randomaccessfile = randomaccessfile3;
        exception1 = exception4;
          goto _L19
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        randomaccessfile2 = randomaccessfile1;
        l3 = 0L;
          goto _L20
        randomaccessfile3 = randomaccessfile;
          goto _L21
    }

    public void stop()
    {
        run = false;
    }
}
