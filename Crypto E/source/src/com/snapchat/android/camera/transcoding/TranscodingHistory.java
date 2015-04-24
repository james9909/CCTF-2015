// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.transcoding;

import com.snapchat.android.model.UserPrefs;
import java.util.Arrays;

public class TranscodingHistory
{

    private final boolean a[] = a(UserPrefs.aG());

    TranscodingHistory()
    {
    }

    private boolean[] a(String s)
    {
        boolean aflag[] = new boolean[10];
        Arrays.fill(aflag, true);
        int i = 0;
        while (i < 10 && i < s.length()) 
        {
            boolean flag;
            if (s.charAt(i) == '1')
            {
                flag = true;
            } else
            {
                flag = false;
            }
            aflag[i] = flag;
            i++;
        }
        return aflag;
    }

    private void b()
    {
        UserPrefs.s(c());
    }

    private String c()
    {
        boolean aflag[] = a;
        int i = aflag.length;
        String s = "";
        int j = 0;
        while (j < i) 
        {
            boolean flag = aflag[j];
            StringBuilder stringbuilder = (new StringBuilder()).append(s);
            String s1;
            String s2;
            if (flag)
            {
                s1 = "1";
            } else
            {
                s1 = "0";
            }
            s2 = stringbuilder.append(s1).toString();
            j++;
            s = s2;
        }
        return s;
    }

    public int a()
    {
        int i = 0;
        for (int j = 0; j < 10; j++)
        {
            if (!a[j])
            {
                i++;
            }
        }

        return i;
    }

    public void a(boolean flag)
    {
        for (int i = 0; i < 9; i++)
        {
            a[i] = a[i + 1];
        }

        a[9] = flag;
        b();
    }
}
