// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.Button;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class d extends AccessibilityNodeProvider
{

    final NumberPicker a;
    private final Rect b = new Rect();
    private final int c[] = new int[2];
    private int d;

    private AccessibilityNodeInfo a()
    {
        AccessibilityNodeInfo accessibilitynodeinfo = NumberPicker.b(a).createAccessibilityNodeInfo();
        accessibilitynodeinfo.setSource(a, 2);
        if (d != 2)
        {
            accessibilitynodeinfo.addAction(64);
        }
        if (d == 2)
        {
            accessibilitynodeinfo.addAction(128);
        }
        return accessibilitynodeinfo;
    }

    private AccessibilityNodeInfo a(int i, int j, int k, int l)
    {
        AccessibilityNodeInfo accessibilitynodeinfo = AccessibilityNodeInfo.obtain();
        accessibilitynodeinfo.setClassName(net/simonvt/numberpicker/NumberPicker.getName());
        accessibilitynodeinfo.setPackageName(a.getContext().getPackageName());
        accessibilitynodeinfo.setSource(a);
        if (b())
        {
            accessibilitynodeinfo.addChild(a, 3);
        }
        accessibilitynodeinfo.addChild(a, 2);
        if (c())
        {
            accessibilitynodeinfo.addChild(a, 1);
        }
        accessibilitynodeinfo.setParent((View)a.getParentForAccessibility());
        accessibilitynodeinfo.setEnabled(a.isEnabled());
        accessibilitynodeinfo.setScrollable(true);
        if (d != -1)
        {
            accessibilitynodeinfo.addAction(64);
        }
        if (d == -1)
        {
            accessibilitynodeinfo.addAction(128);
        }
        if (a.isEnabled())
        {
            if (a.getWrapSelectorWheel() || a.getValue() < a.getMaxValue())
            {
                accessibilitynodeinfo.addAction(4096);
            }
            if (a.getWrapSelectorWheel() || a.getValue() > a.getMinValue())
            {
                accessibilitynodeinfo.addAction(8192);
            }
        }
        return accessibilitynodeinfo;
    }

    private AccessibilityNodeInfo a(int i, String s, int j, int k, int l, int i1)
    {
        AccessibilityNodeInfo accessibilitynodeinfo = AccessibilityNodeInfo.obtain();
        accessibilitynodeinfo.setClassName(android/widget/Button.getName());
        accessibilitynodeinfo.setPackageName(a.getContext().getPackageName());
        accessibilitynodeinfo.setSource(a, i);
        accessibilitynodeinfo.setParent(a);
        accessibilitynodeinfo.setText(s);
        accessibilitynodeinfo.setClickable(true);
        accessibilitynodeinfo.setLongClickable(true);
        accessibilitynodeinfo.setEnabled(a.isEnabled());
        Rect rect = b;
        rect.set(j, k, l, i1);
        accessibilitynodeinfo.setBoundsInParent(rect);
        int ai[] = c;
        a.getLocationOnScreen(ai);
        rect.offset(ai[0], ai[1]);
        accessibilitynodeinfo.setBoundsInScreen(rect);
        if (d != i)
        {
            accessibilitynodeinfo.addAction(64);
        }
        if (d == i)
        {
            accessibilitynodeinfo.addAction(128);
        }
        if (a.isEnabled())
        {
            accessibilitynodeinfo.addAction(16);
        }
        return accessibilitynodeinfo;
    }

    private void a(int i)
    {
        if (((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled())
        {
            AccessibilityEvent accessibilityevent = AccessibilityEvent.obtain(i);
            NumberPicker.b(a).onInitializeAccessibilityEvent(accessibilityevent);
            NumberPicker.b(a).onPopulateAccessibilityEvent(accessibilityevent);
            accessibilityevent.setSource(a, 2);
            a.requestSendAccessibilityEvent(a, accessibilityevent);
        }
    }

    private void a(int i, int j, String s)
    {
        if (((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled())
        {
            AccessibilityEvent accessibilityevent = AccessibilityEvent.obtain(j);
            accessibilityevent.setClassName(android/widget/Button.getName());
            accessibilityevent.setPackageName(a.getContext().getPackageName());
            accessibilityevent.getText().add(s);
            accessibilityevent.setEnabled(a.isEnabled());
            accessibilityevent.setSource(a, i);
            a.requestSendAccessibilityEvent(a, accessibilityevent);
        }
    }

    private void a(String s, int i, List list)
    {
        i;
        JVM INSTR tableswitch 1 3: default 28
    //                   1 171
    //                   2 71
    //                   3 29;
           goto _L1 _L2 _L3 _L4
_L1:
        String s2;
        return;
_L4:
        if (!TextUtils.isEmpty(s2 = d()) && s2.toString().toLowerCase().contains(s))
        {
            list.add(createAccessibilityNodeInfo(3));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        String s1;
        android.text.Editable editable = NumberPicker.b(a).getText();
        if (!TextUtils.isEmpty(editable) && editable.toString().toLowerCase().contains(s))
        {
            list.add(createAccessibilityNodeInfo(2));
            return;
        }
        android.text.Editable editable1 = NumberPicker.b(a).getText();
        if (!TextUtils.isEmpty(editable1) && editable1.toString().toLowerCase().contains(s))
        {
            list.add(createAccessibilityNodeInfo(2));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!TextUtils.isEmpty(s1 = e()) && s1.toString().toLowerCase().contains(s))
        {
            list.add(createAccessibilityNodeInfo(1));
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    private boolean b()
    {
        return a.getWrapSelectorWheel() || a.getValue() > a.getMinValue();
    }

    private boolean c()
    {
        return a.getWrapSelectorWheel() || a.getValue() < a.getMaxValue();
    }

    private String d()
    {
        int i = -1 + NumberPicker.l(a);
        if (NumberPicker.m(a))
        {
            i = NumberPicker.c(a, i);
        }
        if (i >= NumberPicker.n(a))
        {
            if (NumberPicker.c(a) == null)
            {
                return NumberPicker.d(a, i);
            } else
            {
                return NumberPicker.c(a)[i - NumberPicker.n(a)];
            }
        } else
        {
            return null;
        }
    }

    private String e()
    {
        int i = 1 + NumberPicker.l(a);
        if (NumberPicker.m(a))
        {
            i = NumberPicker.c(a, i);
        }
        if (i <= NumberPicker.d(a))
        {
            if (NumberPicker.c(a) == null)
            {
                return NumberPicker.d(a, i);
            } else
            {
                return NumberPicker.c(a)[i - NumberPicker.n(a)];
            }
        } else
        {
            return null;
        }
    }

    public void a(int i, int j)
    {
        i;
        JVM INSTR tableswitch 1 3: default 28
    //                   1 53
    //                   2 47
    //                   3 29;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L4:
        if (b())
        {
            a(i, j, d());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        a(j);
        return;
_L2:
        if (c())
        {
            a(i, j, e());
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfo(int i)
    {
        switch (i)
        {
        case 0: // '\0'
        default:
            return super.createAccessibilityNodeInfo(i);

        case -1: 
            return a(a.getScrollX(), a.getScrollY(), a.getScrollX() + (a.getRight() - a.getLeft()), a.getScrollY() + (a.getBottom() - a.getTop()));

        case 3: // '\003'
            return a(3, d(), a.getScrollX(), a.getScrollY(), a.getScrollX() + (a.getRight() - a.getLeft()), NumberPicker.h(a) + NumberPicker.k(a));

        case 2: // '\002'
            return a();

        case 1: // '\001'
            return a(1, e(), a.getScrollX(), NumberPicker.f(a) - NumberPicker.k(a), a.getScrollX() + (a.getRight() - a.getLeft()), a.getScrollY() + (a.getBottom() - a.getTop()));
        }
    }

    public List findAccessibilityNodeInfosByText(String s, int i)
    {
        if (TextUtils.isEmpty(s))
        {
            return Collections.emptyList();
        }
        String s1 = s.toLowerCase();
        ArrayList arraylist = new ArrayList();
        switch (i)
        {
        case 0: // '\0'
        default:
            return super.findAccessibilityNodeInfosByText(s, i);

        case -1: 
            a(s1, 3, arraylist);
            a(s1, 2, arraylist);
            a(s1, 1, arraylist);
            return arraylist;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            a(s1, i, arraylist);
            break;
        }
        return arraylist;
    }

    public boolean performAction(int i, int j, Bundle bundle)
    {
        i;
        JVM INSTR tableswitch -1 3: default 36
    //                   -1 48
    //                   0 36
    //                   1 561
    //                   2 293
    //                   3 750;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        boolean flag = super.performAction(i, j, bundle);
_L10:
        return flag;
_L2:
        j;
        JVM INSTR lookupswitch 4: default 92
    //                   64: 95
    //                   128: 128
    //                   4096: 163
    //                   8192: 228;
           goto _L1 _L6 _L7 _L8 _L9
_L6:
        int j3 = d;
        flag = false;
        if (j3 != i)
        {
            d = i;
            a.performAccessibilityAction(64, null);
            return true;
        }
          goto _L10
_L7:
        int i3 = d;
        flag = false;
        if (i3 == i)
        {
            d = 0x80000000;
            a.performAccessibilityAction(128, null);
            return true;
        }
          goto _L10
_L8:
        boolean flag10;
        flag10 = a.isEnabled();
        flag = false;
        if (!flag10) goto _L10; else goto _L11
_L11:
        int k2;
        int l2;
        if (a.getWrapSelectorWheel())
        {
            break; /* Loop/switch isn't completed */
        }
        k2 = a.getValue();
        l2 = a.getMaxValue();
        flag = false;
        if (k2 >= l2) goto _L10; else goto _L12
_L12:
        NumberPicker.a(a, true);
        return true;
_L9:
        boolean flag9;
        flag9 = a.isEnabled();
        flag = false;
        if (!flag9) goto _L10; else goto _L13
_L13:
        int i2;
        int j2;
        if (a.getWrapSelectorWheel())
        {
            break; /* Loop/switch isn't completed */
        }
        i2 = a.getValue();
        j2 = a.getMinValue();
        flag = false;
        if (i2 <= j2) goto _L10; else goto _L14
_L14:
        NumberPicker.a(a, false);
        return true;
_L4:
        switch (j)
        {
        default:
            return NumberPicker.b(a).performAccessibilityAction(j, bundle);

        case 1: // '\001'
            boolean flag7 = a.isEnabled();
            flag = false;
            if (flag7)
            {
                boolean flag8 = NumberPicker.b(a).isFocused();
                flag = false;
                if (!flag8)
                {
                    return NumberPicker.b(a).requestFocus();
                }
            }
            break;

        case 2: // '\002'
            boolean flag5 = a.isEnabled();
            flag = false;
            if (flag5)
            {
                boolean flag6 = NumberPicker.b(a).isFocused();
                flag = false;
                if (flag6)
                {
                    NumberPicker.b(a).clearFocus();
                    return true;
                }
            }
            break;

        case 16: // '\020'
            boolean flag4 = a.isEnabled();
            flag = false;
            if (flag4)
            {
                NumberPicker.j(a);
                return true;
            }
            break;

        case 64: // '@'
            int l1 = d;
            flag = false;
            if (l1 != i)
            {
                d = i;
                a(i, 32768);
                NumberPicker.b(a).invalidate();
                return true;
            }
            break;

        case 128: 
            int k1 = d;
            flag = false;
            if (k1 == i)
            {
                d = 0x80000000;
                a(i, 0x10000);
                NumberPicker.b(a).invalidate();
                return true;
            }
            break;
        }
        if (true) goto _L10; else goto _L15
_L15:
_L3:
        switch (j)
        {
        default:
            return false;

        case 16: // '\020'
            boolean flag3 = a.isEnabled();
            flag = false;
            if (flag3)
            {
                NumberPicker.a(a, true);
                a(i, 1);
                return true;
            }
            break;

        case 64: // '@'
            int j1 = d;
            flag = false;
            if (j1 != i)
            {
                d = i;
                a(i, 32768);
                a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                return true;
            }
            break;

        case 128: 
            int i1 = d;
            flag = false;
            if (i1 == i)
            {
                d = 0x80000000;
                a(i, 0x10000);
                a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                return true;
            }
            break;
        }
        if (true) goto _L10; else goto _L16
_L16:
_L5:
        switch (j)
        {
        default:
            return false;

        case 16: // '\020'
            boolean flag1 = a.isEnabled();
            flag = false;
            if (flag1)
            {
                boolean flag2 = false;
                if (i == 1)
                {
                    flag2 = true;
                }
                NumberPicker.a(a, flag2);
                a(i, 1);
                return true;
            }
            break;

        case 64: // '@'
            int l = d;
            flag = false;
            if (l != i)
            {
                d = i;
                a(i, 32768);
                a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
                return true;
            }
            break;

        case 128: 
            int k = d;
            flag = false;
            if (k == i)
            {
                d = 0x80000000;
                a(i, 0x10000);
                a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
                return true;
            }
            break;
        }
        if (true) goto _L10; else goto _L17
_L17:
    }

    I(NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
        d = 0x80000000;
    }
}
