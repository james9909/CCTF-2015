// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

// Referenced classes of package net.simonvt.numberpicker:
//            Scroller

public class NumberPicker extends LinearLayout
{
    class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider
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

        private AccessibilityNodeInfo a(int i1, int j1, int k1, int l1)
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

        private AccessibilityNodeInfo a(int i1, String s1, int j1, int k1, int l1, int i2)
        {
            AccessibilityNodeInfo accessibilitynodeinfo = AccessibilityNodeInfo.obtain();
            accessibilitynodeinfo.setClassName(android/widget/Button.getName());
            accessibilitynodeinfo.setPackageName(a.getContext().getPackageName());
            accessibilitynodeinfo.setSource(a, i1);
            accessibilitynodeinfo.setParent(a);
            accessibilitynodeinfo.setText(s1);
            accessibilitynodeinfo.setClickable(true);
            accessibilitynodeinfo.setLongClickable(true);
            accessibilitynodeinfo.setEnabled(a.isEnabled());
            Rect rect = b;
            rect.set(j1, k1, l1, i2);
            accessibilitynodeinfo.setBoundsInParent(rect);
            int ai[] = c;
            a.getLocationOnScreen(ai);
            rect.offset(ai[0], ai[1]);
            accessibilitynodeinfo.setBoundsInScreen(rect);
            if (d != i1)
            {
                accessibilitynodeinfo.addAction(64);
            }
            if (d == i1)
            {
                accessibilitynodeinfo.addAction(128);
            }
            if (a.isEnabled())
            {
                accessibilitynodeinfo.addAction(16);
            }
            return accessibilitynodeinfo;
        }

