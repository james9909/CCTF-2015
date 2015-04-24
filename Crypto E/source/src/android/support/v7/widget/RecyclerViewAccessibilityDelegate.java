// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat
{

    final RecyclerView a;
    final AccessibilityDelegateCompat b = new AccessibilityDelegateCompat() {

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

            
            {
                a = RecyclerViewAccessibilityDelegate.this;
                super();
            }
    };

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerview)
    {
        a = recyclerview;
    }

    AccessibilityDelegateCompat a()
    {
        return b;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v7/widget/RecyclerView.getName());
        if (view instanceof RecyclerView)
        {
            RecyclerView recyclerview = (RecyclerView)view;
            if (recyclerview.getLayoutManager() != null)
            {
                recyclerview.getLayoutManager().a(accessibilityevent);
            }
        }
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat);
        accessibilitynodeinfocompat.setClassName(android/support/v7/widget/RecyclerView.getName());
        if (a.getLayoutManager() != null)
        {
            a.getLayoutManager().a(accessibilitynodeinfocompat);
        }
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        if (super.performAccessibilityAction(view, i, bundle))
        {
            return true;
        }
        if (a.getLayoutManager() != null)
        {
            return a.getLayoutManager().a(i, bundle);
        } else
        {
            return false;
        }
    }
}
