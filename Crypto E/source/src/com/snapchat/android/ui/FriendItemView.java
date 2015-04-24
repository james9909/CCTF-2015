// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class FriendItemView extends RelativeLayout
{

    public FriendItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040063, this, true);
        if (isInEditMode())
        {
            ((TextView)findViewById(0x7f0a004c)).setText("Daniel Smith");
            ((TextView)findViewById(0x7f0a004d)).setText("danoz");
            findViewById(0x7f0a0009).setVisibility(0);
        }
    }
}
