// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.Html;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.TypefaceSpan;
import android.widget.TextView;
import com.snapchat.android.util.chat.EmojiDetector;
import java.io.UnsupportedEncodingException;

public class EmojiUtils
{

    public static byte a[] = {
        -16, -97, -104, -98
    };
    public static byte b[] = {
        -16, -97, -104, -113
    };
    public static byte c[] = {
        -16, -97, -103, -120
    };
    public static byte d[] = {
        -16, -97, -103, -117
    };
    public static int e = 9786;
    public static byte f[] = {
        -16, -97, -104, -127
    };
    public static byte g[] = {
        -30, -100, -116
    };

    public EmojiUtils()
    {
    }

    public static CharSequence a(byte abyte0[])
    {
        android.text.Spanned spanned;
        try
        {
            spanned = Html.fromHtml(new String(abyte0, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            unsupportedencodingexception.printStackTrace();
            return "";
        }
        return spanned;
    }

    public static void a(TextView textview, String s)
    {
        if (EmojiDetector.a())
        {
            CharSequence charsequence = textview.getText();
            if (!TextUtils.isEmpty(charsequence) && (charsequence instanceof Spannable))
            {
                String s1 = charsequence.toString();
                Spannable spannable = (Spannable)charsequence;
                for (int i = 0; i < s1.length(); i++)
                {
                    if (s1.codePointAt(i) == e)
                    {
                        spannable.setSpan(new TypefaceSpan(s), i, i + 1, 0);
                    }
                }

                textview.setText(spannable);
            }
        }
    }

}
