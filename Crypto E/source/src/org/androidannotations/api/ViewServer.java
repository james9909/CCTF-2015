// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidannotations.api;

import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ViewServer
    implements Runnable
{
    static class NoopViewServer extends ViewServer
    {

        public void run()
        {
        }

        private NoopViewServer()
        {
        }
    }

    static class UncloseableOuputStream extends OutputStream
    {

        private final OutputStream a;

        public void close()
        {
        }

        public boolean equals(Object obj)
        {
            return a.equals(obj);
        }

        public void flush()
        {
            a.flush();
        }

        public int hashCode()
        {
            return a.hashCode();
        }

        public String toString()
        {
            return a.toString();
        }

        public void write(int j)
        {
            a.write(j);
        }

        public void write(byte abyte0[])
        {
            a.write(abyte0);
        }

        public void write(byte abyte0[], int j, int k)
        {
            a.write(abyte0, j, k);
        }

        UncloseableOuputStream(OutputStream outputstream)
        {
            a = outputstream;
        }
    }

    class ViewServerWorker
        implements Runnable, WindowListener
    {

        final ViewServer a;
        private Socket b;
        private boolean c;
        private boolean d;
        private final Object e[] = new Object[0];

        private View a(int j)
        {
            if (j != -1)
            {
                break MISSING_BLOCK_LABEL_61;
            }
            ViewServer.a(a).readLock().lock();
            View view1 = ViewServer.b(a);
            ViewServer.a(a).readLock().unlock();
            return view1;
            Exception exception1;
            exception1;
            ViewServer.a(a).readLock().unlock();
            throw exception1;
            ViewServer.a(a).readLock().lock();
            View view;
            Iterator iterator = ViewServer.c(a).entrySet().iterator();
            java.util.Map.Entry entry;
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_152;
                }
                entry = (java.util.Map.Entry)iterator.next();
            } while (System.identityHashCode(entry.getKey()) != j);
            view = (View)entry.getKey();
            ViewServer.a(a).readLock().unlock();
            return view;
            ViewServer.a(a).readLock().unlock();
            return null;
            Exception exception;
            exception;
            ViewServer.a(a).readLock().unlock();
            throw exception;
        }

        private boolean a()
        {
            ViewServer.a(a, this);
            BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(b.getOutputStream()));
_L9:
            if (Thread.interrupted()) goto _L2; else goto _L1
_L1:
            Object aobj[] = e;
            aobj;
            JVM INSTR monitorenter ;
            while (!c && !d) 
            {
                ((Object) (e)).wait();
            }
              goto _L3
            Exception exception2;
            exception2;
            aobj;
            JVM INSTR monitorexit ;
            throw exception2;
            Exception exception1;
            exception1;
_L12:
            Log.w("ViewServer", "Connection error: ", exception1);
            Exception exception;
            boolean flag;
            boolean flag1;
            IOException ioexception2;
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception1) { }
            }
            ViewServer.b(a, this);
            return true;
_L3:
            if (!c)
            {
                break MISSING_BLOCK_LABEL_243;
            }
            c = false;
            flag = true;
_L14:
            if (!d) goto _L5; else goto _L4
_L4:
            d = false;
            flag1 = true;
_L13:
            aobj;
            JVM INSTR monitorexit ;
            if (!flag) goto _L7; else goto _L6
_L6:
            bufferedwriter.write("LIST UPDATE\n");
            bufferedwriter.flush();
_L7:
            if (!flag1) goto _L9; else goto _L8
_L8:
            bufferedwriter.write("FOCUS UPDATE\n");
            bufferedwriter.flush();
              goto _L9
            exception;
_L11:
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception) { }
            }
            ViewServer.b(a, this);
            throw exception;
_L2:
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception2) { }
            }
            ViewServer.b(a, this);
            return true;
            exception;
            bufferedwriter = null;
            if (true) goto _L11; else goto _L10
_L10:
            exception1;
            bufferedwriter = null;
              goto _L12
