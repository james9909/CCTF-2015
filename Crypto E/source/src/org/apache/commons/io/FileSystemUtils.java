// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

// Referenced classes of package org.apache.commons.io:
//            FilenameUtils, IOExceptionWithCause, ThreadMonitor, IOUtils

public class FileSystemUtils
{

    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE;
    private static final int OS = 0;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    public FileSystemUtils()
    {
    }

    public static long freeSpace(String s)
    {
        return INSTANCE.freeSpaceOS(s, OS, false, -1L);
    }

    public static long freeSpaceKb()
    {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long l)
    {
        return freeSpaceKb((new File(".")).getAbsolutePath(), l);
    }

    public static long freeSpaceKb(String s)
    {
        return freeSpaceKb(s, -1L);
    }

    public static long freeSpaceKb(String s, long l)
    {
        return INSTANCE.freeSpaceOS(s, OS, true, l);
    }

    long freeSpaceOS(String s, int i, boolean flag, long l)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Path must not be empty");
        }
        switch (i)
        {
        default:
            throw new IllegalStateException("Exception caught when determining operating system");

        case 1: // '\001'
            if (flag)
            {
                return freeSpaceWindows(s, l) / 1024L;
            } else
            {
                return freeSpaceWindows(s, l);
            }

        case 2: // '\002'
            return freeSpaceUnix(s, flag, false, l);

        case 3: // '\003'
            return freeSpaceUnix(s, flag, true, l);

        case 0: // '\0'
            throw new IllegalStateException("Unsupported operating system");
        }
    }

    long freeSpaceUnix(String s, boolean flag, boolean flag1, long l)
    {
        List list;
        StringTokenizer stringtokenizer;
        if (s.length() == 0)
        {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String s1 = "-";
        if (flag)
        {
            s1 = (new StringBuilder()).append(s1).append("k").toString();
        }
        if (flag1)
        {
            s1 = (new StringBuilder()).append(s1).append("P").toString();
        }
        String as[];
        if (s1.length() > 1)
        {
            String as1[] = new String[3];
            as1[0] = DF;
            as1[1] = s1;
            as1[2] = s;
            as = as1;
        } else
        {
            as = new String[2];
            as[0] = DF;
            as[1] = s;
        }
        list = performCommand(as, 3, l);
        if (list.size() < 2)
        {
            throw new IOException((new StringBuilder()).append("Command line '").append(DF).append("' did not return info as expected ").append("for path '").append(s).append("'- response was ").append(list).toString());
        }
        stringtokenizer = new StringTokenizer((String)list.get(1), " ");
        if (stringtokenizer.countTokens() >= 4) goto _L2; else goto _L1
_L1:
        if (stringtokenizer.countTokens() != 1 || list.size() < 3) goto _L4; else goto _L3
_L3:
        StringTokenizer stringtokenizer1 = new StringTokenizer((String)list.get(2), " ");
_L6:
        stringtokenizer1.nextToken();
        stringtokenizer1.nextToken();
        return parseBytes(stringtokenizer1.nextToken(), s);
_L4:
        throw new IOException((new StringBuilder()).append("Command line '").append(DF).append("' did not return data as expected ").append("for path '").append(s).append("'- check path is valid").toString());
_L2:
        stringtokenizer.nextToken();
        stringtokenizer1 = stringtokenizer;
        if (true) goto _L6; else goto _L5
_L5:
    }

    long freeSpaceWindows(String s, long l)
    {
        String s1 = FilenameUtils.normalize(s, false);
        String s2;
        String as[];
        List list;
        if (s1.length() > 0 && s1.charAt(0) != '"')
        {
            s2 = (new StringBuilder()).append("\"").append(s1).append("\"").toString();
        } else
        {
            s2 = s1;
        }
        as = new String[3];
        as[0] = "cmd.exe";
        as[1] = "/C";
        as[2] = (new StringBuilder()).append("dir /a /-c ").append(s2).toString();
        list = performCommand(as, 0x7fffffff, l);
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            String s3 = (String)list.get(i);
            if (s3.length() > 0)
            {
                return parseDir(s3, s2);
            }
        }

        throw new IOException((new StringBuilder()).append("Command line 'dir /-c' did not return any info for path '").append(s2).append("'").toString());
    }

    Process openProcess(String as[])
    {
        return Runtime.getRuntime().exec(as);
    }

    long parseBytes(String s, String s1)
    {
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IOExceptionWithCause((new StringBuilder()).append("Command line '").append(DF).append("' did not return numeric data as expected ").append("for path '").append(s1).append("'- check path is valid").toString(), numberformatexception);
        }
        if (l >= 0L)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        throw new IOException((new StringBuilder()).append("Command line '").append(DF).append("' did not find free space in response ").append("for path '").append(s1).append("'- check path is valid").toString());
        return l;
    }

    long parseDir(String s, String s1)
    {
        int i;
        int j;
        i = 0;
        j = -1 + s.length();
_L5:
        int k;
        int l;
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        char c;
        if (Character.isDigit(s.charAt(j)))
        {
            l = j + 1;
            break MISSING_BLOCK_LABEL_33;
        } else
        {
            j--;
            continue; /* Loop/switch isn't completed */
        }
_L1:
        if (k < 0)
        {
            throw new IOException((new StringBuilder()).append("Command line 'dir /-c' did not return valid info for path '").append(s1).append("'").toString());
        }
        StringBuilder stringbuilder;
        for (stringbuilder = new StringBuilder(s.substring(i1, l)); i < stringbuilder.length(); i++)
        {
            if (stringbuilder.charAt(i) == ',' || stringbuilder.charAt(i) == '.')
            {
                int j1 = i - 1;
                stringbuilder.deleteCharAt(i);
                i = j1;
            }
        }

        return parseBytes(stringbuilder.toString(), s1);
_L3:
        int i1;
        for (k = j; k >= 0; k--)
        {
            c = s.charAt(k);
            if (!Character.isDigit(c) && c != ',' && c != '.')
            {
                i1 = k + 1;
                break MISSING_BLOCK_LABEL_78;
            }
        }

        i1 = 0;
          goto _L1
        k = j;
        l = 0;
        if (true) goto _L3; else goto _L2
_L2:
        if (true) goto _L5; else goto _L4
_L4:
    }

    List performCommand(String as[], int i, long l)
    {
        InterruptedException interruptedexception;
        BufferedReader bufferedreader;
        java.io.InputStream inputstream;
        java.io.OutputStream outputstream;
        java.io.InputStream inputstream1;
        Process process;
        Process process1;
        java.io.InputStream inputstream2;
        java.io.OutputStream outputstream1;
        java.io.InputStream inputstream3;
        ArrayList arraylist = new ArrayList(20);
        Exception exception;
        Thread thread;
        Process process2;
        java.io.InputStream inputstream4;
        java.io.OutputStream outputstream2;
        java.io.InputStream inputstream5;
        String s;
        try
        {
            thread = ThreadMonitor.start(l);
            process2 = openProcess(as);
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            bufferedreader = null;
            inputstream = null;
            outputstream = null;
            inputstream1 = null;
            process = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedreader = null;
            inputstream3 = null;
            outputstream1 = null;
            inputstream2 = null;
            process1 = null;
            continue; /* Loop/switch isn't completed */
        }
_L3:
        process1 = process2;
        try
        {
            inputstream4 = process1.getInputStream();
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            process = process1;
            bufferedreader = null;
            inputstream = null;
            outputstream = null;
            inputstream1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedreader = null;
            inputstream3 = null;
            outputstream1 = null;
            inputstream2 = null;
            continue; /* Loop/switch isn't completed */
        }
        inputstream2 = inputstream4;
        try
        {
            outputstream2 = process1.getOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            inputstream1 = inputstream2;
            process = process1;
            bufferedreader = null;
            inputstream = null;
            outputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedreader = null;
            inputstream3 = null;
            outputstream1 = null;
            continue; /* Loop/switch isn't completed */
        }
        outputstream1 = outputstream2;
        try
        {
            inputstream5 = process1.getErrorStream();
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception)
        {
            outputstream = outputstream1;
            inputstream1 = inputstream2;
            process = process1;
            bufferedreader = null;
            inputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedreader = null;
            inputstream3 = null;
            continue; /* Loop/switch isn't completed */
        }
        inputstream3 = inputstream5;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream2));
        s = bufferedreader.readLine();
