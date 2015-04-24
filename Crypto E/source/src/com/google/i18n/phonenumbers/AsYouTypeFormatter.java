// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.regex.Pattern;

public class AsYouTypeFormatter
{

    private static final Phonemetadata.PhoneMetadata a = (new Phonemetadata.PhoneMetadata()).b("NA");
    private static final Pattern b = Pattern.compile("\\[([^\\[\\]])*\\]");
    private static final Pattern c = Pattern.compile("\\d(?=[^,}][^,}])");
    private static final Pattern d = Pattern.compile("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]*(\\$\\d[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]*)+");
    private static final Pattern e = Pattern.compile("[- ]");
    private static final Pattern f = Pattern.compile("\u2008");

}