_L5:
            flag1 = false;
              goto _L13
            flag = false;
              goto _L14
        }

        private boolean a(Socket socket)
        {
            BufferedWriter bufferedwriter1;
            ViewServer.a(a).readLock().lock();
            bufferedwriter1 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
            for (Iterator iterator = ViewServer.c(a).entrySet().iterator(); iterator.hasNext(); bufferedwriter1.write(10))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                bufferedwriter1.write(Integer.toHexString(System.identityHashCode(entry.getKey())));
                bufferedwriter1.write(32);
                bufferedwriter1.append((CharSequence)entry.getValue());
            }

              goto _L1
            Exception exception3;
            exception3;
            BufferedWriter bufferedwriter = bufferedwriter1;
_L4:
            ViewServer.a(a).readLock().unlock();
            Exception exception;
            Exception exception1;
            Exception exception2;
            IOException ioexception1;
            if (bufferedwriter != null)
            {
                IOException ioexception2;
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception)
                {
                    return false;
                }
                return false;
            } else
            {
                return false;
            }
_L1:
            bufferedwriter1.write("DONE.\n");
            bufferedwriter1.flush();
            ViewServer.a(a).readLock().unlock();
            if (bufferedwriter1 != null)
            {
                try
                {
                    bufferedwriter1.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception2)
                {
                    return false;
                }
                return true;
            } else
            {
                return true;
            }
            exception1;
            bufferedwriter1 = null;
            exception2 = exception1;
_L3:
            ViewServer.a(a).readLock().unlock();
            if (bufferedwriter1 != null)
            {
                try
                {
                    bufferedwriter1.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception1) { }
            }
            throw exception2;
            exception2;
            if (true) goto _L3; else goto _L2
_L2:
            exception;
            bufferedwriter = null;
              goto _L4
        }

        private boolean a(Socket socket, String s, String s1)
        {
            boolean flag;
            BufferedWriter bufferedwriter;
            flag = true;
            bufferedwriter = null;
            int j = s1.indexOf(' ');
            bufferedwriter = null;
            if (j != -1)
            {
                break MISSING_BLOCK_LABEL_29;
            }
            j = s1.length();
            int k;
            k = (int)Long.parseLong(s1.substring(0, j), 16);
            if (j >= s1.length())
            {
                break MISSING_BLOCK_LABEL_85;
            }
            s1 = s1.substring(j + 1);
_L1:
            View view = a(k);
            Exception exception;
            Exception exception1;
            BufferedWriter bufferedwriter1;
            if (view == null)
            {
                IOException ioexception1;
                Method method;
                Object aobj[];
                boolean flag1;
                IOException ioexception2;
                if (false)
                {
                    try
                    {
                        null.close();
                    }
                    catch (IOException ioexception3)
                    {
                        return false;
                    }
                }
                return false;
            }
            break MISSING_BLOCK_LABEL_91;
            s1 = "";
              goto _L1
            method = android/view/ViewDebug.getDeclaredMethod("dispatchCommand", new Class[] {
                android/view/View, java/lang/String, java/lang/String, java/io/OutputStream
            });
            method.setAccessible(true);
            aobj = new Object[4];
            aobj[0] = view;
            aobj[1] = s;
            aobj[2] = s1;
            aobj[3] = new UncloseableOuputStream(socket.getOutputStream());
            method.invoke(null, aobj);
            flag1 = socket.isOutputShutdown();
            bufferedwriter = null;
            if (flag1) goto _L3; else goto _L2
_L2:
            bufferedwriter1 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
            bufferedwriter1.write("DONE\n");
            bufferedwriter1.flush();
_L10:
            if (bufferedwriter1 != null)
            {
                try
                {
                    bufferedwriter1.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception2)
                {
                    flag = false;
                }
            }
_L8:
            return flag;
            exception1;
_L7:
            Log.w("ViewServer", (new StringBuilder()).append("Could not send command ").append(s).append(" with parameters ").append(s1).toString(), exception1);
            if (bufferedwriter == null)
            {
                break; /* Loop/switch isn't completed */
            }
            try
            {
                bufferedwriter.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
            flag = false;
            continue; /* Loop/switch isn't completed */
            exception;
_L5:
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception) { }
            }
            throw exception;
            exception;
            bufferedwriter = bufferedwriter1;
            if (true) goto _L5; else goto _L4
_L4:
            exception1;
            bufferedwriter = bufferedwriter1;
            if (true) goto _L7; else goto _L6
