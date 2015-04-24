// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import org.aspectj.runtime.reflect.Factory;

public class TrackLoadSettingsAtom extends AbstractBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    int a;
    int b;
    int c;
    int d;

    public TrackLoadSettingsAtom()
    {
        super("load");
    }

    private static void a()
    {
        Factory factory = new Factory("TrackLoadSettingsAtom.java", com/googlecode/mp4parser/boxes/apple/TrackLoadSettingsAtom);
        e = factory.a("method-execution", factory.a("1", "getPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 49);
        n = factory.a("method-execution", factory.a("1", "setPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadStartTime", "", "void"), 53);
        o = factory.a("method-execution", factory.a("1", "getPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 57);
        p = factory.a("method-execution", factory.a("1", "setPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadDuration", "", "void"), 61);
        q = factory.a("method-execution", factory.a("1", "getPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 65);
        r = factory.a("method-execution", factory.a("1", "setPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadFlags", "", "void"), 69);
        s = factory.a("method-execution", factory.a("1", "getDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 73);
        t = factory.a("method-execution", factory.a("1", "setDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "defaultHints", "", "void"), 77);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        a = bytebuffer.getInt();
        b = bytebuffer.getInt();
        c = bytebuffer.getInt();
        d = bytebuffer.getInt();
    }

    protected void b(ByteBuffer bytebuffer)
    {
        bytebuffer.putInt(a);
        bytebuffer.putInt(b);
        bytebuffer.putInt(c);
        bytebuffer.putInt(d);
    }

    protected long d()
    {
        return 16L;
    }

    static 
    {
        a();
    }
}