_L1:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (arraylist.size() >= i)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        arraylist.add(s.toLowerCase(Locale.ENGLISH).trim());
        s = bufferedreader.readLine();
          goto _L1
        process1.waitFor();
        ThreadMonitor.stop(thread);
        if (process1.exitValue() != 0)
        {
            throw new IOException((new StringBuilder()).append("Command line returned OS error code '").append(process1.exitValue()).append("' for command ").append(Arrays.asList(as)).toString());
        }
          goto _L2
        interruptedexception;
        inputstream = inputstream3;
        outputstream = outputstream1;
        inputstream1 = inputstream2;
        process = process1;
_L6:
        throw new IOExceptionWithCause((new StringBuilder()).append("Command line threw an InterruptedException for command ").append(Arrays.asList(as)).append(" timeout=").append(l).toString(), interruptedexception);
        exception;
        process1 = process;
        inputstream2 = inputstream1;
        outputstream1 = outputstream;
        inputstream3 = inputstream;
_L4:
        IOUtils.closeQuietly(inputstream2);
        IOUtils.closeQuietly(outputstream1);
        IOUtils.closeQuietly(inputstream3);
        IOUtils.closeQuietly(bufferedreader);
        if (process1 != null)
        {
            process1.destroy();
        }
        throw exception;