_L6:
            flag = false;
            if (true) goto _L8; else goto _L3
_L3:
            bufferedwriter1 = null;
            if (true) goto _L10; else goto _L9
_L9:
        }

        private boolean b(Socket socket)
        {
            BufferedWriter bufferedwriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
            ViewServer.d(a).readLock().lock();
            View view = ViewServer.b(a);
            ViewServer.d(a).readLock().unlock();
            if (view == null)
            {
                break MISSING_BLOCK_LABEL_135;
            }
            ViewServer.a(a).readLock().lock();
            String s = (String)ViewServer.c(a).get(ViewServer.b(a));
            ViewServer.a(a).readLock().unlock();
            bufferedwriter.write(Integer.toHexString(System.identityHashCode(view)));
            bufferedwriter.write(32);
            bufferedwriter.append(s);
            bufferedwriter.write(10);
            bufferedwriter.flush();
            Exception exception;
            BufferedWriter bufferedwriter1;
            Exception exception4;
            Exception exception5;
            if (bufferedwriter != null)
            {
                Exception exception1;
                Exception exception2;
                Exception exception3;
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception2)
                {
                    return false;
                }
                return true;
            } else
            {
                return true;
            }
            exception2;
            try
            {
                ViewServer.d(a).readLock().unlock();
                throw exception2;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                bufferedwriter1 = bufferedwriter;
            }
            finally { }
_L3:
            if (bufferedwriter1 != null)
            {
                try
                {
                    bufferedwriter1.close();
                }
                catch (IOException ioexception1)
                {
                    return false;
                }
                return false;
            } else
            {
                return false;
            }
            exception3;
            ViewServer.a(a).readLock().unlock();
            throw exception3;
_L2:
            if (bufferedwriter != null)
            {
                try
                {
                    bufferedwriter.close();
                }
                catch (IOException ioexception) { }
            }
            throw exception;
            exception5;
            exception = exception5;
            bufferedwriter = null;
            if (true) goto _L2; else goto _L1
_L1:
            exception4;
            bufferedwriter1 = null;
              goto _L3
        }

        public void run()
        {
            BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(b.getInputStream()), 1024);
            String s;
            int j;
            s = bufferedreader.readLine();
            j = s.indexOf(' ');
            if (j != -1) goto _L2; else goto _L1
_L1:
            String s2 = "";
