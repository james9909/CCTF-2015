// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.logging.Logger;

public class Version
{

    public static final String a;
    private static final Logger b;

    public Version()
    {
    }

    static 
    {
        LineNumberReader linenumberreader;
        b = Logger.getLogger(com/googlecode/mp4parser/Version.getName());
        linenumberreader = new LineNumberReader(new InputStreamReader(com/googlecode/mp4parser/Version.getResourceAsStream("/version.txt")));
        String s1 = linenumberreader.readLine();
        String s = s1;
_L2:
        a = s;
        return;
        IOException ioexception;
        ioexception;
        b.warning(ioexception.getMessage());
        s = "unknown";
        if (true) goto _L2; else goto _L1
_L1:
    }
}
