// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.output.NullOutputStream;

// Referenced classes of package org.apache.commons.io:
//            IOUtils, FilenameUtils, FileExistsException, Charsets, 
//            LineIterator

public class FileUtils
{

    public static final File EMPTY_FILE_ARRAY[] = new File[0];
    private static final long FILE_COPY_BUFFER_SIZE = 0x1e00000L;
    public static final long ONE_EB = 0x1000000000000000L;
    public static final BigInteger ONE_EB_BI;
    public static final long ONE_GB = 0x40000000L;
    public static final BigInteger ONE_GB_BI;
    public static final long ONE_KB = 1024L;
    public static final BigInteger ONE_KB_BI;
    public static final long ONE_MB = 0x100000L;
    public static final BigInteger ONE_MB_BI;
    public static final long ONE_PB = 0x4000000000000L;
    public static final BigInteger ONE_PB_BI;
    public static final long ONE_TB = 0x10000000000L;
    public static final BigInteger ONE_TB_BI;
    public static final BigInteger ONE_YB;
    public static final BigInteger ONE_ZB;
    private static final Charset UTF8 = Charset.forName("UTF-8");

    public FileUtils()
    {
    }

    public static String byteCountToDisplaySize(long l)
    {
        return byteCountToDisplaySize(BigInteger.valueOf(l));
    }

