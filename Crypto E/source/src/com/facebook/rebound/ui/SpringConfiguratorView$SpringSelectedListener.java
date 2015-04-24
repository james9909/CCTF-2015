// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import android.view.View;
import android.widget.AdapterView;
import com.facebook.rebound.SpringConfig;
import java.util.List;

// Referenced classes of package com.facebook.rebound.ui:
//            SpringConfiguratorView

class <init>
    implements android.widget.Listener
{

    final SpringConfiguratorView a;

    public void onItemSelected(AdapterView adapterview, View view, int i, long l)
    {
        SpringConfiguratorView.a(a, (SpringConfig)SpringConfiguratorView.a(a).get(i));
        SpringConfiguratorView.b(a, SpringConfiguratorView.b(a));
    }

    public void onNothingSelected(AdapterView adapterview)
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
