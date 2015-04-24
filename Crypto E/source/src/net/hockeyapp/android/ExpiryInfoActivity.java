// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import net.hockeyapp.android.views.ExpiryInfoView;

// Referenced classes of package net.hockeyapp.android:
//            UpdateManager, Strings

public class ExpiryInfoActivity extends Activity
{

    public ExpiryInfoActivity()
    {
    }

    protected View a()
    {
        return new ExpiryInfoView(this, a(14));
    }

    protected String a(int i)
    {
        return Strings.a(UpdateManager.b(), i);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(a(13));
        setContentView(a());
    }
}
