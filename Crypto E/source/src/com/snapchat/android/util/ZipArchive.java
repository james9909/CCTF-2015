// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipArchive
{

    ByteArrayOutputStream a;
    private ZipOutputStream b;
    private byte c[];

    public ZipArchive()
    {
        a = new ByteArrayOutputStream();
        b = new ZipOutputStream(new BufferedOutputStream(a));
        c = new byte[2048];
    }

    public void a()
    {
        b.close();
    }

    public void a(String s, String s1)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(s1), 2048);
        ZipEntry zipentry = new ZipEntry(s);
        b.putNextEntry(zipentry);
        do
        {
            int i = bufferedinputstream.read(c, 0, 2048);
            if (i != -1)
            {
                b.write(c, 0, i);
            } else
            {
                bufferedinputstream.close();
                b.closeEntry();
                return;
            }
        } while (true);
    }

    public byte[] b()
    {
        return a.toByteArray();
    }
}