_L5:
            if (!"PROTOCOL".equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
            boolean flag1 = ViewServer.a(b, "4");
_L6:
            if (flag1)
            {
                break MISSING_BLOCK_LABEL_105;
            }
            Log.w("ViewServer", (new StringBuilder()).append("An error occurred with the command: ").append(s).toString());
            String s1;
            boolean flag;
            if (bufferedreader != null)
            {
                try
                {
                    bufferedreader.close();
                }
                catch (IOException ioexception6)
                {
                    ioexception6.printStackTrace();
                }
            }
            if (b == null)
            {
                break MISSING_BLOCK_LABEL_127;
            }
            b.close();
_L8:
            return;
_L2:
            s1 = s.substring(0, j);
            s2 = s.substring(j + 1);
            s = s1;
              goto _L5
_L4:
label0:
            {
                if (!"SERVER".equalsIgnoreCase(s))
                {
                    break label0;
                }
                flag1 = ViewServer.a(b, "4");
            }
              goto _L6
label1:
            {
                if (!"LIST".equalsIgnoreCase(s))
                {
                    break label1;
                }
                flag1 = a(b);
            }
              goto _L6
label2:
            {
                if (!"GET_FOCUS".equalsIgnoreCase(s))
                {
                    break label2;
                }
                flag1 = b(b);
            }
              goto _L6
label3:
            {
                if (!"AUTOLIST".equalsIgnoreCase(s))
                {
                    break label3;
                }
                flag1 = a();
            }
              goto _L6
            flag = a(b, s, s2);
            flag1 = flag;
              goto _L6
            IOException ioexception5;
            ioexception5;
            ioexception5.printStackTrace();
            return;
            IOException ioexception;
            ioexception;
            bufferedreader = null;
_L11:
            Log.w("ViewServer", "Connection error: ", ioexception);
            if (bufferedreader != null)
            {
                try
                {
                    bufferedreader.close();
                }
                catch (IOException ioexception4)
                {
                    ioexception4.printStackTrace();
                }
            }
            if (b == null) goto _L8; else goto _L7
_L7:
            try
            {
                b.close();
                return;
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
            return;
            Exception exception;
            exception;
            bufferedreader = null;
_L10:
            if (bufferedreader != null)
            {
                try
                {
                    bufferedreader.close();
                }
                catch (IOException ioexception2)
                {
                    ioexception2.printStackTrace();
                }
            }
            if (b != null)
            {
                try
                {
                    b.close();
                }
                catch (IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
            }
            throw exception;
            exception;
            if (true) goto _L10; else goto _L9
_L9:
            ioexception;
              goto _L11
        }

        public ViewServerWorker(Socket socket)
        {
            a = ViewServer.this;
            super();
            b = socket;
            c = false;
            d = false;
        }
    }

    static interface WindowListener
    {
    }


    private ServerSocket a;
    private final int b;
    private Thread c;
    private ExecutorService d;
    private final List e;
    private final HashMap f;
    private final ReentrantReadWriteLock g;
    private View h;
    private final ReentrantReadWriteLock i;

    private ViewServer()
    {
        e = new CopyOnWriteArrayList();
        f = new HashMap();
        g = new ReentrantReadWriteLock();
        i = new ReentrantReadWriteLock();
        b = -1;
    }


    static ReentrantReadWriteLock a(ViewServer viewserver)
    {
        return viewserver.g;
    }

    private void a(WindowListener windowlistener)
    {
        if (!e.contains(windowlistener))
        {
            e.add(windowlistener);
        }
    }

    static void a(ViewServer viewserver, WindowListener windowlistener)
    {
        viewserver.a(windowlistener);
    }

    static boolean a(Socket socket, String s)
    {
        return b(socket, s);
    }

    static View b(ViewServer viewserver)
    {
        return viewserver.h;
    }

    private void b(WindowListener windowlistener)
    {
        e.remove(windowlistener);
    }

    static void b(ViewServer viewserver, WindowListener windowlistener)
    {
        viewserver.b(windowlistener);
    }

    private static boolean b(Socket socket, String s)
    {
        BufferedWriter bufferedwriter = null;
        BufferedWriter bufferedwriter1 = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()), 8192);
        bufferedwriter1.write(s);
        bufferedwriter1.write("\n");
        bufferedwriter1.flush();
        if (bufferedwriter1 != null)
        {
            try
            {
                bufferedwriter1.close();
            }
            catch (IOException ioexception2)
            {
                return false;
            }
        }
        return true;
        Exception exception3;
        exception3;
_L3:
        Exception exception;
        Exception exception1;
        Exception exception2;
        if (bufferedwriter != null)
        {
            try
            {
                bufferedwriter.close();
            }
            catch (IOException ioexception)
            {
                return false;
            }
            return false;
        } else
        {
            return false;
        }
        exception2;
        bufferedwriter1 = null;
        exception1 = exception2;
_L2:
        if (bufferedwriter1 != null)
        {
            try
            {
                bufferedwriter1.close();
            }
            catch (IOException ioexception1) { }
        }
        throw exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        bufferedwriter = bufferedwriter1;
          goto _L3
    }

    static HashMap c(ViewServer viewserver)
    {
        return viewserver.f;
    }

    static ReentrantReadWriteLock d(ViewServer viewserver)
    {
        return viewserver.i;
    }

    public void run()
    {
        Exception exception1;
        Socket socket;
        try
        {
            a = new ServerSocket(b, 10, InetAddress.getLocalHost());
        }
        catch (Exception exception)
        {
            Log.w("ViewServer", "Starting ServerSocket error: ", exception);
        }
_L2:
        if (a == null || Thread.currentThread() != c)
        {
            break; /* Loop/switch isn't completed */
        }
        socket = a.accept();
        if (d != null)
        {
            d.submit(new ViewServerWorker(socket));
            continue; /* Loop/switch isn't completed */
        }
        socket.close();
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        try
        {
            ioexception.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            Log.w("ViewServer", "Connection error: ", exception1);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }
}
