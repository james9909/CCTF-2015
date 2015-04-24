// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewPropertyAnimator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.ApiHelper;

// Referenced classes of package com.snapchat.android.ui.here:
//            LocalPreview

public class HereTooltip extends RelativeLayout
{

    private final SharedPreferences a;
    private boolean b;
    private TextView c;

    public HereTooltip(Context context)
    {
        this(context, null);
    }

    public HereTooltip(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040055, this, true);
        c = (TextView)findViewById(0x7f0a00ea);
        a = PreferenceManager.getDefaultSharedPreferences(context);
        setAlpha(0.0F);
    }

    protected int a(ChatConversation chatconversation)
    {
        boolean flag = getWeSupportHere();
        boolean flag1 = chatconversation.D();
        if (!flag)
        {
            return 0x7f0c0138;
        }
        return flag1 ? 0x7f0c0106 : 0x7f0c0137;
    }

    public void a()
    {
        a(true);
    }

    public void a(ChatConversation chatconversation, boolean flag)
    {
        c.setText(a(chatconversation));
        boolean flag1;
        if (flag && b(chatconversation))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a(flag1);
    }

    protected void a(boolean flag)
    {
        if (flag == b)
        {
            return;
        }
        b = flag;
        ViewPropertyAnimator viewpropertyanimator = animate();
        float f;
        if (flag)
        {
            f = 1.0F;
        } else
        {
            f = 0.0F;
        }
        viewpropertyanimator.alpha(f);
        if (!flag);
        viewpropertyanimator.setDuration(1000L);
        if (flag)
        {
            viewpropertyanimator.setListener(new android.animation.Animator.AnimatorListener(viewpropertyanimator) {

                final ViewPropertyAnimator a;
                final HereTooltip b;

                public void onAnimationCancel(Animator animator)
                {
                }

                public void onAnimationEnd(Animator animator)
                {
                    a.setListener(null);
                    a.alpha(0.0F);
                    a.setDuration(1000L);
                    a.setStartDelay(3000L);
                    a.start();
                }

                public void onAnimationRepeat(Animator animator)
                {
                }

                public void onAnimationStart(Animator animator)
                {
                }

            
            {
                b = HereTooltip.this;
                a = viewpropertyanimator;
                super();
            }
            });
            c();
        }
        viewpropertyanimator.setStartDelay(0L);
        viewpropertyanimator.start();
    }

    public void b()
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt(SharedPreferenceKey.ah.a(), 3);
        editor.apply();
    }

    protected boolean b(ChatConversation chatconversation)
    {
        if (chatconversation.C())
        {
            boolean flag = getWeSupportHere();
            boolean flag1 = chatconversation.D();
            if (flag && flag1 && a.getInt(SharedPreferenceKey.ah.a(), 0) < 3)
            {
                return true;
            }
        }
        return false;
    }

    protected void c()
    {
        int i = a.getInt(SharedPreferenceKey.ah.a(), 0);
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putInt(SharedPreferenceKey.ah.a(), i + 1);
        editor.apply();
    }

    protected boolean getWeSupportHere()
    {
        return ApiHelper.b && LocalPreview.a();
    }
}
