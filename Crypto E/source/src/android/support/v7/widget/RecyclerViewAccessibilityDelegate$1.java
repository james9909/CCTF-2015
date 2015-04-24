// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            RecyclerViewAccessibilityDelegate, RecyclerView

class a extends AccessibilityDelegateCompat
{

    final RecyclerViewAccessibilityDelegate a;

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat);
        if (a.a.getLayoutManager() != null)
        {
            a.a.getLayoutManager().a(view, accessibilitynodeinfocompat);
        }
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        if (super.performAccessibilityAction(view, i, bundle))
        {
            return true;
        }
        if (a.a.getLayoutManager() != null)
        {
            return a.a.getLayoutManager().a(view, i, bundle);
        } else
        {
            return false;
        }
    }

    pat(RecyclerViewAccessibilityDelegate recyclerviewaccessibilitydelegate)
    {
        a = recyclerviewaccessibilitydelegate;
        super();
    }
}
