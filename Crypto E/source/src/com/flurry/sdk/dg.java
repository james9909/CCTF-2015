// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.os.Looper;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.flurry.sdk:
//            el, do, fa, fb, 
//            df

public class dg
{

    static final Integer a = Integer.valueOf(50);
    private static final String d = com/flurry/sdk/dg.getSimpleName();
    String b;
    LinkedHashMap c;

    public dg(String s)
    {
        a(s);
    }

    private boolean a(File file)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = false;
        if (file == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = file.exists();
        flag = false;
        if (!flag1) goto _L2; else goto _L3
_L3:
        el.a(4, d, (new StringBuilder()).append("Trying to delete persistence file : ").append(file.getAbsolutePath()).toString());
        flag = file.delete();
        if (!flag) goto _L5; else goto _L4
_L4:
        el.a(4, d, "Deleted persistence file");
_L2:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        el.a(6, d, "Cannot delete persistence file");
        if (true) goto _L2; else goto _L6
_L6:
        Exception exception;
        exception;
        throw exception;
    }

    private boolean a(String s, List list)
    {
        boolean flag = false;
        this;
        JVM INSTR monitorenter ;
        File file;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            el.a(6, d, "saveToFile(byte[], ID) running on the MAIN thread!");
        }
        file = com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        boolean flag2 = fa.a(file);
        if (flag2) goto _L2; else goto _L1
_L1:
        fb.a(null);
_L6:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        DataOutputStream dataoutputstream = new DataOutputStream(new FileOutputStream(file));
        dataoutputstream.writeShort(list.size());
        int i = 0;
_L4:
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        byte abyte0[] = ((String)list.get(i)).getBytes();
        int j = abyte0.length;
        el.a(4, d, (new StringBuilder()).append("write iter ").append(i).append(" dataLength = ").append(j).toString());
        dataoutputstream.writeShort(j);
        dataoutputstream.write(abyte0);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        dataoutputstream.writeShort(0);
        boolean flag1 = true;
        fb.a(dataoutputstream);
_L7:
        flag = flag1;
        if (true) goto _L6; else goto _L5
_L5:
        Throwable throwable;
        throwable;
        dataoutputstream = null;
_L9:
        el.a(6, d, "", throwable);
        fb.a(dataoutputstream);
        flag1 = false;
          goto _L7
_L8:
        Exception exception1;
        fb.a(dataoutputstream);
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
          goto _L8
        throwable;
          goto _L9
        exception1;
        dataoutputstream = null;
          goto _L8
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        LinkedList linkedlist = new LinkedList(c.keySet());
        b();
        if (!linkedlist.isEmpty())
        {
            a(b, linkedlist);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private List e(String s)
    {
        Object obj = null;
        this;
        JVM INSTR monitorenter ;
        File file;
        boolean flag;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            el.a(6, d, "readFromFile(byte[], ID) running on the MAIN thread!");
        }
        file = com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        flag = file.exists();
        if (!flag) goto _L2; else goto _L1
_L1:
        DataInputStream datainputstream = new DataInputStream(new FileInputStream(file));
        int i = datainputstream.readUnsignedShort();
        if (i != 0) goto _L4; else goto _L3
_L3:
        fb.a(datainputstream);
_L8:
        this;
        JVM INSTR monitorexit ;
        return ((List) (obj));
_L4:
        ArrayList arraylist = new ArrayList(i);
        int j = 0;
_L6:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        int l = datainputstream.readUnsignedShort();
        el.a(4, d, (new StringBuilder()).append("read iter ").append(j).append(" dataLength = ").append(l).toString());
        byte abyte0[] = new byte[l];
        datainputstream.readFully(abyte0);
        arraylist.add(new String(abyte0));
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        int k = datainputstream.readUnsignedShort();
        if (k != 0);
        fb.a(datainputstream);
_L9:
        obj = arraylist;
        if (true) goto _L8; else goto _L7
_L7:
        Throwable throwable2;
        throwable2;
        Throwable throwable1;
        datainputstream = null;
        arraylist = null;
        throwable1 = throwable2;
_L11:
        el.a(6, d, "Error when loading persistent file", throwable1);
        fb.a(datainputstream);
          goto _L9
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        datainputstream = null;
_L10:
        fb.a(datainputstream);
        throw exception1;
_L2:
        el.a(5, d, "Agent cache file doesn't exist.");
        arraylist = null;
          goto _L9
        exception1;
          goto _L10
        Throwable throwable;
        throwable;
        throwable1 = throwable;
        arraylist = null;
          goto _L11
        throwable1;
          goto _L11
    }

    public List a()
    {
        return new ArrayList(c.keySet());
    }

    public void a(df df1, String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1;
        List list;
        el.a(4, d, "addBlockInfo");
        s1 = df1.a();
        list = (List)c.get(s);
        if (list != null) goto _L2; else goto _L1
_L1:
        Object obj;
        el.a(4, d, "New Data Key");
        obj = new LinkedList();
        boolean flag = true;
_L4:
        ((List) (obj)).add(s1);
        if (((List) (obj)).size() > a.intValue())
        {
            b((String)((List) (obj)).get(0));
            ((List) (obj)).remove(0);
        }
        c.put(s, obj);
        a(s, ((List) (obj)));
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        c();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
_L2:
        obj = list;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    void a(String s)
    {
        c = new LinkedHashMap();
        b = (new StringBuilder()).append(s).append("Main").toString();
        List list = e(b);
        if (list != null)
        {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                List list1 = e(s1);
                if (list1 != null)
                {
                    c.put(s1, list1);
                }
            }
        }
    }

    public boolean a(String s, String s1)
    {
        List list = (List)c.get(s1);
        boolean flag = false;
        if (list != null)
        {
            b(s);
            flag = list.remove(s);
        }
        if (list != null && !list.isEmpty())
        {
            c.put(s1, list);
            a(s1, list);
            return flag;
        } else
        {
            d(s1);
            return flag;
        }
    }

    void b()
    {
        a(com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(b).toString()));
    }

    boolean b(String s)
    {
        return (new df(s)).c();
    }

    public List c(String s)
    {
        return (List)c.get(s);
    }

    public boolean d(String s)
    {
        this;
        JVM INSTR monitorenter ;
        File file;
        List list;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            el.a(6, d, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!");
        }
        file = com.flurry.sdk.do.a().b().getFileStreamPath((new StringBuilder()).append(".FlurrySenderIndex.info.").append(s).toString());
        list = c(s);
        if (list == null) goto _L2; else goto _L1
_L1:
        el.a(4, d, (new StringBuilder()).append("discardOutdatedBlocksForDataKey: notSentBlocks = ").append(list.size()).toString());
        int i = 0;
_L3:
        if (i >= list.size())
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = (String)list.get(i);
        b(s1);
        el.a(4, d, (new StringBuilder()).append("discardOutdatedBlocksForDataKey: removed block = ").append(s1).toString());
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        boolean flag;
        c.remove(s);
        flag = a(file);
        c();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

}
