// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class SolveCaptchaTask extends RequestTask
{
    public static interface SolveCaptchaInterface
    {

        public abstract void b();

        public abstract void c();

        public abstract void d();
    }


    private static final String CAPTCHA_ID_PARAM = "captcha_id";
    private static final String CAPTCHA_SOLUTION_PARAM = "captcha_solution";
    private static final String TASK_NAME = "SolveCaptchaTask";
    private String mCaptchaId;
    private SolveCaptchaInterface mInterface;
    private List mSelectedCaptchas;

    public SolveCaptchaTask(String s, List list, SolveCaptchaInterface solvecaptchainterface)
    {
        if (s == null)
        {
            throw new NullPointerException();
        }
        if (list == null)
        {
            throw new NullPointerException();
        }
        if (list.size() != 9)
        {
            throw new IllegalArgumentException();
        } else
        {
            mCaptchaId = s;
            mSelectedCaptchas = list;
            mInterface = solvecaptchainterface;
            return;
        }
    }

    protected String a()
    {
        return "/bq/solve_captcha";
    }

    public void a(String s, int i)
    {
label0:
        {
            super.a(s, i);
            if (mInterface != null)
            {
                if (!s.equals(Integer.toString(403)))
                {
                    break label0;
                }
                mInterface.c();
            }
            return;
        }
        mInterface.d();
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        String s = UserPrefs.k();
        if (s == null)
        {
            s = UserPrefs.v();
        }
        bundle.putString("username", s);
        bundle.putString("captcha_id", mCaptchaId);
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = mSelectedCaptchas.iterator();
        while (iterator.hasNext()) 
        {
            String s1;
            if (((Boolean)iterator.next()).booleanValue())
            {
                s1 = "1";
            } else
            {
                s1 = "0";
            }
            stringbuilder.append(s1);
        }
        bundle.putString("captcha_solution", stringbuilder.toString());
        return bundle;
    }

    public void b(ServerResponse serverresponse)
    {
        super.b(serverresponse);
        if (mInterface != null)
        {
            mInterface.b();
        }
    }

    protected String c()
    {
        return "SolveCaptchaTask";
    }
}
