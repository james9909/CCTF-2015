// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.snapchat.android.ui:
//            ColorPickerView

class d extends Animation
{

    final ColorPickerView a;
    private final int b;
    private final int c;
    private final View d;

    protected void applyTransformation(float f, Transformation transformation)
    {
        android.view.dAnimation danimation = d.getLayoutParams();
        if (danimation == null)
        {
            return;
        } else
        {
            danimation.d = (int)((float)b + f * (float)c);
            d.setLayoutParams(danimation);
            return;
        }
    }

    public boolean willChangeBounds()
    {
        return true;
    }

    public (ColorPickerView colorpickerview, int i, int j, View view)
    {
        a = colorpickerview;
        super();
        b = i;
        c = j - i;
        d = view;
    }
}
