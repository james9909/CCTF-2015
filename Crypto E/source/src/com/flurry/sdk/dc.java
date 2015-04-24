// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.os.Build;
import com.flurry.android.FlurryAgent;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.nio.ByteBuffer;
import java.security.DigestOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            ed, dr, el, fb, 
//            dh

public class dc
{

    private static final String a = com/flurry/sdk/dc.getSimpleName();
    private byte b[];

    public dc(String s, String s1, boolean flag, boolean flag1, long l, long l1, List list, Map map, Map map1, Map map2, Map map3, long l2)
    {
        b = null;
        ed ed1;
        ByteArrayOutputStream bytearrayoutputstream;
        DigestOutputStream digestoutputstream;
        Object obj;
        ed1 = new ed();
        bytearrayoutputstream = new ByteArrayOutputStream();
        digestoutputstream = new DigestOutputStream(bytearrayoutputstream, ed1);
        obj = new DataOutputStream(digestoutputstream);
        ((DataOutputStream) (obj)).writeShort(29);
        ((DataOutputStream) (obj)).writeShort(0);
        ((DataOutputStream) (obj)).writeLong(0L);
        ((DataOutputStream) (obj)).writeShort(0);
        ((DataOutputStream) (obj)).writeShort(3);
        ((DataOutputStream) (obj)).writeShort(FlurryAgent.getAgentVersion());
        ((DataOutputStream) (obj)).writeLong(l2);
        ((DataOutputStream) (obj)).writeUTF(s);
        ((DataOutputStream) (obj)).writeUTF(s1);
        ((DataOutputStream) (obj)).writeShort(map.size());
        byte abyte2[];
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); ((DataOutputStream) (obj)).write(abyte2))
        {
            java.util.Map.Entry entry4 = (java.util.Map.Entry)iterator.next();
            ((DataOutputStream) (obj)).writeShort(((dr)entry4.getKey()).d);
            abyte2 = ((ByteBuffer)entry4.getValue()).array();
            ((DataOutputStream) (obj)).writeShort(abyte2.length);
        }

          goto _L1
        Throwable throwable;
        throwable;
        Object obj1 = obj;
_L23:
        el.a(6, a, "Error when generating report", throwable);
        byte abyte0[];
        fb.a(((java.io.Closeable) (obj1)));
        abyte0 = null;
_L21:
        b = abyte0;
        return;
_L1:
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeBoolean(flag);
        ((DataOutputStream) (obj)).writeBoolean(flag1);
        ((DataOutputStream) (obj)).writeLong(l);
        ((DataOutputStream) (obj)).writeLong(l1);
        ((DataOutputStream) (obj)).writeShort(6);
        ((DataOutputStream) (obj)).writeUTF("device.model");
        ((DataOutputStream) (obj)).writeUTF(Build.MODEL);
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeUTF("build.brand");
        ((DataOutputStream) (obj)).writeUTF(Build.BRAND);
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeUTF("build.id");
        ((DataOutputStream) (obj)).writeUTF(Build.ID);
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeUTF("version.release");
        ((DataOutputStream) (obj)).writeUTF(android.os.Build.VERSION.RELEASE);
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeUTF("build.device");
        ((DataOutputStream) (obj)).writeUTF(Build.DEVICE);
        ((DataOutputStream) (obj)).writeByte(0);
        ((DataOutputStream) (obj)).writeUTF("build.product");
        ((DataOutputStream) (obj)).writeUTF(Build.PRODUCT);
        ((DataOutputStream) (obj)).writeByte(0);
        if (map1 == null) goto _L3; else goto _L2
_L2:
        int i = map1.keySet().size();
_L6:
        ((DataOutputStream) (obj)).writeShort(i);
        if (map1 == null) goto _L5; else goto _L4
_L4:
        el.a(3, a, "sending referrer values because it exists");
        for (Iterator iterator1 = map1.entrySet().iterator(); iterator1.hasNext();)
        {
            java.util.Map.Entry entry3 = (java.util.Map.Entry)iterator1.next();
            el.a(3, a, (new StringBuilder()).append("Referrer Entry:  ").append((String)entry3.getKey()).append("=").append(entry3.getValue()).toString());
            ((DataOutputStream) (obj)).writeUTF((String)entry3.getKey());
            el.a(3, a, (new StringBuilder()).append("referrer key is :").append((String)entry3.getKey()).toString());
            ((DataOutputStream) (obj)).writeShort(((List)entry3.getValue()).size());
            Iterator iterator6 = ((List)entry3.getValue()).iterator();
            while (iterator6.hasNext()) 
            {
                String s5 = (String)iterator6.next();
                ((DataOutputStream) (obj)).writeUTF(s5);
                el.a(3, a, (new StringBuilder()).append("referrer value is :").append(s5).toString());
            }
        }

          goto _L5
        Exception exception;
        exception;
