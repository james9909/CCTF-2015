// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import android.widget.SeekBar;
import android.widget.TextView;
import com.facebook.rebound.OrigamiValueConverter;
import com.facebook.rebound.SpringConfig;
import java.text.DecimalFormat;

// Referenced classes of package com.facebook.rebound.ui:
//            SpringConfiguratorView

class <init>
    implements android.widget.Listener
{

    final SpringConfiguratorView a;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        if (seekbar == SpringConfiguratorView.c(a))
        {
            float f1 = 0.0F + (200F * (float)i) / 100000F;
            SpringConfiguratorView.b(a).b = OrigamiValueConverter.a(f1);
            String s1 = SpringConfiguratorView.b().format(f1);
            SpringConfiguratorView.d(a).setText((new StringBuilder()).append("T:").append(s1).toString());
        }
        if (seekbar == SpringConfiguratorView.e(a))
        {
            float f = 0.0F + (50F * (float)i) / 100000F;
            SpringConfiguratorView.b(a).a = OrigamiValueConverter.c(f);
            String s = SpringConfiguratorView.b().format(f);
            SpringConfiguratorView.f(a).setText((new StringBuilder()).append("F:").append(s).toString());
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    private (SpringConfiguratorView springconfiguratorview)
    {
        a = springconfiguratorview;
        super();
    }

    a(SpringConfiguratorView springconfiguratorview, a a1)
    {
        this(springconfiguratorview);
    }
}
