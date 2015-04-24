// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionTypeEnums

public class CaptionAnalyticData
{

    private final String a = "";
    private final boolean b;
    private final boolean c;
    private final boolean d;

    public CaptionAnalyticData(CaptionTypeEnums captiontypeenums, boolean flag, boolean flag1, boolean flag2)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[CaptionTypeEnums.values().length];
                try
                {
                    a[CaptionTypeEnums.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[CaptionTypeEnums.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[CaptionTypeEnums.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls1.a[captiontypeenums.ordinal()];
        JVM INSTR tableswitch 1 3: default 40
    //                   1 63
    //                   2 72
    //                   3 81;
           goto _L1 _L2 _L3 _L4
_L1:
_L6:
        b = flag;
        c = flag1;
        d = flag2;
        return;
_L2:
        a = "DEFAULT";
        continue; /* Loop/switch isn't completed */
_L3:
        a = "BIG_TEXT";
        continue; /* Loop/switch isn't completed */
_L4:
        a = "BIG_TEXT_CENTER";
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Map a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("caption", a);
        String s;
        String s1;
        String s2;
        if (b)
        {
            s = "true";
        } else
        {
            s = "false";
        }
        hashmap.put("free_move_mode", s);
        if (c)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        hashmap.put("color_mode", s1);
        if (d)
        {
            s2 = "true";
        } else
        {
            s2 = "false";
        }
        hashmap.put("scale_edited", s2);
        return hashmap;
    }
}