_L22:
        fb.a(((java.io.Closeable) (obj)));
        throw exception;
_L3:
        i = 0;
          goto _L6
_L5:
        ((DataOutputStream) (obj)).writeBoolean(false);
        if (map2 == null) goto _L8; else goto _L7
_L7:
        int j = map2.keySet().size();
_L24:
        el.a(3, a, (new StringBuilder()).append("optionsMapSize is:  ").append(j).toString());
        ((DataOutputStream) (obj)).writeShort(j);
        if (map2 == null)
        {
            break MISSING_BLOCK_LABEL_950;
        }
        el.a(3, a, "sending launch options");
        for (Iterator iterator2 = map2.entrySet().iterator(); iterator2.hasNext();)
        {
            java.util.Map.Entry entry2 = (java.util.Map.Entry)iterator2.next();
            el.a(3, a, (new StringBuilder()).append("Launch Options Key:  ").append((String)entry2.getKey()).toString());
            ((DataOutputStream) (obj)).writeUTF((String)entry2.getKey());
            ((DataOutputStream) (obj)).writeShort(((List)entry2.getValue()).size());
            Iterator iterator5 = ((List)entry2.getValue()).iterator();
            while (iterator5.hasNext()) 
            {
                String s4 = (String)iterator5.next();
                ((DataOutputStream) (obj)).writeUTF(s4);
                el.a(3, a, (new StringBuilder()).append("Launch Options value is :").append(s4).toString());
            }
        }

        if (map3 == null) goto _L10; else goto _L9
_L9:
        int k = map3.keySet().size();
_L25:
        el.a(3, a, (new StringBuilder()).append("numOriginAttributions is:  ").append(j).toString());
        ((DataOutputStream) (obj)).writeShort(k);
        if (map3 == null) goto _L12; else goto _L11
_L11:
        Iterator iterator3 = map3.entrySet().iterator();
_L15:
        if (!iterator3.hasNext()) goto _L12; else goto _L13
_L13:
        java.util.Map.Entry entry;
        Iterator iterator4;
        entry = (java.util.Map.Entry)iterator3.next();
        el.a(3, a, (new StringBuilder()).append("Origin Atttribute Key:  ").append((String)entry.getKey()).toString());
        ((DataOutputStream) (obj)).writeUTF((String)entry.getKey());
        ((DataOutputStream) (obj)).writeShort(((Map)entry.getValue()).size());
        el.a(3, a, (new StringBuilder()).append("Origin Attribute Map Size for ").append((String)entry.getKey()).append(":  ").append(((Map)entry.getValue()).size()).toString());
        iterator4 = ((Map)entry.getValue()).entrySet().iterator();
_L18:
        if (!iterator4.hasNext()) goto _L15; else goto _L14
_L14:
        java.util.Map.Entry entry1;
        entry1 = (java.util.Map.Entry)iterator4.next();
        el.a(3, a, (new StringBuilder()).append("Origin Atttribute for ").append((String)entry.getKey()).append(":  ").append((String)entry1.getKey()).append(":").append((String)entry1.getValue()).toString());
        if (entry1.getKey() == null) goto _L17; else goto _L16
_L16:
        String s2 = (String)entry1.getKey();
_L26:
        String s3;
        ((DataOutputStream) (obj)).writeUTF(s2);
        if (entry1.getValue() == null)
        {
            break MISSING_BLOCK_LABEL_1490;
        }
        s3 = (String)entry1.getValue();
_L27:
        ((DataOutputStream) (obj)).writeUTF(s3);
          goto _L18
_L12:
        int i1;
        i1 = list.size();
        ((DataOutputStream) (obj)).writeShort(i1);
        int j1 = 0;
_L20:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        ((DataOutputStream) (obj)).write(((dh)list.get(j1)).a());
        j1++;
        if (true) goto _L20; else goto _L19
_L19:
        byte abyte1[];
        ((DataOutputStream) (obj)).writeShort(0);
        digestoutputstream.on(false);
        ((DataOutputStream) (obj)).write(ed1.a());
        ((DataOutputStream) (obj)).close();
        abyte1 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte1;
        fb.a(((java.io.Closeable) (obj)));
          goto _L21
        exception;
        obj = null;
          goto _L22
        exception;
        obj = obj1;
          goto _L22
        throwable;
        obj1 = null;
          goto _L23
_L8:
        j = 0;
          goto _L24
_L10:
        k = 0;
          goto _L25
_L17:
        s2 = "";
          goto _L26
        s3 = "";
          goto _L27
    }

    public byte[] a()
    {
        return b;
    }

}