        private void a(int i1)
        {
            if (((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled())
            {
                AccessibilityEvent accessibilityevent = AccessibilityEvent.obtain(i1);
                NumberPicker.b(a).onInitializeAccessibilityEvent(accessibilityevent);
                NumberPicker.b(a).onPopulateAccessibilityEvent(accessibilityevent);
                accessibilityevent.setSource(a, 2);
                a.requestSendAccessibilityEvent(a, accessibilityevent);
            }
        }

        private void a(int i1, int j1, String s1)
        {
            if (((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled())
            {
                AccessibilityEvent accessibilityevent = AccessibilityEvent.obtain(j1);
                accessibilityevent.setClassName(android/widget/Button.getName());
                accessibilityevent.setPackageName(a.getContext().getPackageName());
                accessibilityevent.getText().add(s1);
                accessibilityevent.setEnabled(a.isEnabled());
                accessibilityevent.setSource(a, i1);
                a.requestSendAccessibilityEvent(a, accessibilityevent);
            }
        }

        private void a(String s1, int i1, List list)
        {
            i1;
            JVM INSTR tableswitch 1 3: default 28
        //                       1 171
        //                       2 71
        //                       3 29;
               goto _L1 _L2 _L3 _L4
_L1:
            String s3;
            return;
_L4:
            if (!TextUtils.isEmpty(s3 = d()) && s3.toString().toLowerCase().contains(s1))
            {
                list.add(createAccessibilityNodeInfo(3));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L3:
            String s2;
            android.text.Editable editable = NumberPicker.b(a).getText();
            if (!TextUtils.isEmpty(editable) && editable.toString().toLowerCase().contains(s1))
            {
                list.add(createAccessibilityNodeInfo(2));
                return;
            }
            android.text.Editable editable1 = NumberPicker.b(a).getText();
            if (!TextUtils.isEmpty(editable1) && editable1.toString().toLowerCase().contains(s1))
            {
                list.add(createAccessibilityNodeInfo(2));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (!TextUtils.isEmpty(s2 = e()) && s2.toString().toLowerCase().contains(s1))
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
            int i1 = -1 + NumberPicker.l(a);
            if (NumberPicker.m(a))
            {
                i1 = NumberPicker.c(a, i1);
            }
            if (i1 >= NumberPicker.n(a))
            {
                if (NumberPicker.c(a) == null)
                {
                    return NumberPicker.d(a, i1);
                } else
                {
                    return NumberPicker.c(a)[i1 - NumberPicker.n(a)];
                }
            } else
            {
                return null;
            }
        }

        private String e()
        {
            int i1 = 1 + NumberPicker.l(a);
            if (NumberPicker.m(a))
            {
                i1 = NumberPicker.c(a, i1);
            }
            if (i1 <= NumberPicker.d(a))
            {
                if (NumberPicker.c(a) == null)
                {
                    return NumberPicker.d(a, i1);
                } else
                {
                    return NumberPicker.c(a)[i1 - NumberPicker.n(a)];
                }
            } else
            {
                return null;
            }
        }

        public void a(int i1, int j1)
        {
            i1;
            JVM INSTR tableswitch 1 3: default 28
        //                       1 53
        //                       2 47
        //                       3 29;
               goto _L1 _L2 _L3 _L4
_L1:
            return;
_L4:
            if (b())
            {
                a(i1, j1, d());
                return;
            }
            continue; /* Loop/switch isn't completed */
_L3:
            a(j1);
            return;
_L2:
            if (c())
            {
                a(i1, j1, e());
                return;
            }
            if (true) goto _L1; else goto _L5
_L5:
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i1)
        {
            switch (i1)
            {
            case 0: // '\0'
            default:
                return super.createAccessibilityNodeInfo(i1);

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

        public List findAccessibilityNodeInfosByText(String s1, int i1)
        {
            if (TextUtils.isEmpty(s1))
            {
                return Collections.emptyList();
            }
            String s2 = s1.toLowerCase();
            ArrayList arraylist = new ArrayList();
            switch (i1)
            {
            case 0: // '\0'
            default:
                return super.findAccessibilityNodeInfosByText(s1, i1);

            case -1: 
                a(s2, 3, arraylist);
                a(s2, 2, arraylist);
                a(s2, 1, arraylist);
                return arraylist;

            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
                a(s2, i1, arraylist);
                break;
            }
            return arraylist;
        }

        public boolean performAction(int i1, int j1, Bundle bundle)
        {
            i1;
            JVM INSTR tableswitch -1 3: default 36
        //                       -1 48
        //                       0 36
        //                       1 561
        //                       2 293
        //                       3 750;
               goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
            boolean flag = super.performAction(i1, j1, bundle);
_L10:
            return flag;
_L2:
            j1;
            JVM INSTR lookupswitch 4: default 92
        //                       64: 95
        //                       128: 128
        //                       4096: 163
        //                       8192: 228;
               goto _L1 _L6 _L7 _L8 _L9
_L6:
            int j4 = d;
            flag = false;
            if (j4 != i1)
            {
                d = i1;
                a.performAccessibilityAction(64, null);
                return true;
            }
              goto _L10
_L7:
            int i4 = d;
            flag = false;
            if (i4 == i1)
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
            int k3;
            int l3;
            if (a.getWrapSelectorWheel())
            {
                break; /* Loop/switch isn't completed */
            }
            k3 = a.getValue();
            l3 = a.getMaxValue();
            flag = false;
            if (k3 >= l3) goto _L10; else goto _L12
_L12:
            NumberPicker.a(a, true);
            return true;
_L9:
            boolean flag9;
            flag9 = a.isEnabled();
            flag = false;
            if (!flag9) goto _L10; else goto _L13
_L13:
            int i3;
            int j3;
            if (a.getWrapSelectorWheel())
            {
                break; /* Loop/switch isn't completed */
            }
            i3 = a.getValue();
            j3 = a.getMinValue();
            flag = false;
            if (i3 <= j3) goto _L10; else goto _L14
_L14:
            NumberPicker.a(a, false);
            return true;
_L4:
            switch (j1)
            {
            default:
                return NumberPicker.b(a).performAccessibilityAction(j1, bundle);

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
                int l2 = d;
                flag = false;
                if (l2 != i1)
                {
                    d = i1;
                    a(i1, 32768);
                    NumberPicker.b(a).invalidate();
                    return true;
                }
                break;

            case 128: 
                int k2 = d;
                flag = false;
                if (k2 == i1)
                {
                    d = 0x80000000;
                    a(i1, 0x10000);
                    NumberPicker.b(a).invalidate();
                    return true;
                }
                break;
            }
            if (true) goto _L10; else goto _L15
_L15:
_L3:
            switch (j1)
            {
            default:
                return false;

            case 16: // '\020'
                boolean flag3 = a.isEnabled();
                flag = false;
                if (flag3)
                {
                    NumberPicker.a(a, true);
                    a(i1, 1);
                    return true;
                }
                break;

            case 64: // '@'
                int j2 = d;
                flag = false;
                if (j2 != i1)
                {
                    d = i1;
                    a(i1, 32768);
                    a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                    return true;
                }
                break;

            case 128: 
                int i2 = d;
                flag = false;
                if (i2 == i1)
                {
                    d = 0x80000000;
                    a(i1, 0x10000);
                    a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                    return true;
                }
                break;
            }
            if (true) goto _L10; else goto _L16
_L16:
_L5:
            switch (j1)
            {
            default:
                return false;

            case 16: // '\020'
                boolean flag1 = a.isEnabled();
                flag = false;
                if (flag1)
                {
                    boolean flag2 = false;
                    if (i1 == 1)
                    {
                        flag2 = true;
                    }
                    NumberPicker.a(a, flag2);
                    a(i1, 1);
                    return true;
                }
                break;

            case 64: // '@'
                int l1 = d;
                flag = false;
                if (l1 != i1)
                {
                    d = i1;
                    a(i1, 32768);
                    a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
                    return true;
                }
                break;

            case 128: 
                int k1 = d;
                flag = false;
                if (k1 == i1)
                {
                    d = 0x80000000;
                    a(i1, 0x10000);
                    a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
                    return true;
                }
                break;
            }
            if (true) goto _L10; else goto _L17
_L17:
        }

        AccessibilityNodeProviderImpl()
        {
            a = NumberPicker.this;
            super();
            d = 0x80000000;
        }
    }

    class BeginSoftInputOnLongPressCommand
        implements Runnable
    {

        final NumberPicker a;

        public void run()
        {
            NumberPicker.j(a);
            NumberPicker.d(a, true);
        }

        BeginSoftInputOnLongPressCommand()
        {
            a = NumberPicker.this;
            super();
        }
    }

    class ChangeCurrentByOneFromLongPressCommand
        implements Runnable
    {

        final NumberPicker a;
        private boolean b;

        static void a(ChangeCurrentByOneFromLongPressCommand changecurrentbyonefromlongpresscommand, boolean flag)
        {
            changecurrentbyonefromlongpresscommand.a(flag);
        }

        private void a(boolean flag)
        {
            b = flag;
        }

        public void run()
        {
            NumberPicker.a(a, b);
            a.postDelayed(this, NumberPicker.i(a));
        }

        ChangeCurrentByOneFromLongPressCommand()
        {
            a = NumberPicker.this;
            super();
        }
    }

    public static class CustomEditText extends EditText
    {

        public void onEditorAction(int i1)
        {
            super.onEditorAction(i1);
            if (i1 == 6)
            {
                clearFocus();
            }
        }

        public CustomEditText(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }
    }

    public static interface Formatter
    {

        public abstract String a(int i1);
    }

    class InputTextFilter extends NumberKeyListener
    {

        final NumberPicker a;

        public CharSequence filter(CharSequence charsequence, int i1, int j1, Spanned spanned, int k1, int l1)
        {
            Object obj;
            String s5;
            if (NumberPicker.c(a) != null)
            {
                break MISSING_BLOCK_LABEL_131;
            }
            obj = super.filter(charsequence, i1, j1, spanned, k1, l1);
            if (obj == null)
            {
                obj = charsequence.subSequence(i1, j1);
            }
            s5 = (new StringBuilder()).append(String.valueOf(spanned.subSequence(0, k1))).append(obj).append(spanned.subSequence(l1, spanned.length())).toString();
            if (!"".equals(s5)) goto _L2; else goto _L1
_L1:
            obj = s5;
_L4:
            return ((CharSequence) (obj));
_L2:
            if (NumberPicker.a(a, s5) <= NumberPicker.d(a)) goto _L4; else goto _L3
_L3:
            return "";
            String s1 = String.valueOf(charsequence.subSequence(i1, j1));
            if (TextUtils.isEmpty(s1))
            {
                return "";
            }
            String s2 = (new StringBuilder()).append(String.valueOf(spanned.subSequence(0, k1))).append(s1).append(spanned.subSequence(l1, spanned.length())).toString();
            String s3 = String.valueOf(s2).toLowerCase();
            String as[] = NumberPicker.c(a);
            int i2 = as.length;
            for (int j2 = 0; j2 < i2; j2++)
            {
                String s4 = as[j2];
                if (s4.toLowerCase().startsWith(s3))
                {
                    NumberPicker.a(a, s2.length(), s4.length());
                    return s4.subSequence(k1, s4.length());
                }
            }

            return "";
        }

        protected char[] getAcceptedChars()
        {
            return NumberPicker.a();
        }

        public int getInputType()
        {
            return 1;
        }

        InputTextFilter()
        {
            a = NumberPicker.this;
            super();
        }
    }

    public static interface OnScrollListener
    {

        public abstract void a(NumberPicker numberpicker, int i1);
    }

    public static interface OnValueChangeListener
    {

        public abstract void a(NumberPicker numberpicker, int i1, int j1);
    }

    class PressedStateHelper
        implements Runnable
    {

        final NumberPicker a;
        private final int b = 1;
        private final int c = 2;
        private int d;
        private int e;

        public void a()
        {
            e = 0;
            d = 0;
            a.removeCallbacks(this);
            if (NumberPicker.e(a))
            {
                NumberPicker.b(a, false);
                a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
            }
            NumberPicker.c(a, false);
            if (NumberPicker.g(a))
            {
                a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
            }
        }

        public void a(int i1)
        {
            a();
            e = 1;
            d = i1;
            a.postDelayed(this, ViewConfiguration.getTapTimeout());
        }

        public void b(int i1)
        {
            a();
            e = 2;
            d = i1;
            a.post(this);
        }

        public void run()
        {
            switch (e)
            {
            default:
                return;

            case 1: // '\001'
                switch (d)
                {
                default:
                    return;

                case 1: // '\001'
                    NumberPicker.b(a, true);
                    a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                    return;

                case 2: // '\002'
                    NumberPicker.c(a, true);
                    break;
                }
                a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
                return;

            case 2: // '\002'
                switch (d)
                {
                default:
                    return;

                case 1: // '\001'
                    if (!NumberPicker.e(a))
                    {
                        a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                    }
                    NumberPicker.a(a, 1);
                    a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                    return;

                case 2: // '\002'
                    break;
                }
                break;
            }
            if (!NumberPicker.g(a))
            {
                a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
            }
            NumberPicker.b(a, 1);
            a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
        }

        PressedStateHelper()
        {
            a = NumberPicker.this;
            super();
        }
    }

    class SetSelectionCommand
        implements Runnable
    {

        final NumberPicker a;
        private int b;
        private int c;

        static int a(SetSelectionCommand setselectioncommand, int i1)
        {
            setselectioncommand.b = i1;
            return i1;
        }

        static int b(SetSelectionCommand setselectioncommand, int i1)
        {
            setselectioncommand.c = i1;
            return i1;
        }

        public void run()
        {
            NumberPicker.b(a).setSelection(b, c);
        }

        SetSelectionCommand()
        {
            a = NumberPicker.this;
            super();
        }
    }

    class SupportAccessibilityNodeProvider
    {

        AccessibilityNodeProviderImpl a;
        final NumberPicker b;

        public void a(int i1, int j1)
        {
            if (a != null)
            {
                a.a(i1, j1);
            }
        }

        public boolean a(int i1, int j1, Bundle bundle)
        {
            if (a != null)
            {
                return a.performAction(i1, j1, bundle);
            } else
            {
                return false;
            }
        }

        private SupportAccessibilityNodeProvider()
        {
            b = NumberPicker.this;
            super();
            if (android.os.Build.VERSION.SDK_INT >= 16)
            {
                a = new AccessibilityNodeProviderImpl();
            }
        }

    }

    static class TwoDigitFormatter
        implements Formatter
    {

        final StringBuilder a = new StringBuilder();
        char b;
        java.util.Formatter c;
        final Object d[] = new Object[1];

        private void a(Locale locale)
        {
            c = c(locale);
            b = b(locale);
        }

        private static char b(Locale locale)
        {
            return (new DecimalFormatSymbols(locale)).getZeroDigit();
        }

        private java.util.Formatter c(Locale locale)
        {
            return new java.util.Formatter(a, locale);
        }

        public String a(int i1)
        {
            Locale locale = Locale.getDefault();
            if (b != b(locale))
            {
                a(locale);
            }
            d[0] = Integer.valueOf(i1);
            a.delete(0, a.length());
            c.format("%02d", d);
            return c.toString();
        }

        TwoDigitFormatter()
        {
            a(Locale.getDefault());
        }
    }


    private static final TwoDigitFormatter a = new TwoDigitFormatter();
    private static final char ah[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        '\u0660', '\u0661', '\u0662', '\u0663', '\u0664', '\u0665', '\u0666', '\u0667', '\u0668', '\u0669', 
        '\u06F0', '\u06F1', '\u06F2', '\u06F3', '\u06F4', '\u06F5', '\u06F6', '\u06F7', '\u06F8', '\u06F9'
    };
    private int A;
    private final Scroller B;
    private final Scroller C;
    private int D;
    private SetSelectionCommand E;
    private ChangeCurrentByOneFromLongPressCommand F;
    private BeginSoftInputOnLongPressCommand G;
    private float H;
    private long I;
    private float J;
    private VelocityTracker K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private final int P;
    private final boolean Q;
    private final Drawable R;
    private final int S;
    private int T;
    private boolean U;
    private boolean V;
    private int W;
    private int aa;
    private int ab;
    private boolean ac;
    private boolean ad;
    private SupportAccessibilityNodeProvider ae;
    private final PressedStateHelper af;
    private int ag;
    private final ImageButton b;
    private final ImageButton c;
    private final EditText d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private int i;
    private final boolean j;
    private final int k;
    private int l;
    private String m[];
    private int n;
    private int o;
    private int p;
    private OnValueChangeListener q;
    private OnScrollListener r;
    private Formatter s;
    private long t;
    private final SparseArray u;
    private final int v[];
    private final Paint w;
    private final Drawable x;
    private int y;
    private int z;

    public NumberPicker(Context context)
    {
        this(context, null);
    }

    public NumberPicker(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, R.attr.numberPickerStyle);
    }

    public NumberPicker(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset);
        t = 300L;
        u = new SparseArray();
        v = new int[3];
        z = 0x80000000;
        T = 0;
        ag = -1;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, R.styleable.NumberPicker, i1, 0);
        int j1 = typedarray.getResourceId(8, 0);
        boolean flag;
        if (j1 != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Q = flag;
        P = typedarray.getColor(0, 0);
        R = typedarray.getDrawable(1);
        S = typedarray.getDimensionPixelSize(2, (int)TypedValue.applyDimension(1, 2.0F, getResources().getDisplayMetrics()));
        e = typedarray.getDimensionPixelSize(3, (int)TypedValue.applyDimension(1, 48F, getResources().getDisplayMetrics()));
        f = typedarray.getDimensionPixelSize(4, -1);
        g = typedarray.getDimensionPixelSize(5, -1);
        if (f != -1 && g != -1 && f > g)
        {
            throw new IllegalArgumentException("minHeight > maxHeight");
        }
        h = typedarray.getDimensionPixelSize(6, -1);
        i = typedarray.getDimensionPixelSize(7, -1);
        if (h != -1 && i != -1 && h > i)
        {
            throw new IllegalArgumentException("minWidth > maxWidth");
        }
        boolean flag1;
        boolean flag2;
        android.view.View.OnClickListener onclicklistener;
        android.view.View.OnLongClickListener onlongclicklistener;
        EditText edittext;
        InputFilter ainputfilter[];
        ViewConfiguration viewconfiguration;
        Paint paint;
        if (i == -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        j = flag1;
        x = typedarray.getDrawable(9);
        typedarray.recycle();
        af = new PressedStateHelper();
        if (!Q)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        setWillNotDraw(flag2);
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(j1, this, true);
        onclicklistener = new android.view.View.OnClickListener() {

            final NumberPicker a;

            public void onClick(View view)
            {
                NumberPicker.a(a);
                NumberPicker.b(a).clearFocus();
                if (view.getId() == R.id.np__increment)
                {
                    NumberPicker.a(a, true);
                    return;
                } else
                {
                    NumberPicker.a(a, false);
                    return;
                }
            }

            
            {
                a = NumberPicker.this;
                super();
            }
        };
        onlongclicklistener = new android.view.View.OnLongClickListener() {

            final NumberPicker a;

            public boolean onLongClick(View view)
            {
                NumberPicker.a(a);
                NumberPicker.b(a).clearFocus();
                if (view.getId() == R.id.np__increment)
                {
                    NumberPicker.a(a, true, 0L);
                    return true;
                } else
                {
                    NumberPicker.a(a, false, 0L);
                    return true;
                }
            }

            
            {
                a = NumberPicker.this;
                super();
            }
        };
        if (!Q)
        {
            b = (ImageButton)findViewById(R.id.np__increment);
            b.setOnClickListener(onclicklistener);
            b.setOnLongClickListener(onlongclicklistener);
        } else
        {
            b = null;
        }
        if (!Q)
        {
            c = (ImageButton)findViewById(R.id.np__decrement);
            c.setOnClickListener(onclicklistener);
            c.setOnLongClickListener(onlongclicklistener);
        } else
        {
            c = null;
        }
        d = (EditText)findViewById(R.id.np__numberpicker_input);
        d.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final NumberPicker a;

            public void onFocusChange(View view, boolean flag3)
            {
                if (flag3)
                {
                    NumberPicker.b(a).selectAll();
                    return;
                } else
                {
                    NumberPicker.b(a).setSelection(0, 0);
                    NumberPicker.a(a, view);
                    return;
                }
            }

            
            {
                a = NumberPicker.this;
                super();
            }
        });
        edittext = d;
        ainputfilter = new InputFilter[1];
        ainputfilter[0] = new InputTextFilter();
        edittext.setFilters(ainputfilter);
        d.setRawInputType(2);
        d.setImeOptions(6);
        viewconfiguration = ViewConfiguration.get(context);
        L = viewconfiguration.getScaledTouchSlop();
        M = viewconfiguration.getScaledMinimumFlingVelocity();
        N = viewconfiguration.getScaledMaximumFlingVelocity() / 8;
        k = (int)d.getTextSize();
        paint = new Paint();
        paint.setAntiAlias(true);
        paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        paint.setTextSize(k);
        paint.setTypeface(d.getTypeface());
        paint.setColor(d.getTextColors().getColorForState(ENABLED_STATE_SET, -1));
        w = paint;
        B = new Scroller(getContext(), null, true);
        C = new Scroller(getContext(), new DecelerateInterpolator(2.5F));
        h();
        if (android.os.Build.VERSION.SDK_INT >= 16 && getImportantForAccessibility() == 0)
        {
            setImportantForAccessibility(1);
        }
    }

    private int a(int i1, int j1)
    {
        if (j1 != -1) goto _L2; else goto _L1
_L1:
        return i1;
_L2:
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        int l1 = android.view.View.MeasureSpec.getMode(i1);
        switch (l1)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown measure mode: ").append(l1).toString());

        case -2147483648: 
            return android.view.View.MeasureSpec.makeMeasureSpec(Math.min(k1, j1), 0x40000000);

        case 0: // '\0'
            return android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000);

        case 1073741824: 
            break;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static int a(int i1, int j1, int k1)
    {
        int l1;
        int i2;
        l1 = android.view.View.MeasureSpec.getMode(j1);
        i2 = android.view.View.MeasureSpec.getSize(j1);
        l1;
        JVM INSTR lookupswitch 3: default 48
    //                   -2147483648: 56
    //                   0: 48
    //                   1073741824: 72;
           goto _L1 _L2 _L1 _L3
_L1:
        return i1 | 0xff000000 & k1;
_L2:
        if (i2 < i1)
        {
            i1 = i2 | 0x1000000;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = i2;
        if (true) goto _L1; else goto _L4
_L4:
    }

    private int a(String s1)
    {
        if (m != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        int k1 = Integer.parseInt(s1);
        return k1;
        for (int i1 = 0; i1 < m.length; i1++)
        {
            s1 = s1.toLowerCase();
            if (m[i1].toLowerCase().startsWith(s1))
            {
                return i1 + n;
            }
        }

        int j1 = Integer.parseInt(s1);
        return j1;
        NumberFormatException numberformatexception1;
        numberformatexception1;
_L2:
        return n;
        NumberFormatException numberformatexception;
        numberformatexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static int a(NumberPicker numberpicker, String s1)
    {
        return numberpicker.a(s1);
    }

    private void a(int i1)
    {
        if (T != i1)
        {
            T = i1;
            if (r != null)
            {
                r.a(this, i1);
                return;
            }
        }
    }

    private void a(int i1, boolean flag)
    {
        if (p == i1)
        {
            return;
        }
        int j1;
        int k1;
        if (O)
        {
            j1 = c(i1);
        } else
        {
            j1 = Math.min(Math.max(i1, n), o);
        }
        k1 = p;
        p = j1;
        h();
        if (flag)
        {
            b(k1, j1);
        }
        e();
        invalidate();
    }

    private void a(View view)
    {
        String s1 = String.valueOf(((TextView)view).getText());
        if (TextUtils.isEmpty(s1))
        {
            h();
            return;
        } else
        {
            a(a(s1.toString()), true);
            return;
        }
    }

    static void a(NumberPicker numberpicker)
    {
        numberpicker.c();
    }

    static void a(NumberPicker numberpicker, int i1, int j1)
    {
        numberpicker.c(i1, j1);
    }

    static void a(NumberPicker numberpicker, View view)
    {
        numberpicker.a(view);
    }

    static void a(NumberPicker numberpicker, boolean flag)
    {
        numberpicker.a(flag);
    }

    static void a(NumberPicker numberpicker, boolean flag, long l1)
    {
        numberpicker.a(flag, l1);
    }

    private void a(boolean flag)
    {
        if (Q)
        {
            d.setVisibility(4);
            if (!a(B))
            {
                a(C);
            }
            D = 0;
            if (flag)
            {
                B.a(0, 0, 0, -y, 300);
            } else
            {
                B.a(0, 0, 0, y, 300);
            }
            invalidate();
            return;
        }
        if (flag)
        {
            a(1 + p, true);
            return;
        } else
        {
            a(-1 + p, true);
            return;
        }
    }

    private void a(boolean flag, long l1)
    {
        if (F == null)
        {
            F = new ChangeCurrentByOneFromLongPressCommand();
        } else
        {
            removeCallbacks(F);
        }
        ChangeCurrentByOneFromLongPressCommand.a(F, flag);
        postDelayed(F, l1);
    }

    private void a(int ai[])
    {
        for (int i1 = 0; i1 < -1 + ai.length; i1++)
        {
            ai[i1] = ai[i1 + 1];
        }

        int j1 = 1 + ai[-2 + ai.length];
        if (O && j1 > o)
        {
            j1 = n;
        }
        ai[-1 + ai.length] = j1;
        d(j1);
    }

    static boolean a(NumberPicker numberpicker, int i1)
    {
        boolean flag = (byte)(i1 ^ numberpicker.ac);
        numberpicker.ac = flag;
        return flag;
    }

    private boolean a(Scroller scroller)
    {
        scroller.a(true);
        int i1 = scroller.e() - scroller.b();
        int j1 = (i1 + A) % y;
        int k1 = z - j1;
        if (k1 != 0)
        {
            if (Math.abs(k1) > y / 2)
            {
                if (k1 > 0)
                {
                    k1 -= y;
                } else
                {
                    k1 += y;
                }
            }
            scrollBy(0, k1 + i1);
            return true;
        } else
        {
            return false;
        }
    }

    static char[] a()
    {
        return ah;
    }

    private int b(int i1, int j1, int k1)
    {
        if (i1 != -1)
        {
            j1 = a(Math.max(i1, j1), k1, 0);
        }
        return j1;
    }

    static EditText b(NumberPicker numberpicker)
    {
        return numberpicker.d;
    }

    private void b()
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            if (Q)
            {
                d.setVisibility(0);
            }
            d.requestFocus();
            inputmethodmanager.showSoftInput(d, 0);
        }
    }

    private void b(int i1)
    {
        D = 0;
        if (i1 > 0)
        {
            B.a(0, 0, 0, i1, 0, 0, 0, 0x7fffffff);
        } else
        {
            B.a(0, 0x7fffffff, 0, i1, 0, 0, 0, 0x7fffffff);
        }
        invalidate();
    }

    private void b(int i1, int j1)
    {
        if (q != null)
        {
            q.a(this, i1, p);
        }
    }

    private void b(Scroller scroller)
    {
        if (scroller == B)
        {
            if (!m())
            {
                h();
            }
            a(0);
        } else
        if (T != 1)
        {
            h();
            return;
        }
    }

    private void b(int ai[])
    {
        for (int i1 = -1 + ai.length; i1 > 0; i1--)
        {
            ai[i1] = ai[i1 - 1];
        }

        int j1 = -1 + ai[1];
        if (O && j1 < n)
        {
            j1 = o;
        }
        ai[0] = j1;
        d(j1);
    }

    static boolean b(NumberPicker numberpicker, int i1)
    {
        boolean flag = (byte)(i1 ^ numberpicker.ad);
        numberpicker.ad = flag;
        return flag;
    }

    static boolean b(NumberPicker numberpicker, boolean flag)
    {
        numberpicker.ac = flag;
        return flag;
    }

    private int c(int i1)
    {
        if (i1 > o)
        {
            i1 = -1 + (n + (i1 - o) % (o - n));
        } else
        if (i1 < n)
        {
            return 1 + (o - (n - i1) % (o - n));
        }
        return i1;
    }

    static int c(NumberPicker numberpicker, int i1)
    {
        return numberpicker.c(i1);
    }

    private void c()
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
        if (inputmethodmanager != null && inputmethodmanager.isActive(d))
        {
            inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            if (Q)
            {
                d.setVisibility(4);
            }
        }
    }

    private void c(int i1, int j1)
    {
        if (E == null)
        {
            E = new SetSelectionCommand();
        } else
        {
            removeCallbacks(E);
        }
        SetSelectionCommand.a(E, i1);
        SetSelectionCommand.b(E, j1);
        post(E);
    }

    static boolean c(NumberPicker numberpicker, boolean flag)
    {
        numberpicker.ad = flag;
        return flag;
    }

    static String[] c(NumberPicker numberpicker)
    {
        return numberpicker.m;
    }

    static int d(NumberPicker numberpicker)
    {
        return numberpicker.o;
    }

    static String d(NumberPicker numberpicker, int i1)
    {
        return numberpicker.e(i1);
    }

    private void d()
    {
        int i1 = 0;
        if (j)
        {
            if (m == null)
            {
                float f2 = 0.0F;
                int j2 = 0;
                while (j2 <= 9) 
                {
                    float f3 = w.measureText(f(j2));
                    int j1;
                    int k1;
                    int l1;
                    float f1;
                    int i2;
                    int k2;
                    if (f3 <= f2)
                    {
                        f3 = f2;
                    }
                    j2++;
                    f2 = f3;
                }
                for (k2 = o; k2 > 0; k2 /= 10)
                {
                    i1++;
                }

                l1 = (int)(f2 * (float)i1);
            } else
            {
                j1 = m.length;
                k1 = 0;
                l1 = 0;
                while (k1 < j1) 
                {
                    f1 = w.measureText(m[k1]);
                    if (f1 > (float)l1)
                    {
                        l1 = (int)f1;
                    }
                    k1++;
                }
            }
            i2 = l1 + (d.getPaddingLeft() + d.getPaddingRight());
            if (i != i2)
            {
                if (i2 > h)
                {
                    i = i2;
                } else
                {
                    i = h;
                }
                invalidate();
                return;
            }
        }
    }

    private void d(int i1)
    {
        SparseArray sparsearray = u;
        if ((String)sparsearray.get(i1) != null)
        {
            return;
        }
        String s1;
        if (i1 < n || i1 > o)
        {
            s1 = "";
        } else
        if (m != null)
        {
            int j1 = i1 - n;
            s1 = m[j1];
        } else
        {
            s1 = e(i1);
        }
        sparsearray.put(i1, s1);
    }

    static boolean d(NumberPicker numberpicker, boolean flag)
    {
        numberpicker.U = flag;
        return flag;
    }

    private String e(int i1)
    {
        if (s != null)
        {
            return s.a(i1);
        } else
        {
            return f(i1);
        }
    }

    private void e()
    {
        u.clear();
        int ai[] = v;
        int i1 = getValue();
        for (int j1 = 0; j1 < v.length; j1++)
        {
            int k1 = i1 + (j1 - 1);
            if (O)
            {
                k1 = c(k1);
            }
            ai[j1] = k1;
            d(ai[j1]);
        }

    }

    static boolean e(NumberPicker numberpicker)
    {
        return numberpicker.ac;
    }

    static int f(NumberPicker numberpicker)
    {
        return numberpicker.aa;
    }

    private static String f(int i1)
    {
        Locale locale = Locale.getDefault();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        return String.format(locale, "%d", aobj);
    }

    private void f()
    {
        e();
        int ai[] = v;
        int i1 = ai.length * k;
        l = (int)(0.5F + (float)(getBottom() - getTop() - i1) / (float)ai.length);
        y = k + l;
        z = (d.getBaseline() + d.getTop()) - 1 * y;
        A = z;
        h();
    }

    private void g()
    {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength((getBottom() - getTop() - k) / 2);
    }

    static boolean g(NumberPicker numberpicker)
    {
        return numberpicker.ad;
    }

    private SupportAccessibilityNodeProvider getSupportAccessibilityNodeProvider()
    {
        return new SupportAccessibilityNodeProvider();
    }

    public static final Formatter getTwoDigitFormatter()
    {
        return a;
    }

    static int h(NumberPicker numberpicker)
    {
        return numberpicker.W;
    }

    private boolean h()
    {
        String s1;
        if (m == null)
        {
            s1 = e(p);
        } else
        {
            s1 = m[p - n];
        }
        if (!TextUtils.isEmpty(s1) && !s1.equals(d.getText().toString()))
        {
            d.setText(s1);
            return true;
        } else
        {
            return false;
        }
    }

    static long i(NumberPicker numberpicker)
    {
        return numberpicker.t;
    }

    private void i()
    {
        if (F != null)
        {
            removeCallbacks(F);
        }
    }

    private void j()
    {
        if (G == null)
        {
            G = new BeginSoftInputOnLongPressCommand();
        } else
        {
            removeCallbacks(G);
        }
        postDelayed(G, ViewConfiguration.getLongPressTimeout());
    }

    static void j(NumberPicker numberpicker)
    {
        numberpicker.b();
    }

    static int k(NumberPicker numberpicker)
    {
        return numberpicker.S;
    }

    private void k()
    {
        if (G != null)
        {
            removeCallbacks(G);
        }
    }

    static int l(NumberPicker numberpicker)
    {
        return numberpicker.p;
    }

    private void l()
    {
        if (F != null)
        {
            removeCallbacks(F);
        }
        if (E != null)
        {
            removeCallbacks(E);
        }
        if (G != null)
        {
            removeCallbacks(G);
        }
        af.a();
    }

    private boolean m()
    {
        int i1 = z - A;
        boolean flag = false;
        if (i1 != 0)
        {
            D = 0;
            if (Math.abs(i1) > y / 2)
            {
                int j1;
                if (i1 > 0)
                {
                    j1 = -y;
                } else
                {
                    j1 = y;
                }
                i1 += j1;
            }
            C.a(0, 0, 0, i1, 800);
            invalidate();
            flag = true;
        }
        return flag;
    }

    static boolean m(NumberPicker numberpicker)
    {
        return numberpicker.O;
    }

    static int n(NumberPicker numberpicker)
    {
        return numberpicker.n;
    }

    public void computeScroll()
    {
        Scroller scroller = B;
        if (scroller.a())
        {
            scroller = C;
            if (scroller.a())
            {
                return;
            }
        }
        scroller.f();
        int i1 = scroller.b();
        if (D == 0)
        {
            D = scroller.d();
        }
        scrollBy(0, i1 - D);
        D = i1;
        if (scroller.a())
        {
            b(scroller);
            return;
        } else
        {
            invalidate();
            return;
        }
    }

    protected boolean dispatchHoverEvent(MotionEvent motionevent)
    {
        if (!Q)
        {
            return super.dispatchHoverEvent(motionevent);
        }
        if (!((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled()) goto _L2; else goto _L1
_L1:
        int j1;
        SupportAccessibilityNodeProvider supportaccessibilitynodeprovider;
        int i1 = (int)motionevent.getY();
        int k1;
        if (i1 < W)
        {
            j1 = 3;
        } else
        if (i1 > aa)
        {
            j1 = 1;
        } else
        {
            j1 = 2;
        }
        k1 = 0xff & motionevent.getAction();
        supportaccessibilitynodeprovider = getSupportAccessibilityNodeProvider();
        k1;
        JVM INSTR tableswitch 7 10: default 96
    //                   7 143
    //                   8 96
    //                   9 116
    //                   10 198;
           goto _L2 _L3 _L2 _L4 _L5
_L2:
        return false;
_L4:
        supportaccessibilitynodeprovider.a(j1, 128);
        ab = j1;
        supportaccessibilitynodeprovider.a(j1, 64, null);
        continue; /* Loop/switch isn't completed */
_L3:
        if (ab != j1 && ab != -1)
        {
            supportaccessibilitynodeprovider.a(ab, 256);
            supportaccessibilitynodeprovider.a(j1, 128);
            ab = j1;
            supportaccessibilitynodeprovider.a(j1, 64, null);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        supportaccessibilitynodeprovider.a(j1, 256);
        ab = -1;
        if (true) goto _L2; else goto _L6
_L6:
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag;
        int i1;
        flag = true;
        i1 = keyevent.getKeyCode();
        i1;
        JVM INSTR lookupswitch 4: default 52
    //                   19: 67
    //                   20: 67
    //                   23: 60
    //                   66: 60;
           goto _L1 _L2 _L2 _L3 _L3
_L12:
        flag = super.dispatchKeyEvent(keyevent);
_L10:
        return flag;
_L3:
        l();
        continue; /* Loop/switch isn't completed */
_L2:
        if (!Q)
        {
            continue; /* Loop/switch isn't completed */
        }
        keyevent.getAction();
        JVM INSTR tableswitch 0 1: default 100
    //                   0 103
    //                   1 188;
           goto _L4 _L5 _L6
_L4:
        continue; /* Loop/switch isn't completed */
_L6:
        continue; /* Loop/switch isn't completed */
_L5:
        if (!O && i1 != 20 ? getValue() <= getMinValue() : getValue() >= getMaxValue()) goto _L8; else goto _L7
_L8:
        continue; /* Loop/switch isn't completed */
_L7:
        requestFocus();
        ag = i1;
        l();
        if (!B.a()) goto _L10; else goto _L9
_L9:
        boolean flag1;
        if (i1 == 20)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        a(flag1);
        return flag;
        if (ag != i1) goto _L12; else goto _L11
_L11:
        ag = -1;
        return flag;
_L1:
        if (true) goto _L12; else goto _L13
_L13:
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 1 3: default 36
    //                   1 42
    //                   2 36
    //                   3 42;
           goto _L1 _L2 _L1 _L2
_L1:
        return super.dispatchTouchEvent(motionevent);
_L2:
        l();
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean dispatchTrackballEvent(MotionEvent motionevent)
    {
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 1 3: default 36
    //                   1 42
    //                   2 36
    //                   3 42;
           goto _L1 _L2 _L1 _L2
_L1:
        return super.dispatchTrackballEvent(motionevent);
_L2:
        l();
        if (true) goto _L1; else goto _L3
_L3:
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider()
    {
        if (!Q)
        {
            return super.getAccessibilityNodeProvider();
        }
        if (ae == null)
        {
            ae = new SupportAccessibilityNodeProvider();
        }
        return ae.a;
    }

    protected float getBottomFadingEdgeStrength()
    {
        return 0.9F;
    }

    public String[] getDisplayedValues()
    {
        return m;
    }

    public int getMaxValue()
    {
        return o;
    }

    public int getMinValue()
    {
        return n;
    }

    public int getSolidColor()
    {
        return P;
    }

    protected float getTopFadingEdgeStrength()
    {
        return 0.9F;
    }

    public int getValue()
    {
        return p;
    }

    public boolean getWrapSelectorWheel()
    {
        return O;
    }

    protected void onDetachedFromWindow()
    {
        l();
    }

    protected void onDraw(Canvas canvas)
    {
        if (!Q)
        {
            super.onDraw(canvas);
        } else
        {
            float f1 = (getRight() - getLeft()) / 2;
            float f2 = A;
            if (x != null && T == 0)
            {
                if (ad)
                {
                    x.setState(PRESSED_ENABLED_STATE_SET);
                    x.setBounds(0, 0, getRight(), W);
                    x.draw(canvas);
                }
                if (ac)
                {
                    x.setState(PRESSED_ENABLED_STATE_SET);
                    x.setBounds(0, aa, getRight(), getBottom());
                    x.draw(canvas);
                }
            }
            int ai[] = v;
            int i1 = 0;
            float f3 = f2;
            for (; i1 < ai.length; i1++)
            {
                int j2 = ai[i1];
                String s1 = (String)u.get(j2);
                if (i1 != 1 || d.getVisibility() != 0)
                {
                    canvas.drawText(s1, f1, f3, w);
                }
                f3 += y;
            }

            if (R != null)
            {
                int j1 = W;
                int k1 = j1 + S;
                R.setBounds(0, j1, getRight(), k1);
                R.draw(canvas);
                int l1 = aa;
                int i2 = l1 - S;
                R.setBounds(0, i2, getRight(), l1);
                R.draw(canvas);
                return;
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(net/simonvt/numberpicker/NumberPicker.getName());
        accessibilityevent.setScrollable(true);
        accessibilityevent.setScrollY((n + p) * y);
        accessibilityevent.setMaxScrollY((o - n) * y);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (!Q || !isEnabled())
        {
            return false;
        }
        switch (0xff & motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            l();
            break;
        }
        d.setVisibility(4);
        float f1 = motionevent.getY();
        H = f1;
        J = f1;
        I = motionevent.getEventTime();
        U = false;
        V = false;
        if (H >= (float)W) goto _L2; else goto _L1
_L1:
        if (T == 0)
        {
            af.a(2);
        }
_L4:
        getParent().requestDisallowInterceptTouchEvent(true);
        if (!B.a())
        {
            B.a(true);
            C.a(true);
            a(0);
            return true;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (H > (float)aa && T == 0)
        {
            af.a(1);
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!C.a())
        {
            B.a(true);
            C.a(true);
            return true;
        }
        if (H < (float)W)
        {
            c();
            a(false, ViewConfiguration.getLongPressTimeout());
            return true;
        }
        if (H > (float)aa)
        {
            c();
            a(true, ViewConfiguration.getLongPressTimeout());
            return true;
        } else
        {
            V = true;
            j();
            return true;
        }
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        if (!Q)
        {
            super.onLayout(flag, i1, j1, k1, l1);
        } else
        {
            int i2 = getMeasuredWidth();
            int j2 = getMeasuredHeight();
            int k2 = d.getMeasuredWidth();
            int l2 = d.getMeasuredHeight();
            int i3 = (i2 - k2) / 2;
            int j3 = (j2 - l2) / 2;
            int k3 = k2 + i3;
            int l3 = l2 + j3;
            d.layout(i3, j3, k3, l3);
            if (flag)
            {
                f();
                g();
                W = (getHeight() - e) / 2 - S;
                aa = W + 2 * S + e;
                return;
            }
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        if (!Q)
        {
            super.onMeasure(i1, j1);
            return;
        } else
        {
            super.onMeasure(a(i1, i), a(j1, g));
            setMeasuredDimension(b(h, getMeasuredWidth(), i1), b(f, getMeasuredHeight(), j1));
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (isEnabled() && Q) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if (K == null)
        {
            K = VelocityTracker.obtain();
        }
        K.addMovement(motionevent);
        switch (0xff & motionevent.getAction())
        {
        default:
            return flag;

        case 2: // '\002'
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            k();
            i();
            af.a();
            VelocityTracker velocitytracker = K;
            velocitytracker.computeCurrentVelocity(1000, N);
            int i1 = (int)velocitytracker.getYVelocity();
            float f1;
            if (Math.abs(i1) > M)
            {
                b(i1);
                a(2);
            } else
            {
                int j1 = (int)motionevent.getY();
                int k1 = (int)Math.abs((float)j1 - H);
                motionevent.getEventTime() - I;
                (long)ViewConfiguration.getTapTimeout();
                if (k1 <= L)
                {
                    if (V)
                    {
                        V = false;
                        b();
                    } else
                    {
                        int l1 = -1 + j1 / y;
                        if (l1 > 0)
                        {
                            a(flag);
                            af.b(flag);
                        } else
                        if (l1 < 0)
                        {
                            a(false);
                            af.b(2);
                        }
                    }
                } else
                {
                    m();
                }
                a(0);
            }
            K.recycle();
            K = null;
            return flag;
        }
        if (U) goto _L4; else goto _L3
_L3:
        f1 = motionevent.getY();
        if (T != flag)
        {
            if ((int)Math.abs(f1 - H) > L)
            {
                l();
                a(flag);
            }
        } else
        {
            scrollBy(0, (int)(f1 - J));
            invalidate();
        }
        J = f1;
        return flag;
    }

    public void scrollBy(int i1, int j1)
    {
        int ai[] = v;
        if (!O && j1 > 0 && ai[1] <= n)
        {
            A = z;
        } else
        {
            if (!O && j1 < 0 && ai[1] >= o)
            {
                A = z;
                return;
            }
            A = j1 + A;
            do
            {
                if (A - z <= l)
                {
                    break;
                }
                A = A - y;
                b(ai);
                a(ai[1], true);
                if (!O && ai[1] <= n)
                {
                    A = z;
                }
            } while (true);
            while (A - z < -l) 
            {
                A = A + y;
                a(ai);
                a(ai[1], true);
                if (!O && ai[1] >= o)
                {
                    A = z;
                }
            }
        }
    }

    public void setDisplayedValues(String as[])
    {
        if (m == as)
        {
            return;
        }
        m = as;
        if (m != null)
        {
            d.setRawInputType(0x80001);
        } else
        {
            d.setRawInputType(2);
        }
        h();
        e();
        d();
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        if (!Q)
        {
            b.setEnabled(flag);
        }
        if (!Q)
        {
            c.setEnabled(flag);
        }
        d.setEnabled(flag);
    }

    public void setFormatter(Formatter formatter)
    {
        if (formatter == s)
        {
            return;
        } else
        {
            s = formatter;
            e();
            h();
            return;
        }
    }

    public void setMaxValue(int i1)
    {
        if (o == i1)
        {
            return;
        }
        if (i1 < 0)
        {
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
        o = i1;
        if (o < p)
        {
            p = o;
        }
        boolean flag;
        if (o - n > v.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWrapSelectorWheel(flag);
        e();
        h();
        d();
        invalidate();
    }

    public void setMinValue(int i1)
    {
        if (n == i1)
        {
            return;
        }
        if (i1 < 0)
        {
            throw new IllegalArgumentException("minValue must be >= 0");
        }
        n = i1;
        if (n > p)
        {
            p = n;
        }
        boolean flag;
        if (o - n > v.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWrapSelectorWheel(flag);
        e();
        h();
        d();
        invalidate();
    }

    public void setOnLongPressUpdateInterval(long l1)
    {
        t = l1;
    }

    public void setOnScrollListener(OnScrollListener onscrolllistener)
    {
        r = onscrolllistener;
    }

    public void setOnValueChangedListener(OnValueChangeListener onvaluechangelistener)
    {
        q = onvaluechangelistener;
    }

    public void setValue(int i1)
    {
        a(i1, false);
    }

    public void setWrapSelectorWheel(boolean flag)
    {
        boolean flag1;
        if (o - n >= v.length)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if ((!flag || flag1) && flag != O)
        {
            O = flag;
        }
    }

}
