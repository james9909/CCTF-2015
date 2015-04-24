// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.system.Clock;

// Referenced classes of package com.snapchat.android.ui:
//            VerticalSwipeLayout

public class UpgradePromptView extends VerticalSwipeLayout
{

    private final Clock a;
    private final UserPrefs b;
    private boolean c;

    public UpgradePromptView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, new Clock(), UserPrefs.a());
    }

    UpgradePromptView(Context context, AttributeSet attributeset, Clock clock, UserPrefs userprefs)
    {
        super(context, attributeset);
        c = false;
        a(1, 0.0D);
        setOnScrolledListener(new VerticalSwipeLayout.OnScrolledListener() {

            final UpgradePromptView a;

            public void a(int i, int j, int k)
            {
            }

            public void c(int i)
            {
                switch (i)
                {
                default:
                    return;

                case 0: // '\0'
                    UpgradePromptView.a(a, true);
                    return;

                case 1: // '\001'
                    break;
                }
                if (UpgradePromptView.a(a))
                {
                    UpgradePromptView.b(a);
                }
                a.setVisibility(8);
            }

            
            {
                a = UpgradePromptView.this;
                super();
            }
        });
        a = clock;
        b = userprefs;
    }

    static boolean a(UpgradePromptView upgradepromptview)
    {
        return upgradepromptview.c;
    }

    static boolean a(UpgradePromptView upgradepromptview, boolean flag)
    {
        upgradepromptview.c = flag;
        return flag;
    }

    static void b(UpgradePromptView upgradepromptview)
    {
        upgradepromptview.e();
    }

    private void e()
    {
        b.d(a.a());
        Timber.c("UpgradePromptView", (new StringBuilder()).append("onPanelSelected - setSuggestionPromptLastDismissedTimestamp ").append(b.aC()).toString(), new Object[0]);
    }

    public void a()
    {
        Timber.c("UpgradePromptView", "showPrompt()", new Object[0]);
        post(new Runnable() {

            final UpgradePromptView a;

            public void run()
            {
                a.setVisibility(0);
                a.post(new Runnable(this) {

                    final _cls2 a;

                    public void run()
                    {
                        a.a.a(0, 1.5D);
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            
            {
                a = UpgradePromptView.this;
                super();
            }
        });
    }

    public void b()
    {
        c = false;
        a(1);
    }
}