    public static String byteCountToDisplaySize(BigInteger biginteger)
    {
        if (biginteger.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_EB_BI))).append(" EB").toString();
        }
        if (biginteger.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_PB_BI))).append(" PB").toString();
        }
        if (biginteger.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_TB_BI))).append(" TB").toString();
        }
        if (biginteger.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_GB_BI))).append(" GB").toString();
        }
        if (biginteger.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_MB_BI))).append(" MB").toString();
        }
        if (biginteger.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0)
        {
            return (new StringBuilder()).append(String.valueOf(biginteger.divide(ONE_KB_BI))).append(" KB").toString();
        } else
        {
            return (new StringBuilder()).append(String.valueOf(biginteger)).append(" bytes").toString();
        }
    }

    private static void checkDirectory(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is not a directory").toString());
        } else
        {
            return;
        }
    }

    public static Checksum checksum(File file, Checksum checksum1)
    {
        if (file.isDirectory())
        {
            throw new IllegalArgumentException("Checksums can't be computed on directories");
        }
        CheckedInputStream checkedinputstream = new CheckedInputStream(new FileInputStream(file), checksum1);
        IOUtils.copy(checkedinputstream, new NullOutputStream());
        IOUtils.closeQuietly(checkedinputstream);
        return checksum1;
        Exception exception;
        exception;
        checkedinputstream = null;
_L2:
        IOUtils.closeQuietly(checkedinputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static long checksumCRC32(File file)
    {
        CRC32 crc32 = new CRC32();
        checksum(file, crc32);
        return crc32.getValue();
    }

    public static void cleanDirectory(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is not a directory").toString());
        }
        File afile[] = file.listFiles();
        if (afile == null)
        {
            throw new IOException((new StringBuilder()).append("Failed to list contents of ").append(file).toString());
        }
        int i = afile.length;
        IOException ioexception = null;
        int j = 0;
        while (j < i) 
        {
            File file1 = afile[j];
            try
            {
                forceDelete(file1);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
            j++;
        }
        if (ioexception != null)
        {
            throw ioexception;
        } else
        {
            return;
        }
    }

    private static void cleanDirectoryOnExit(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" is not a directory").toString());
        }
        File afile[] = file.listFiles();
        if (afile == null)
        {
            throw new IOException((new StringBuilder()).append("Failed to list contents of ").append(file).toString());
        }
        int i = afile.length;
        IOException ioexception = null;
        int j = 0;
        while (j < i) 
        {
            File file1 = afile[j];
            try
            {
                forceDeleteOnExit(file1);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
            j++;
        }
        if (ioexception != null)
        {
            throw ioexception;
        } else
        {
            return;
        }
    }

    public static boolean contentEquals(File file, File file1)
    {
        Object obj;
        boolean flag;
        obj = null;
        flag = file.exists();
        if (flag == file1.exists()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!flag)
        {
            return true;
        }
        if (file.isDirectory() || file1.isDirectory())
        {
            throw new IOException("Can't compare directories, only files");
        }
        if (file.length() != file1.length()) goto _L1; else goto _L3
_L3:
        if (file.getCanonicalFile().equals(file1.getCanonicalFile()))
        {
            return true;
        }
        FileInputStream fileinputstream = new FileInputStream(file);
        FileInputStream fileinputstream1 = new FileInputStream(file1);
        boolean flag1 = IOUtils.contentEquals(fileinputstream, fileinputstream1);
        IOUtils.closeQuietly(fileinputstream);
        IOUtils.closeQuietly(fileinputstream1);
        return flag1;
        Exception exception;
        exception;
        fileinputstream1 = null;
_L5:
        IOUtils.closeQuietly(((InputStream) (obj)));
        IOUtils.closeQuietly(fileinputstream1);
        throw exception;
        exception;
        obj = fileinputstream;
        fileinputstream1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = fileinputstream;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean contentEqualsIgnoreEOL(File file, File file1, String s)
    {
        InputStreamReader inputstreamreader;
        boolean flag;
        boolean flag1;
        inputstreamreader = null;
        flag = true;
        flag1 = file.exists();
        if (flag1 == file1.exists()) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if (!flag1) goto _L4; else goto _L3
_L3:
        if (file.isDirectory() || file1.isDirectory())
        {
            throw new IOException("Can't compare directories, only files");
        }
        if (file.getCanonicalFile().equals(file1.getCanonicalFile())) goto _L4; else goto _L5
_L5:
        if (s != null) goto _L7; else goto _L6
_L6:
        InputStreamReader inputstreamreader1 = new InputStreamReader(new FileInputStream(file));
        inputstreamreader = new InputStreamReader(new FileInputStream(file1));
_L8:
        boolean flag2 = IOUtils.contentEqualsIgnoreEOL(inputstreamreader1, inputstreamreader);
        IOUtils.closeQuietly(inputstreamreader1);
        IOUtils.closeQuietly(inputstreamreader);
        return flag2;
_L7:
        inputstreamreader1 = new InputStreamReader(new FileInputStream(file), s);
        InputStreamReader inputstreamreader2 = new InputStreamReader(new FileInputStream(file1), s);
        inputstreamreader = inputstreamreader2;
          goto _L8
        Exception exception;
        exception;
        inputstreamreader1 = null;
_L10:
        IOUtils.closeQuietly(inputstreamreader1);
        IOUtils.closeQuietly(inputstreamreader);
        throw exception;
        exception;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static File[] convertFileCollectionToFileArray(Collection collection)
    {
        return (File[])collection.toArray(new File[collection.size()]);
    }

    public static void copyDirectory(File file, File file1)
    {
        copyDirectory(file, file1, true);
    }

    public static void copyDirectory(File file, File file1, FileFilter filefilter)
    {
        copyDirectory(file, file1, filefilter, true);
    }

    public static void copyDirectory(File file, File file1, FileFilter filefilter, boolean flag)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Source '").append(file).append("' does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' exists but is not a directory").toString());
        }
        if (file.getCanonicalPath().equals(file1.getCanonicalPath()))
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' and destination '").append(file1).append("' are the same").toString());
        }
        boolean flag1 = file1.getCanonicalPath().startsWith(file.getCanonicalPath());
        ArrayList arraylist = null;
        if (flag1)
        {
            File afile[];
            if (filefilter == null)
            {
                afile = file.listFiles();
            } else
            {
                afile = file.listFiles(filefilter);
            }
            arraylist = null;
            if (afile != null)
            {
                int i = afile.length;
                arraylist = null;
                if (i > 0)
                {
                    arraylist = new ArrayList(afile.length);
                    int j = afile.length;
                    for (int k = 0; k < j; k++)
                    {
                        arraylist.add((new File(file1, afile[k].getName())).getCanonicalPath());
                    }

                }
            }
        }
        doCopyDirectory(file, file1, filefilter, flag, arraylist);
    }

    public static void copyDirectory(File file, File file1, boolean flag)
    {
        copyDirectory(file, file1, null, flag);
    }

    public static void copyDirectoryToDirectory(File file, File file1)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file.exists() && !file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Source '").append(file1).append("' is not a directory").toString());
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (file1.exists() && !file1.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Destination '").append(file1).append("' is not a directory").toString());
        } else
        {
            copyDirectory(file, new File(file1, file.getName()), true);
            return;
        }
    }

    public static long copyFile(File file, OutputStream outputstream)
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        long l = IOUtils.copyLarge(fileinputstream, outputstream);
        fileinputstream.close();
        return l;
        Exception exception;
        exception;
        fileinputstream.close();
        throw exception;
    }

    public static void copyFile(File file, File file1)
    {
        copyFile(file, file1, true);
    }

    public static void copyFile(File file, File file1, boolean flag)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Source '").append(file).append("' does not exist").toString());
        }
        if (file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' exists but is a directory").toString());
        }
        if (file.getCanonicalPath().equals(file1.getCanonicalPath()))
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' and destination '").append(file1).append("' are the same").toString());
        }
        File file2 = file1.getParentFile();
        if (file2 != null && !file2.mkdirs() && !file2.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file2).append("' directory cannot be created").toString());
        }
        if (file1.exists() && !file1.canWrite())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' exists but is read-only").toString());
        } else
        {
            doCopyFile(file, file1, flag);
            return;
        }
    }

    public static void copyFileToDirectory(File file, File file1)
    {
        copyFileToDirectory(file, file1, true);
    }

    public static void copyFileToDirectory(File file, File file1, boolean flag)
    {
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (file1.exists() && !file1.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Destination '").append(file1).append("' is not a directory").toString());
        } else
        {
            copyFile(file, new File(file1, file.getName()), flag);
            return;
        }
    }

    public static void copyInputStreamToFile(InputStream inputstream, File file)
    {
        FileOutputStream fileoutputstream = openOutputStream(file);
        IOUtils.copy(inputstream, fileoutputstream);
        fileoutputstream.close();
        IOUtils.closeQuietly(fileoutputstream);
        IOUtils.closeQuietly(inputstream);
        return;
        Exception exception1;
        exception1;
        IOUtils.closeQuietly(fileoutputstream);
        throw exception1;
        Exception exception;
        exception;
        IOUtils.closeQuietly(inputstream);
        throw exception;
    }

    public static void copyURLToFile(URL url, File file)
    {
        copyInputStreamToFile(url.openStream(), file);
    }

    public static void copyURLToFile(URL url, File file, int i, int j)
    {
        URLConnection urlconnection = url.openConnection();
        urlconnection.setConnectTimeout(i);
        urlconnection.setReadTimeout(j);
        copyInputStreamToFile(urlconnection.getInputStream(), file);
    }

    static String decodeUrl(String s)
    {
        int i;
        StringBuffer stringbuffer;
        ByteBuffer bytebuffer;
        int j;
        if (s == null || s.indexOf('%') < 0)
        {
            break MISSING_BLOCK_LABEL_241;
        }
        i = s.length();
        stringbuffer = new StringBuffer();
        bytebuffer = ByteBuffer.allocate(i);
        j = 0;
_L4:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s.charAt(j) != '%')
        {
            break MISSING_BLOCK_LABEL_175;
        }