_L2:
        if (arraylist.isEmpty())
        {
            throw new IOException((new StringBuilder()).append("Command line did not return any info for command ").append(Arrays.asList(as)).toString());
        }
        break MISSING_BLOCK_LABEL_353;
        exception;
        continue; /* Loop/switch isn't completed */
        IOUtils.closeQuietly(inputstream2);
        IOUtils.closeQuietly(outputstream1);
        IOUtils.closeQuietly(inputstream3);
        IOUtils.closeQuietly(bufferedreader);
        if (process1 != null)
        {
            process1.destroy();
        }
        return arraylist;
        exception;
        bufferedreader = null;
        if (true) goto _L4; else goto _L3
        interruptedexception;
        inputstream = inputstream3;
        outputstream = outputstream1;
        inputstream1 = inputstream2;
        process = process1;
        bufferedreader = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static 
    {
        int i;
        String s;
        i = 3;
        INSTANCE = new FileSystemUtils();
        s = "df";
        String s1 = System.getProperty("os.name");
        if (s1 != null) goto _L2; else goto _L1
_L1:
        try
        {
            throw new IOException("os.name not found");
        }
        catch (Exception exception)
        {
            i = -1;
        }
_L4:
        OS = i;
        DF = s;
        return;
_L2:
        String s2 = s1.toLowerCase(Locale.ENGLISH);
        if (s2.indexOf("windows") != -1)
        {
            i = 1;
            continue; /* Loop/switch isn't completed */
        }
        if (s2.indexOf("linux") != -1 || s2.indexOf("mpe/ix") != -1 || s2.indexOf("freebsd") != -1 || s2.indexOf("irix") != -1 || s2.indexOf("digital unix") != -1 || s2.indexOf("unix") != -1 || s2.indexOf("mac os x") != -1)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        if (s2.indexOf("sun os") != -1 || s2.indexOf("sunos") != -1 || s2.indexOf("solaris") != -1)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        int j;
        if (s2.indexOf("hp-ux") != -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = s2.indexOf("aix");
        if (j == -1)
        {
            i = 0;
        }
        continue; /* Loop/switch isn't completed */
        i = 2;
        continue; /* Loop/switch isn't completed */
        s = "/usr/xpg4/bin/df";
        if (true) goto _L4; else goto _L3
_L3:
    }
}
