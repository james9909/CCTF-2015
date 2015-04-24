// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.channels.Selector;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.commons.io.output.StringBuilderWriter;

// Referenced classes of package org.apache.commons.io:
//            Charsets, LineIterator

public class IOUtils
{

    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final char DIR_SEPARATOR = 0;
    public static final char DIR_SEPARATOR_UNIX = 47;
    public static final char DIR_SEPARATOR_WINDOWS = 92;
    private static final int EOF = -1;
    public static final String LINE_SEPARATOR;
    public static final String LINE_SEPARATOR_UNIX = "\n";
    public static final String LINE_SEPARATOR_WINDOWS = "\r\n";
    private static final int SKIP_BUFFER_SIZE = 2048;
    private static byte SKIP_BYTE_BUFFER[];
    private static char SKIP_CHAR_BUFFER[];

    public IOUtils()
    {
    }

    public static void close(URLConnection urlconnection)
    {
        if (urlconnection instanceof HttpURLConnection)
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
    }

    public static void closeQuietly(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static void closeQuietly(InputStream inputstream)
    {
        closeQuietly(((Closeable) (inputstream)));
    }

    public static void closeQuietly(OutputStream outputstream)
    {
        closeQuietly(((Closeable) (outputstream)));
    }

    public static void closeQuietly(Reader reader)
    {
        closeQuietly(((Closeable) (reader)));
    }

    public static void closeQuietly(Writer writer)
    {
        closeQuietly(((Closeable) (writer)));
    }

    public static void closeQuietly(ServerSocket serversocket)
    {
        if (serversocket == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        serversocket.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static void closeQuietly(Socket socket)
    {
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        socket.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static void closeQuietly(Selector selector)
    {
        if (selector == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        selector.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static boolean contentEquals(InputStream inputstream, InputStream inputstream1)
    {
        if (!(inputstream instanceof BufferedInputStream))
        {
            inputstream = new BufferedInputStream(inputstream);
        }
        if (!(inputstream1 instanceof BufferedInputStream))
        {
            inputstream1 = new BufferedInputStream(inputstream1);
        }
        for (int i = inputstream.read(); -1 != i; i = inputstream.read())
        {
            if (i != inputstream1.read())
            {
                return false;
            }
        }

        boolean flag;
        if (inputstream1.read() == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public static boolean contentEquals(Reader reader, Reader reader1)
    {
        BufferedReader bufferedreader;
        BufferedReader bufferedreader1;
        int i;
        bufferedreader = toBufferedReader(reader);
        bufferedreader1 = toBufferedReader(reader1);
        i = bufferedreader.read();
_L7:
        if (-1 == i) goto _L2; else goto _L1
_L1:
        if (i == bufferedreader1.read()) goto _L4; else goto _L3
_L3:
        return false;
_L4:
        i = bufferedreader.read();
        continue; /* Loop/switch isn't completed */
_L2:
        if (bufferedreader1.read() != -1) goto _L3; else goto _L5
_L5:
        return true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static boolean contentEqualsIgnoreEOL(Reader reader, Reader reader1)
    {
        BufferedReader bufferedreader = toBufferedReader(reader);
        BufferedReader bufferedreader1 = toBufferedReader(reader1);
        String s = bufferedreader.readLine();
        String s1;
        for (s1 = bufferedreader1.readLine(); s != null && s1 != null && s.equals(s1); s1 = bufferedreader1.readLine())
        {
            s = bufferedreader.readLine();
        }

        if (s == null)
        {
            return s1 == null;
        } else
        {
            return s.equals(s1);
        }
    }

    public static int copy(InputStream inputstream, OutputStream outputstream)
    {
        long l = copyLarge(inputstream, outputstream);
        if (l > 0x7fffffffL)
        {
            return -1;
        } else
        {
            return (int)l;
        }
    }

    public static int copy(Reader reader, Writer writer)
    {
        long l = copyLarge(reader, writer);
        if (l > 0x7fffffffL)
        {
            return -1;
        } else
        {
            return (int)l;
        }
    }

    public static void copy(InputStream inputstream, Writer writer)
    {
        copy(inputstream, writer, Charset.defaultCharset());
    }

    public static void copy(InputStream inputstream, Writer writer, String s)
    {
        copy(inputstream, writer, Charsets.toCharset(s));
    }

    public static void copy(InputStream inputstream, Writer writer, Charset charset)
    {
        copy(((Reader) (new InputStreamReader(inputstream, Charsets.toCharset(charset)))), writer);
    }

    public static void copy(Reader reader, OutputStream outputstream)
    {
        copy(reader, outputstream, Charset.defaultCharset());
    }

    public static void copy(Reader reader, OutputStream outputstream, String s)
    {
        copy(reader, outputstream, Charsets.toCharset(s));
    }

    public static void copy(Reader reader, OutputStream outputstream, Charset charset)
    {
        OutputStreamWriter outputstreamwriter = new OutputStreamWriter(outputstream, Charsets.toCharset(charset));
        copy(reader, ((Writer) (outputstreamwriter)));
        outputstreamwriter.flush();
    }

    public static long copyLarge(InputStream inputstream, OutputStream outputstream)
    {
        return copyLarge(inputstream, outputstream, new byte[4096]);
    }

    public static long copyLarge(InputStream inputstream, OutputStream outputstream, long l, long l1)
    {
        return copyLarge(inputstream, outputstream, l, l1, new byte[4096]);
    }

    public static long copyLarge(InputStream inputstream, OutputStream outputstream, long l, long l1, byte abyte0[])
    {
        if (l > 0L)
        {
            skipFully(inputstream, l);
        }
        if (l1 == 0L)
        {
            return 0L;
        }
        int i = abyte0.length;
        int j;
        long l2;
        if (l1 > 0L && l1 < (long)i)
        {
            j = (int)l1;
        } else
        {
            j = i;
        }
        l2 = 0L;
        do
        {
            if (j <= 0)
            {
                break;
            }
            int k = inputstream.read(abyte0, 0, j);
            if (-1 == k)
            {
                break;
            }
            outputstream.write(abyte0, 0, k);
            l2 += k;
            if (l1 > 0L)
            {
                j = (int)Math.min(l1 - l2, i);
            }
        } while (true);
        return l2;
    }

    public static long copyLarge(InputStream inputstream, OutputStream outputstream, byte abyte0[])
    {
        long l = 0L;
        do
        {
            int i = inputstream.read(abyte0);
            if (-1 != i)
            {
                outputstream.write(abyte0, 0, i);
                l += i;
            } else
            {
                return l;
            }
        } while (true);
    }

    public static long copyLarge(Reader reader, Writer writer)
    {
        return copyLarge(reader, writer, new char[4096]);
    }

    public static long copyLarge(Reader reader, Writer writer, long l, long l1)
    {
        return copyLarge(reader, writer, l, l1, new char[4096]);
    }

    public static long copyLarge(Reader reader, Writer writer, long l, long l1, char ac[])
    {
        if (l > 0L)
        {
            skipFully(reader, l);
        }
        if (l1 != 0L) goto _L2; else goto _L1
_L1:
        long l2 = 0L;
_L4:
        return l2;
_L2:
        int j;
        int i = ac.length;
        if (l1 > 0L && l1 < (long)ac.length)
        {
            i = (int)l1;
        }
        j = i;
        l2 = 0L;
_L6:
        if (j <= 0) goto _L4; else goto _L3
_L3:
        int k = reader.read(ac, 0, j);
        if (-1 == k) goto _L4; else goto _L5
_L5:
        writer.write(ac, 0, k);
        l2 += k;
        if (l1 > 0L)
        {
            j = (int)Math.min(l1 - l2, ac.length);
        }
          goto _L6
    }

    public static long copyLarge(Reader reader, Writer writer, char ac[])
    {
        long l = 0L;
        do
        {
            int i = reader.read(ac);
            if (-1 != i)
            {
                writer.write(ac, 0, i);
                l += i;
            } else
            {
                return l;
            }
        } while (true);
    }

    public static LineIterator lineIterator(InputStream inputstream, String s)
    {
        return lineIterator(inputstream, Charsets.toCharset(s));
    }

    public static LineIterator lineIterator(InputStream inputstream, Charset charset)
    {
        return new LineIterator(new InputStreamReader(inputstream, Charsets.toCharset(charset)));
    }

    public static LineIterator lineIterator(Reader reader)
    {
        return new LineIterator(reader);
    }

    public static int read(InputStream inputstream, byte abyte0[])
    {
        return read(inputstream, abyte0, 0, abyte0.length);
    }

    public static int read(InputStream inputstream, byte abyte0[], int i, int j)
    {
        if (j < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Length must not be negative: ").append(j).toString());
        }
        int k = j;
        do
        {
            int l;
label0:
            {
                if (k > 0)
                {
                    l = inputstream.read(abyte0, i + (j - k), k);
                    if (-1 != l)
                    {
                        break label0;
                    }
                }
                return j - k;
            }
            k -= l;
        } while (true);
    }

    public static int read(Reader reader, char ac[])
    {
        return read(reader, ac, 0, ac.length);
    }

    public static int read(Reader reader, char ac[], int i, int j)
    {
        if (j < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Length must not be negative: ").append(j).toString());
        }
        int k = j;
        do
        {
            int l;
label0:
            {
                if (k > 0)
                {
                    l = reader.read(ac, i + (j - k), k);
                    if (-1 != l)
                    {
                        break label0;
                    }
                }
                return j - k;
            }
            k -= l;
        } while (true);
    }

    public static void readFully(InputStream inputstream, byte abyte0[])
    {
        readFully(inputstream, abyte0, 0, abyte0.length);
    }

    public static void readFully(InputStream inputstream, byte abyte0[], int i, int j)
    {
        int k = read(inputstream, abyte0, i, j);
        if (k != j)
        {
            throw new EOFException((new StringBuilder()).append("Length to read: ").append(j).append(" actual: ").append(k).toString());
        } else
        {
            return;
        }
    }

    public static void readFully(Reader reader, char ac[])
    {
        readFully(reader, ac, 0, ac.length);
    }

    public static void readFully(Reader reader, char ac[], int i, int j)
    {
        int k = read(reader, ac, i, j);
        if (k != j)
        {
            throw new EOFException((new StringBuilder()).append("Length to read: ").append(j).append(" actual: ").append(k).toString());
        } else
        {
            return;
        }
    }

    public static List readLines(InputStream inputstream)
    {
        return readLines(inputstream, Charset.defaultCharset());
    }

    public static List readLines(InputStream inputstream, String s)
    {
        return readLines(inputstream, Charsets.toCharset(s));
    }

    public static List readLines(InputStream inputstream, Charset charset)
    {
        return readLines(((Reader) (new InputStreamReader(inputstream, Charsets.toCharset(charset)))));
    }

    public static List readLines(Reader reader)
    {
        BufferedReader bufferedreader = toBufferedReader(reader);
        ArrayList arraylist = new ArrayList();
        for (String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
        {
            arraylist.add(s);
        }

        return arraylist;
    }

    public static long skip(InputStream inputstream, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Skip count must be non-negative, actual: ").append(l).toString());
        }
        if (SKIP_BYTE_BUFFER == null)
        {
            SKIP_BYTE_BUFFER = new byte[2048];
        }
        long l1 = l;
        do
        {
            long l2;
label0:
            {
                if (l1 > 0L)
                {
                    l2 = inputstream.read(SKIP_BYTE_BUFFER, 0, (int)Math.min(l1, 2048L));
                    if (l2 >= 0L)
                    {
                        break label0;
                    }
                }
                return l - l1;
            }
            l1 -= l2;
        } while (true);
    }

    public static long skip(Reader reader, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Skip count must be non-negative, actual: ").append(l).toString());
        }
        if (SKIP_CHAR_BUFFER == null)
        {
            SKIP_CHAR_BUFFER = new char[2048];
        }
        long l1 = l;
        do
        {
            long l2;
label0:
            {
                if (l1 > 0L)
                {
                    l2 = reader.read(SKIP_CHAR_BUFFER, 0, (int)Math.min(l1, 2048L));
                    if (l2 >= 0L)
                    {
                        break label0;
                    }
                }
                return l - l1;
            }
            l1 -= l2;
        } while (true);
    }

    public static void skipFully(InputStream inputstream, long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bytes to skip must not be negative: ").append(l).toString());
        }
        long l1 = skip(inputstream, l);
        if (l1 != l)
        {
            throw new EOFException((new StringBuilder()).append("Bytes to skip: ").append(l).append(" actual: ").append(l1).toString());
        } else
        {
            return;
        }
    }

    public static void skipFully(Reader reader, long l)
    {
        long l1 = skip(reader, l);
        if (l1 != l)
        {
            throw new EOFException((new StringBuilder()).append("Chars to skip: ").append(l).append(" actual: ").append(l1).toString());
        } else
        {
            return;
        }
    }

    public static InputStream toBufferedInputStream(InputStream inputstream)
    {
        return ByteArrayOutputStream.toBufferedInputStream(inputstream);
    }

    public static BufferedReader toBufferedReader(Reader reader)
    {
        if (reader instanceof BufferedReader)
        {
            return (BufferedReader)reader;
        } else
        {
            return new BufferedReader(reader);
        }
    }

    public static byte[] toByteArray(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        copy(inputstream, bytearrayoutputstream);
        return bytearrayoutputstream.toByteArray();
    }

    public static byte[] toByteArray(InputStream inputstream, int i)
    {
        int j = 0;
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Size must be equal or greater than zero: ").append(i).toString());
        }
        byte abyte0[];
        if (i == 0)
        {
            abyte0 = new byte[0];
        } else
        {
            abyte0 = new byte[i];
            do
            {
                if (j >= i)
                {
                    break;
                }
                int k = inputstream.read(abyte0, j, i - j);
                if (k == -1)
                {
                    break;
                }
                j += k;
            } while (true);
            if (j != i)
            {
                throw new IOException((new StringBuilder()).append("Unexpected readed size. current: ").append(j).append(", excepted: ").append(i).toString());
            }
        }
        return abyte0;
    }

    public static byte[] toByteArray(InputStream inputstream, long l)
    {
        if (l > 0x7fffffffL)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Size cannot be greater than Integer max value: ").append(l).toString());
        } else
        {
            return toByteArray(inputstream, (int)l);
        }
    }

    public static byte[] toByteArray(Reader reader)
    {
        return toByteArray(reader, Charset.defaultCharset());
    }

    public static byte[] toByteArray(Reader reader, String s)
    {
        return toByteArray(reader, Charsets.toCharset(s));
    }

    public static byte[] toByteArray(Reader reader, Charset charset)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        copy(reader, bytearrayoutputstream, charset);
        return bytearrayoutputstream.toByteArray();
    }

    public static byte[] toByteArray(String s)
    {
        return s.getBytes();
    }

    public static byte[] toByteArray(URI uri)
    {
        return toByteArray(uri.toURL());
    }

    public static byte[] toByteArray(URL url)
    {
        URLConnection urlconnection = url.openConnection();
        byte abyte0[] = toByteArray(urlconnection);
        close(urlconnection);
        return abyte0;
        Exception exception;
        exception;
        close(urlconnection);
        throw exception;
    }

    public static byte[] toByteArray(URLConnection urlconnection)
    {
        InputStream inputstream = urlconnection.getInputStream();
        byte abyte0[] = toByteArray(inputstream);
        inputstream.close();
        return abyte0;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
    }

    public static char[] toCharArray(InputStream inputstream)
    {
        return toCharArray(inputstream, Charset.defaultCharset());
    }

    public static char[] toCharArray(InputStream inputstream, String s)
    {
        return toCharArray(inputstream, Charsets.toCharset(s));
    }

    public static char[] toCharArray(InputStream inputstream, Charset charset)
    {
        CharArrayWriter chararraywriter = new CharArrayWriter();
        copy(inputstream, chararraywriter, charset);
        return chararraywriter.toCharArray();
    }

    public static char[] toCharArray(Reader reader)
    {
        CharArrayWriter chararraywriter = new CharArrayWriter();
        copy(reader, chararraywriter);
        return chararraywriter.toCharArray();
    }

    public static InputStream toInputStream(CharSequence charsequence)
    {
        return toInputStream(charsequence, Charset.defaultCharset());
    }

    public static InputStream toInputStream(CharSequence charsequence, String s)
    {
        return toInputStream(charsequence, Charsets.toCharset(s));
    }

    public static InputStream toInputStream(CharSequence charsequence, Charset charset)
    {
        return toInputStream(charsequence.toString(), charset);
    }

    public static InputStream toInputStream(String s)
    {
        return toInputStream(s, Charset.defaultCharset());
    }

    public static InputStream toInputStream(String s, String s1)
    {
        return new ByteArrayInputStream(s.getBytes(Charsets.toCharset(s1)));
    }

    public static InputStream toInputStream(String s, Charset charset)
    {
        return new ByteArrayInputStream(s.getBytes(Charsets.toCharset(charset)));
    }

    public static String toString(InputStream inputstream)
    {
        return toString(inputstream, Charset.defaultCharset());
    }

    public static String toString(InputStream inputstream, String s)
    {
        return toString(inputstream, Charsets.toCharset(s));
    }

    public static String toString(InputStream inputstream, Charset charset)
    {
        StringBuilderWriter stringbuilderwriter = new StringBuilderWriter();
        copy(inputstream, stringbuilderwriter, charset);
        return stringbuilderwriter.toString();
    }

    public static String toString(Reader reader)
    {
        StringBuilderWriter stringbuilderwriter = new StringBuilderWriter();
        copy(reader, stringbuilderwriter);
        return stringbuilderwriter.toString();
    }

    public static String toString(URI uri)
    {
        return toString(uri, Charset.defaultCharset());
    }

    public static String toString(URI uri, String s)
    {
        return toString(uri, Charsets.toCharset(s));
    }

    public static String toString(URI uri, Charset charset)
    {
        return toString(uri.toURL(), Charsets.toCharset(charset));
    }

    public static String toString(URL url)
    {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, String s)
    {
        return toString(url, Charsets.toCharset(s));
    }

    public static String toString(URL url, Charset charset)
    {
        InputStream inputstream = url.openStream();
        String s = toString(inputstream, charset);
        inputstream.close();
        return s;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
    }

    public static String toString(byte abyte0[])
    {
        return new String(abyte0);
    }

    public static String toString(byte abyte0[], String s)
    {
        return new String(abyte0, Charsets.toCharset(s));
    }

    public static void write(CharSequence charsequence, OutputStream outputstream)
    {
        write(charsequence, outputstream, Charset.defaultCharset());
    }

    public static void write(CharSequence charsequence, OutputStream outputstream, String s)
    {
        write(charsequence, outputstream, Charsets.toCharset(s));
    }

    public static void write(CharSequence charsequence, OutputStream outputstream, Charset charset)
    {
        if (charsequence != null)
        {
            write(charsequence.toString(), outputstream, charset);
        }
    }

    public static void write(CharSequence charsequence, Writer writer)
    {
        if (charsequence != null)
        {
            write(charsequence.toString(), writer);
        }
    }

    public static void write(String s, OutputStream outputstream)
    {
        write(s, outputstream, Charset.defaultCharset());
    }

    public static void write(String s, OutputStream outputstream, String s1)
    {
        write(s, outputstream, Charsets.toCharset(s1));
    }

    public static void write(String s, OutputStream outputstream, Charset charset)
    {
        if (s != null)
        {
            outputstream.write(s.getBytes(Charsets.toCharset(charset)));
        }
    }

    public static void write(String s, Writer writer)
    {
        if (s != null)
        {
            writer.write(s);
        }
    }

    public static void write(StringBuffer stringbuffer, OutputStream outputstream)
    {
        write(stringbuffer, outputstream, (String)null);
    }

    public static void write(StringBuffer stringbuffer, OutputStream outputstream, String s)
    {
        if (stringbuffer != null)
        {
            outputstream.write(stringbuffer.toString().getBytes(Charsets.toCharset(s)));
        }
    }

    public static void write(StringBuffer stringbuffer, Writer writer)
    {
        if (stringbuffer != null)
        {
            writer.write(stringbuffer.toString());
        }
    }

    public static void write(byte abyte0[], OutputStream outputstream)
    {
        if (abyte0 != null)
        {
            outputstream.write(abyte0);
        }
    }

    public static void write(byte abyte0[], Writer writer)
    {
        write(abyte0, writer, Charset.defaultCharset());
    }

    public static void write(byte abyte0[], Writer writer, String s)
    {
        write(abyte0, writer, Charsets.toCharset(s));
    }

    public static void write(byte abyte0[], Writer writer, Charset charset)
    {
        if (abyte0 != null)
        {
            writer.write(new String(abyte0, Charsets.toCharset(charset)));
        }
    }

    public static void write(char ac[], OutputStream outputstream)
    {
        write(ac, outputstream, Charset.defaultCharset());
    }

    public static void write(char ac[], OutputStream outputstream, String s)
    {
        write(ac, outputstream, Charsets.toCharset(s));
    }

    public static void write(char ac[], OutputStream outputstream, Charset charset)
    {
        if (ac != null)
        {
            outputstream.write((new String(ac)).getBytes(Charsets.toCharset(charset)));
        }
    }

    public static void write(char ac[], Writer writer)
    {
        if (ac != null)
        {
            writer.write(ac);
        }
    }

    public static void writeLines(Collection collection, String s, OutputStream outputstream)
    {
        writeLines(collection, s, outputstream, Charset.defaultCharset());
    }

    public static void writeLines(Collection collection, String s, OutputStream outputstream, String s1)
    {
        writeLines(collection, s, outputstream, Charsets.toCharset(s1));
    }

    public static void writeLines(Collection collection, String s, OutputStream outputstream, Charset charset)
    {
        if (collection != null)
        {
            if (s == null)
            {
                s = LINE_SEPARATOR;
            }
            Charset charset1 = Charsets.toCharset(charset);
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                Object obj = iterator.next();
                if (obj != null)
                {
                    outputstream.write(obj.toString().getBytes(charset1));
                }
                outputstream.write(s.getBytes(charset1));
            }
        }
    }

    public static void writeLines(Collection collection, String s, Writer writer)
    {
        if (collection != null)
        {
            if (s == null)
            {
                s = LINE_SEPARATOR;
            }
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                Object obj = iterator.next();
                if (obj != null)
                {
                    writer.write(obj.toString());
                }
                writer.write(s);
            }
        }
    }

    static 
    {
        DIR_SEPARATOR = File.separatorChar;
        StringBuilderWriter stringbuilderwriter = new StringBuilderWriter(4);
        PrintWriter printwriter = new PrintWriter(stringbuilderwriter);
        printwriter.println();
        LINE_SEPARATOR = stringbuilderwriter.toString();
        printwriter.close();
    }
}