_L2:
        int l;
        int i1;
        l = j + 1;
        i1 = j + 3;
        bytebuffer.put((byte)Integer.parseInt(s.substring(l, i1), 16));
        if ((j += 3) >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        char c = s.charAt(j);
        if (c == '%') goto _L2; else goto _L1
_L1:
        if (bytebuffer.position() > 0)
        {
            bytebuffer.flip();
            stringbuffer.append(UTF8.decode(bytebuffer).toString());
            bytebuffer.clear();
        }
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if (bytebuffer.position() > 0)
        {
            bytebuffer.flip();
            stringbuffer.append(UTF8.decode(bytebuffer).toString());
            bytebuffer.clear();
        }
        int k = j + 1;
        stringbuffer.append(s.charAt(j));
        j = k;
        if (true) goto _L4; else goto _L3
        Exception exception;
        exception;
        if (bytebuffer.position() > 0)
        {
            bytebuffer.flip();
            stringbuffer.append(UTF8.decode(bytebuffer).toString());
            bytebuffer.clear();
        }
        throw exception;
_L3:
        s = stringbuffer.toString();
        return s;
    }

    public static void deleteDirectory(File file)
    {
        if (file.exists())
        {
            if (!isSymlink(file))
            {
                cleanDirectory(file);
            }
            if (!file.delete())
            {
                throw new IOException((new StringBuilder()).append("Unable to delete directory ").append(file).append(".").toString());
            }
        }
    }

    private static void deleteDirectoryOnExit(File file)
    {
        if (file.exists())
        {
            file.deleteOnExit();
            if (!isSymlink(file))
            {
                cleanDirectoryOnExit(file);
                return;
            }
        }
    }

    public static boolean deleteQuietly(File file)
    {
        if (file == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            if (file.isDirectory())
            {
                cleanDirectory(file);
            }
        }
        catch (Exception exception) { }
        try
        {
            flag = file.delete();
        }
        catch (Exception exception1)
        {
            return false;
        }
        return flag;
    }

    public static boolean directoryContains(File file, File file1)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("Directory must not be null");
        }
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Not a directory: ").append(file).toString());
        }
        while (file1 == null || !file.exists() || !file1.exists()) 
        {
            return false;
        }
        return FilenameUtils.directoryContains(file.getCanonicalPath(), file1.getCanonicalPath());
    }

    private static void doCopyDirectory(File file, File file1, FileFilter filefilter, boolean flag, List list)
    {
        File afile[];
        if (filefilter == null)
        {
            afile = file.listFiles();
        } else
        {
            afile = file.listFiles(filefilter);
        }
        if (afile == null)
        {
            throw new IOException((new StringBuilder()).append("Failed to list contents of ").append(file).toString());
        }
        if (file1.exists())
        {
            if (!file1.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' exists but is not a directory").toString());
            }
        } else
        if (!file1.mkdirs() && !file1.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' directory cannot be created").toString());
        }
        if (!file1.canWrite())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' cannot be written to").toString());
        }
        int i = afile.length;
        int j = 0;
        while (j < i) 
        {
            File file2 = afile[j];
            File file3 = new File(file1, file2.getName());
            if (list == null || !list.contains(file2.getCanonicalPath()))
            {
                if (file2.isDirectory())
                {
                    doCopyDirectory(file2, file3, filefilter, flag, list);
                } else
                {
                    doCopyFile(file2, file3, flag);
                }
            }
            j++;
        }
        if (flag)
        {
            file1.setLastModified(file.lastModified());
        }
    }

    private static void doCopyFile(File file, File file1, boolean flag)
    {
        Object obj;
        obj = null;
        if (file1.exists() && file1.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' exists but is a directory").toString());
        }
        FileInputStream fileinputstream = new FileInputStream(file);
        FileOutputStream fileoutputstream = new FileOutputStream(file1);
        FileChannel filechannel = fileinputstream.getChannel();
        FileChannel filechannel1 = fileoutputstream.getChannel();
        long l = filechannel.size();
        long l1 = 0L;
          goto _L1
_L8:
        long l2;
        long l3 = filechannel1.transferFrom(filechannel, l1, l2);
        l1 += l3;
          goto _L1
_L6:
        l2 = l - l1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Object obj1;
        Object obj2;
        Object obj3;
        obj3 = null;
        obj1 = null;
        obj2 = null;
_L2:
        IOUtils.closeQuietly(((java.io.Closeable) (obj3)));
        IOUtils.closeQuietly(((OutputStream) (obj1)));
        IOUtils.closeQuietly(((java.io.Closeable) (obj)));
        IOUtils.closeQuietly(((InputStream) (obj2)));
        throw exception;
_L4:
        IOUtils.closeQuietly(filechannel1);
        IOUtils.closeQuietly(fileoutputstream);
        IOUtils.closeQuietly(filechannel);
        IOUtils.closeQuietly(fileinputstream);
        if (file.length() != file1.length())
        {
            throw new IOException((new StringBuilder()).append("Failed to copy full contents from '").append(file).append("' to '").append(file1).append("'").toString());
        }
        if (flag)
        {
            file1.setLastModified(file.lastModified());
        }
        return;
        exception;
        obj2 = fileinputstream;
        obj3 = null;
        obj = null;
        obj1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = fileoutputstream;
        obj2 = fileinputstream;
        obj3 = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = fileoutputstream;
        obj2 = fileinputstream;
        obj = filechannel;
        obj3 = null;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        obj1 = fileoutputstream;
        obj2 = fileinputstream;
        obj3 = filechannel1;
        exception = exception1;
        obj = filechannel;
        if (true) goto _L2; else goto _L1
_L1:
        if (l1 >= l) goto _L4; else goto _L3
_L3:
        if (l - l1 <= 0x1e00000L) goto _L6; else goto _L5
_L5:
        l2 = 0x1e00000L;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static void forceDelete(File file)
    {
        if (file.isDirectory())
        {
            deleteDirectory(file);
        } else
        {
            boolean flag = file.exists();
            if (!file.delete())
            {
                if (!flag)
                {
                    throw new FileNotFoundException((new StringBuilder()).append("File does not exist: ").append(file).toString());
                } else
                {
                    throw new IOException((new StringBuilder()).append("Unable to delete file: ").append(file).toString());
                }
            }
        }
    }

    public static void forceDeleteOnExit(File file)
    {
        if (file.isDirectory())
        {
            deleteDirectoryOnExit(file);
            return;
        } else
        {
            file.deleteOnExit();
            return;
        }
    }

    public static void forceMkdir(File file)
    {
        if (file.exists())
        {
            if (!file.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("File ").append(file).append(" exists and is ").append("not a directory. Unable to create directory.").toString());
            }
        } else
        if (!file.mkdirs() && !file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Unable to create directory ").append(file).toString());
        }
    }

    public static transient File getFile(File file, String as[])
    {
        if (file == null)
        {
            throw new NullPointerException("directorydirectory must not be null");
        }
        if (as == null)
        {
            throw new NullPointerException("names must not be null");
        }
        int i = as.length;
        for (int j = 0; j < i;)
        {
            File file1 = new File(file, as[j]);
            j++;
            file = file1;
        }

        return file;
    }

    public static transient File getFile(String as[])
    {
        if (as == null)
        {
            throw new NullPointerException("names must not be null");
        }
        int i = as.length;
        File file = null;
        int j = 0;
        while (j < i) 
        {
            String s = as[j];
            File file1;
            if (file == null)
            {
                file1 = new File(s);
            } else
            {
                file1 = new File(file, s);
            }
            j++;
            file = file1;
        }
        return file;
    }

    public static File getTempDirectory()
    {
        return new File(getTempDirectoryPath());
    }

    public static String getTempDirectoryPath()
    {
        return System.getProperty("java.io.tmpdir");
    }

    public static File getUserDirectory()
    {
        return new File(getUserDirectoryPath());
    }

    public static String getUserDirectoryPath()
    {
        return System.getProperty("user.home");
    }

    private static void innerListFiles(Collection collection, File file, IOFileFilter iofilefilter, boolean flag)
    {
        File afile[] = file.listFiles(iofilefilter);
        if (afile != null)
        {
            int i = afile.length;
            int j = 0;
            while (j < i) 
            {
                File file1 = afile[j];
                if (file1.isDirectory())
                {
                    if (flag)
                    {
                        collection.add(file1);
                    }
                    innerListFiles(collection, file1, iofilefilter, flag);
                } else
                {
                    collection.add(file1);
                }
                j++;
            }
        }
    }

    public static boolean isFileNewer(File file, long l)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("No specified file");
        }
        while (!file.exists() || file.lastModified() <= l) 
        {
            return false;
        }
        return true;
    }

    public static boolean isFileNewer(File file, File file1)
    {
        if (file1 == null)
        {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (!file1.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The reference file '").append(file1).append("' doesn't exist").toString());
        } else
        {
            return isFileNewer(file, file1.lastModified());
        }
    }

    public static boolean isFileNewer(File file, Date date)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("No specified date");
        } else
        {
            return isFileNewer(file, date.getTime());
        }
    }

    public static boolean isFileOlder(File file, long l)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("No specified file");
        }
        while (!file.exists() || file.lastModified() >= l) 
        {
            return false;
        }
        return true;
    }

    public static boolean isFileOlder(File file, File file1)
    {
        if (file1 == null)
        {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (!file1.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The reference file '").append(file1).append("' doesn't exist").toString());
        } else
        {
            return isFileOlder(file, file1.lastModified());
        }
    }

    public static boolean isFileOlder(File file, Date date)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("No specified date");
        } else
        {
            return isFileOlder(file, date.getTime());
        }
    }

    public static boolean isSymlink(File file)
    {
        if (file == null)
        {
            throw new NullPointerException("File must not be null");
        }
        if (FilenameUtils.isSystemWindows())
        {
            return false;
        }
        if (file.getParent() != null)
        {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static Iterator iterateFiles(File file, IOFileFilter iofilefilter, IOFileFilter iofilefilter1)
    {
        return listFiles(file, iofilefilter, iofilefilter1).iterator();
    }

    public static Iterator iterateFiles(File file, String as[], boolean flag)
    {
        return listFiles(file, as, flag).iterator();
    }

    public static Iterator iterateFilesAndDirs(File file, IOFileFilter iofilefilter, IOFileFilter iofilefilter1)
    {
        return listFilesAndDirs(file, iofilefilter, iofilefilter1).iterator();
    }

    public static LineIterator lineIterator(File file)
    {
        return lineIterator(file, null);
    }

    public static LineIterator lineIterator(File file, String s)
    {
        FileInputStream fileinputstream = null;
        LineIterator lineiterator;
        try
        {
            fileinputstream = openInputStream(file);
            lineiterator = IOUtils.lineIterator(fileinputstream, s);
        }
        catch (IOException ioexception)
        {
            IOUtils.closeQuietly(fileinputstream);
            throw ioexception;
        }
        catch (RuntimeException runtimeexception)
        {
            IOUtils.closeQuietly(fileinputstream);
            throw runtimeexception;
        }
        return lineiterator;
    }

    public static Collection listFiles(File file, IOFileFilter iofilefilter, IOFileFilter iofilefilter1)
    {
        validateListFilesParameters(file, iofilefilter);
        IOFileFilter iofilefilter2 = setUpEffectiveFileFilter(iofilefilter);
        IOFileFilter iofilefilter3 = setUpEffectiveDirFilter(iofilefilter1);
        LinkedList linkedlist = new LinkedList();
        innerListFiles(linkedlist, file, FileFilterUtils.or(new IOFileFilter[] {
            iofilefilter2, iofilefilter3
        }), false);
        return linkedlist;
    }

    public static Collection listFiles(File file, String as[], boolean flag)
    {
        Object obj;
        IOFileFilter iofilefilter;
        if (as == null)
        {
            obj = TrueFileFilter.INSTANCE;
        } else
        {
            obj = new SuffixFileFilter(toSuffixes(as));
        }
        if (flag)
        {
            iofilefilter = TrueFileFilter.INSTANCE;
        } else
        {
            iofilefilter = FalseFileFilter.INSTANCE;
        }
        return listFiles(file, ((IOFileFilter) (obj)), iofilefilter);
    }

    public static Collection listFilesAndDirs(File file, IOFileFilter iofilefilter, IOFileFilter iofilefilter1)
    {
        validateListFilesParameters(file, iofilefilter);
        IOFileFilter iofilefilter2 = setUpEffectiveFileFilter(iofilefilter);
        IOFileFilter iofilefilter3 = setUpEffectiveDirFilter(iofilefilter1);
        LinkedList linkedlist = new LinkedList();
        if (file.isDirectory())
        {
            linkedlist.add(file);
        }
        innerListFiles(linkedlist, file, FileFilterUtils.or(new IOFileFilter[] {
            iofilefilter2, iofilefilter3
        }), true);
        return linkedlist;
    }

    public static void moveDirectory(File file, File file1)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Source '").append(file).append("' does not exist").toString());
        }
        if (!file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' is not a directory").toString());
        }
        if (file1.exists())
        {
            throw new FileExistsException((new StringBuilder()).append("Destination '").append(file1).append("' already exists").toString());
        }
        if (!file.renameTo(file1))
        {
            if (file1.getCanonicalPath().startsWith(file.getCanonicalPath()))
            {
                throw new IOException((new StringBuilder()).append("Cannot move directory: ").append(file).append(" to a subdirectory of itself: ").append(file1).toString());
            }
            copyDirectory(file, file1);
            deleteDirectory(file);
            if (file.exists())
            {
                throw new IOException((new StringBuilder()).append("Failed to delete original directory '").append(file).append("' after copy to '").append(file1).append("'").toString());
            }
        }
    }

    public static void moveDirectoryToDirectory(File file, File file1, boolean flag)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!file1.exists() && flag)
        {
            file1.mkdirs();
        }
        if (!file1.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Destination directory '").append(file1).append("' does not exist [createDestDir=").append(flag).append("]").toString());
        }
        if (!file1.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' is not a directory").toString());
        } else
        {
            moveDirectory(file, new File(file1, file.getName()));
            return;
        }
    }

    public static void moveFile(File file, File file1)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Source '").append(file).append("' does not exist").toString());
        }
        if (file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Source '").append(file).append("' is a directory").toString());
        }
        if (file1.exists())
        {
            throw new FileExistsException((new StringBuilder()).append("Destination '").append(file1).append("' already exists").toString());
        }
        if (file1.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' is a directory").toString());
        }
        if (!file.renameTo(file1))
        {
            copyFile(file, file1);
            if (!file.delete())
            {
                deleteQuietly(file1);
                throw new IOException((new StringBuilder()).append("Failed to delete original file '").append(file).append("' after copy to '").append(file1).append("'").toString());
            }
        }
    }

    public static void moveFileToDirectory(File file, File file1, boolean flag)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!file1.exists() && flag)
        {
            file1.mkdirs();
        }
        if (!file1.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Destination directory '").append(file1).append("' does not exist [createDestDir=").append(flag).append("]").toString());
        }
        if (!file1.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Destination '").append(file1).append("' is not a directory").toString());
        } else
        {
            moveFile(file, new File(file1, file.getName()));
            return;
        }
    }

    public static void moveToDirectory(File file, File file1, boolean flag)
    {
        if (file == null)
        {
            throw new NullPointerException("Source must not be null");
        }
        if (file1 == null)
        {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists())
        {
            throw new FileNotFoundException((new StringBuilder()).append("Source '").append(file).append("' does not exist").toString());
        }
        if (file.isDirectory())
        {
            moveDirectoryToDirectory(file, file1, flag);
            return;
        } else
        {
            moveFileToDirectory(file, file1, flag);
            return;
        }
    }

    public static FileInputStream openInputStream(File file)
    {
        if (file.exists())
        {
            if (file.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' exists but is a directory").toString());
            }
            if (!file.canRead())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' cannot be read").toString());
            } else
            {
                return new FileInputStream(file);
            }
        } else
        {
            throw new FileNotFoundException((new StringBuilder()).append("File '").append(file).append("' does not exist").toString());
        }
    }

    public static FileOutputStream openOutputStream(File file)
    {
        return openOutputStream(file, false);
    }

    public static FileOutputStream openOutputStream(File file, boolean flag)
    {
        if (file.exists())
        {
            if (file.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' exists but is a directory").toString());
            }
            if (!file.canWrite())
            {
                throw new IOException((new StringBuilder()).append("File '").append(file).append("' cannot be written to").toString());
            }
        } else
        {
            File file1 = file.getParentFile();
            if (file1 != null && !file1.mkdirs() && !file1.isDirectory())
            {
                throw new IOException((new StringBuilder()).append("Directory '").append(file1).append("' could not be created").toString());
            }
        }
        return new FileOutputStream(file, flag);
    }

    public static byte[] readFileToByteArray(File file)
    {
        FileInputStream fileinputstream = null;
        byte abyte0[];
        fileinputstream = openInputStream(file);
        abyte0 = IOUtils.toByteArray(fileinputstream, file.length());
        IOUtils.closeQuietly(fileinputstream);
        return abyte0;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileinputstream);
        throw exception;
    }

    public static String readFileToString(File file)
    {
        return readFileToString(file, Charset.defaultCharset());
    }

    public static String readFileToString(File file, String s)
    {
        return readFileToString(file, Charsets.toCharset(s));
    }

    public static String readFileToString(File file, Charset charset)
    {
        FileInputStream fileinputstream = null;
        String s;
        fileinputstream = openInputStream(file);
        s = IOUtils.toString(fileinputstream, Charsets.toCharset(charset));
        IOUtils.closeQuietly(fileinputstream);
        return s;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileinputstream);
        throw exception;
    }

    public static List readLines(File file)
    {
        return readLines(file, Charset.defaultCharset());
    }

    public static List readLines(File file, String s)
    {
        return readLines(file, Charsets.toCharset(s));
    }

    public static List readLines(File file, Charset charset)
    {
        FileInputStream fileinputstream = null;
        List list;
        fileinputstream = openInputStream(file);
        list = IOUtils.readLines(fileinputstream, Charsets.toCharset(charset));
        IOUtils.closeQuietly(fileinputstream);
        return list;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileinputstream);
        throw exception;
    }

    private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter iofilefilter)
    {
        if (iofilefilter == null)
        {
            return FalseFileFilter.INSTANCE;
        } else
        {
            IOFileFilter aiofilefilter[] = new IOFileFilter[2];
            aiofilefilter[0] = iofilefilter;
            aiofilefilter[1] = DirectoryFileFilter.INSTANCE;
            return FileFilterUtils.and(aiofilefilter);
        }
    }

    private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter iofilefilter)
    {
        IOFileFilter aiofilefilter[] = new IOFileFilter[2];
        aiofilefilter[0] = iofilefilter;
        aiofilefilter[1] = FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE);
        return FileFilterUtils.and(aiofilefilter);
    }

    public static long sizeOf(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (file.isDirectory())
        {
            return sizeOfDirectory(file);
        } else
        {
            return file.length();
        }
    }

    public static BigInteger sizeOfAsBigInteger(File file)
    {
        if (!file.exists())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(file).append(" does not exist").toString());
        }
        if (file.isDirectory())
        {
            return sizeOfDirectoryAsBigInteger(file);
        } else
        {
            return BigInteger.valueOf(file.length());
        }
    }

    public static long sizeOfDirectory(File file)
    {
        File afile[];
        checkDirectory(file);
        afile = file.listFiles();
        if (afile != null) goto _L2; else goto _L1
_L1:
        long l = 0L;
_L4:
        return l;
_L2:
        int i;
        int j;
        i = afile.length;
        j = 0;
        l = 0L;
_L6:
        if (j >= i) goto _L4; else goto _L3
_L3:
        File file1 = afile[j];
        long l1;
        if (isSymlink(file1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = sizeOf(file1);
        l += l1;
        if (l < 0L) goto _L4; else goto _L5
_L5:
        j++;
          goto _L6
        IOException ioexception;
        ioexception;
          goto _L5
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(File file)
    {
        File afile[];
        checkDirectory(file);
        afile = file.listFiles();
        if (afile != null) goto _L2; else goto _L1
_L1:
        BigInteger biginteger1 = BigInteger.ZERO;
_L4:
        return biginteger1;
_L2:
        int i;
        int j;
        BigInteger biginteger = BigInteger.ZERO;
        i = afile.length;
        biginteger1 = biginteger;
        j = 0;
_L5:
        if (j >= i) goto _L4; else goto _L3
_L3:
        File file1 = afile[j];
        BigInteger biginteger2;
        if (isSymlink(file1))
        {
            break MISSING_BLOCK_LABEL_73;
        }
        biginteger2 = biginteger1.add(BigInteger.valueOf(sizeOf(file1)));
        biginteger1 = biginteger2;
_L6:
        j++;
          goto _L5
          goto _L4
        IOException ioexception;
        ioexception;
          goto _L6
    }

    public static File toFile(URL url)
    {
        if (url == null || !"file".equalsIgnoreCase(url.getProtocol()))
        {
            return null;
        } else
        {
            return new File(decodeUrl(url.getFile().replace('/', File.separatorChar)));
        }
    }

    public static File[] toFiles(URL aurl[])
    {
        if (aurl == null || aurl.length == 0)
        {
            return EMPTY_FILE_ARRAY;
        }
        File afile[] = new File[aurl.length];
        for (int i = 0; i < aurl.length; i++)
        {
            URL url = aurl[i];
            if (url == null)
            {
                continue;
            }
            if (!url.getProtocol().equals("file"))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("URL could not be converted to a File: ").append(url).toString());
            }
            afile[i] = toFile(url);
        }

        return afile;
    }

    private static String[] toSuffixes(String as[])
    {
        String as1[] = new String[as.length];
        for (int i = 0; i < as.length; i++)
        {
            as1[i] = (new StringBuilder()).append(".").append(as[i]).toString();
        }

        return as1;
    }

    public static URL[] toURLs(File afile[])
    {
        URL aurl[] = new URL[afile.length];
        for (int i = 0; i < aurl.length; i++)
        {
            aurl[i] = afile[i].toURI().toURL();
        }

        return aurl;
    }

    public static void touch(File file)
    {
        if (!file.exists())
        {
            IOUtils.closeQuietly(openOutputStream(file));
        }
        if (!file.setLastModified(System.currentTimeMillis()))
        {
            throw new IOException((new StringBuilder()).append("Unable to set the last modification time for ").append(file).toString());
        } else
        {
            return;
        }
    }

    private static void validateListFilesParameters(File file, IOFileFilter iofilefilter)
    {
        if (!file.isDirectory())
        {
            throw new IllegalArgumentException("Parameter 'directory' is not a directory");
        }
        if (iofilefilter == null)
        {
            throw new NullPointerException("Parameter 'fileFilter' is null");
        } else
        {
            return;
        }
    }

    public static boolean waitFor(File file, int i)
    {
        int j = 0;
        int k = 0;
        do
        {
            if (file.exists())
            {
                break;
            }
            int l = j + 1;
            if (j >= 10)
            {
                int i1 = k + 1;
                if (k > i)
                {
                    return false;
                }
                k = i1;
                j = 0;
            } else
            {
                j = l;
            }
            try
            {
                Thread.sleep(100L);
                continue;
            }
            catch (InterruptedException interruptedexception)
            {
                continue;
            }
            catch (Exception exception) { }
            break;
        } while (true);
        return true;
    }

    public static void write(File file, CharSequence charsequence)
    {
        write(file, charsequence, Charset.defaultCharset(), false);
    }

    public static void write(File file, CharSequence charsequence, String s)
    {
        write(file, charsequence, s, false);
    }

    public static void write(File file, CharSequence charsequence, String s, boolean flag)
    {
        write(file, charsequence, Charsets.toCharset(s), flag);
    }

    public static void write(File file, CharSequence charsequence, Charset charset)
    {
        write(file, charsequence, charset, false);
    }

    public static void write(File file, CharSequence charsequence, Charset charset, boolean flag)
    {
        String s;
        if (charsequence == null)
        {
            s = null;
        } else
        {
            s = charsequence.toString();
        }
        writeStringToFile(file, s, charset, flag);
    }

    public static void write(File file, CharSequence charsequence, boolean flag)
    {
        write(file, charsequence, Charset.defaultCharset(), flag);
    }

    public static void writeByteArrayToFile(File file, byte abyte0[])
    {
        writeByteArrayToFile(file, abyte0, false);
    }

    public static void writeByteArrayToFile(File file, byte abyte0[], boolean flag)
    {
        FileOutputStream fileoutputstream = null;
        fileoutputstream = openOutputStream(file, flag);
        fileoutputstream.write(abyte0);
        fileoutputstream.close();
        IOUtils.closeQuietly(fileoutputstream);
        return;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileoutputstream);
        throw exception;
    }

    public static void writeLines(File file, String s, Collection collection)
    {
        writeLines(file, s, collection, null, false);
    }

    public static void writeLines(File file, String s, Collection collection, String s1)
    {
        writeLines(file, s, collection, s1, false);
    }

    public static void writeLines(File file, String s, Collection collection, String s1, boolean flag)
    {
        FileOutputStream fileoutputstream = null;
        fileoutputstream = openOutputStream(file, flag);
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(fileoutputstream);
        IOUtils.writeLines(collection, s1, bufferedoutputstream, s);
        bufferedoutputstream.flush();
        fileoutputstream.close();
        IOUtils.closeQuietly(fileoutputstream);
        return;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileoutputstream);
        throw exception;
    }

    public static void writeLines(File file, String s, Collection collection, boolean flag)
    {
        writeLines(file, s, collection, null, flag);
    }

    public static void writeLines(File file, Collection collection)
    {
        writeLines(file, null, collection, null, false);
    }

    public static void writeLines(File file, Collection collection, String s)
    {
        writeLines(file, null, collection, s, false);
    }

    public static void writeLines(File file, Collection collection, String s, boolean flag)
    {
        writeLines(file, null, collection, s, flag);
    }

    public static void writeLines(File file, Collection collection, boolean flag)
    {
        writeLines(file, null, collection, null, flag);
    }

    public static void writeStringToFile(File file, String s)
    {
        writeStringToFile(file, s, Charset.defaultCharset(), false);
    }

    public static void writeStringToFile(File file, String s, String s1)
    {
        writeStringToFile(file, s, s1, false);
    }

    public static void writeStringToFile(File file, String s, String s1, boolean flag)
    {
        writeStringToFile(file, s, Charsets.toCharset(s1), flag);
    }

    public static void writeStringToFile(File file, String s, Charset charset)
    {
        writeStringToFile(file, s, charset, false);
    }

    public static void writeStringToFile(File file, String s, Charset charset, boolean flag)
    {
        FileOutputStream fileoutputstream = null;
        fileoutputstream = openOutputStream(file, flag);
        IOUtils.write(s, fileoutputstream, charset);
        fileoutputstream.close();
        IOUtils.closeQuietly(fileoutputstream);
        return;
        Exception exception;
        exception;
        IOUtils.closeQuietly(fileoutputstream);
        throw exception;
    }

    public static void writeStringToFile(File file, String s, boolean flag)
    {
        writeStringToFile(file, s, Charset.defaultCharset(), flag);
    }

    static 
    {
        ONE_KB_BI = BigInteger.valueOf(1024L);
        ONE_MB_BI = ONE_KB_BI.multiply(ONE_KB_BI);
        ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
        ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
        ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
        ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
        ONE_ZB = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(0x1000000000000000L));
        ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
    }
}
