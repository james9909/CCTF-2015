// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
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
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import net.simonvt.numberpicker.Util.FontUtils;

// Referenced classes of package net.simonvt.numberpicker:
//            Scroller

public class SnapchatTimePicker extends LinearLayout
{
    class AccessibilityNodeProviderImpl extends AccessibilityNodeProvider
    {

        final SnapchatTimePicker a;
        private final Rect b = new Rect();
        private final int c[] = new int[2];
        private int d;

        private AccessibilityNodeInfo a()
        {
            AccessibilityNodeInfo accessibilitynodeinfo = SnapchatTimePicker.a(a).createAccessibilityNodeInfo();
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
            accessibilitynodeinfo.setClassName(net/simonvt/numberpicker/SnapchatTimePicker.getName());
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
                SnapchatTimePicker.a(a).onInitializeAccessibilityEvent(accessibilityevent);
                SnapchatTimePicker.a(a).onPopulateAccessibilityEvent(accessibilityevent);
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
            CharSequence charsequence = SnapchatTimePicker.a(a).getText();
            if (!TextUtils.isEmpty(charsequence) && charsequence.toString().toLowerCase().contains(s1))
            {
                list.add(createAccessibilityNodeInfo(2));
                return;
            }
            CharSequence charsequence1 = SnapchatTimePicker.a(a).getText();
            if (!TextUtils.isEmpty(charsequence1) && charsequence1.toString().toLowerCase().contains(s1))
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
            int i1 = -1 + SnapchatTimePicker.i(a);
            if (SnapchatTimePicker.j(a))
            {
                i1 = SnapchatTimePicker.c(a, i1);
            }
            if (i1 >= SnapchatTimePicker.k(a))
            {
                if (SnapchatTimePicker.l(a) == null)
                {
                    return SnapchatTimePicker.d(a, i1);
                } else
                {
                    return SnapchatTimePicker.l(a)[i1 - SnapchatTimePicker.k(a)];
                }
            } else
            {
                return null;
            }
        }

        private String e()
        {
            int i1 = 1 + SnapchatTimePicker.i(a);
            if (SnapchatTimePicker.j(a))
            {
                i1 = SnapchatTimePicker.c(a, i1);
            }
            if (i1 <= SnapchatTimePicker.m(a))
            {
                if (SnapchatTimePicker.l(a) == null)
                {
                    return SnapchatTimePicker.d(a, i1);
                } else
                {
                    return SnapchatTimePicker.l(a)[i1 - SnapchatTimePicker.k(a)];
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
                return a(3, d(), a.getScrollX(), a.getScrollY(), a.getScrollX() + (a.getRight() - a.getLeft()), SnapchatTimePicker.e(a) + SnapchatTimePicker.h(a));

            case 2: // '\002'
                return a();

            case 1: // '\001'
                return a(1, e(), a.getScrollX(), SnapchatTimePicker.c(a) - SnapchatTimePicker.h(a), a.getScrollX() + (a.getRight() - a.getLeft()), a.getScrollY() + (a.getBottom() - a.getTop()));
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
        //                       1 554
        //                       2 293
        //                       3 742;
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
            SnapchatTimePicker.a(a, true);
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
            SnapchatTimePicker.a(a, false);
            return true;
_L4:
            switch (j1)
            {
            default:
                return SnapchatTimePicker.a(a).performAccessibilityAction(j1, bundle);

            case 1: // '\001'
                boolean flag7 = a.isEnabled();
                flag = false;
                if (flag7)
                {
                    boolean flag8 = SnapchatTimePicker.a(a).isFocused();
                    flag = false;
                    if (!flag8)
                    {
                        return SnapchatTimePicker.a(a).requestFocus();
                    }
                }
                break;

            case 2: // '\002'
                boolean flag5 = a.isEnabled();
                flag = false;
                if (flag5)
                {
                    boolean flag6 = SnapchatTimePicker.a(a).isFocused();
                    flag = false;
                    if (flag6)
                    {
                        SnapchatTimePicker.a(a).clearFocus();
                        return true;
                    }
                }
                break;

            case 16: // '\020'
                boolean flag4 = a.isEnabled();
                flag = false;
                if (flag4)
                {
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
                    SnapchatTimePicker.a(a).invalidate();
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
                    SnapchatTimePicker.a(a).invalidate();
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
                    SnapchatTimePicker.a(a, true);
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
                    a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
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
                    a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
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
                    SnapchatTimePicker.a(a, flag2);
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
                    a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
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
                    a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
                    return true;
                }
                break;
            }
            if (true) goto _L10; else goto _L17
_L17:
        }

        AccessibilityNodeProviderImpl()
        {
            a = SnapchatTimePicker.this;
            super();
            d = 0x80000000;
        }
    }

    class ChangeCurrentByOneFromLongPressCommand
        implements Runnable
    {

        final SnapchatTimePicker a;
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
            SnapchatTimePicker.a(a, b);
            a.postDelayed(this, SnapchatTimePicker.f(a));
        }

        ChangeCurrentByOneFromLongPressCommand()
        {
            a = SnapchatTimePicker.this;
            super();
        }
    }

    public static interface Formatter
    {

        public abstract String a(int i1);
    }

    public static interface OnScrollListener
    {

        public abstract void a(SnapchatTimePicker snapchattimepicker, int i1);
    }

    public static interface OnTimeSelectedListener
    {

        public abstract void a();
    }

    public static interface OnValueChangeListener
    {

        public abstract void a(SnapchatTimePicker snapchattimepicker, int i1, int j1);
    }

    class PressedStateHelper
        implements Runnable
    {

        final SnapchatTimePicker a;
        private final int b = 1;
        private final int c = 2;
        private int d;
        private int e;

        public void a()
        {
            e = 0;
            d = 0;
            a.removeCallbacks(this);
            if (SnapchatTimePicker.b(a))
            {
                SnapchatTimePicker.b(a, false);
                a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
            }
            SnapchatTimePicker.c(a, false);
            if (SnapchatTimePicker.d(a))
            {
                a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
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
                    SnapchatTimePicker.b(a, true);
                    a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
                    return;

                case 2: // '\002'
                    SnapchatTimePicker.c(a, true);
                    break;
                }
                a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
                return;

            case 2: // '\002'
                switch (d)
                {
                default:
                    return;

                case 1: // '\001'
                    if (!SnapchatTimePicker.b(a))
                    {
                        a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                    }
                    SnapchatTimePicker.a(a, 1);
                    a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
                    return;

                case 2: // '\002'
                    break;
                }
                break;
            }
            if (!SnapchatTimePicker.d(a))
            {
                a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
            }
            SnapchatTimePicker.b(a, 1);
            a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
        }

        PressedStateHelper()
        {
            a = SnapchatTimePicker.this;
            super();
        }
    }

    class SelectTimeCommand
        implements Runnable
    {

        final SnapchatTimePicker a;

        public void run()
        {
            SnapchatTimePicker.g(a).a();
            SnapchatTimePicker.d(a, true);
        }
    }

    class SupportAccessibilityNodeProvider
    {

        AccessibilityNodeProviderImpl a;
        final SnapchatTimePicker b;

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
            b = SnapchatTimePicker.this;
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
    private int A;
    private int B;
    private int C;
    private final Scroller D;
    private final Scroller E;
    private int F;
    private ChangeCurrentByOneFromLongPressCommand G;
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
    private int V;
    private int W;
    private int aa;
    private boolean ab;
    private boolean ac;
    private SupportAccessibilityNodeProvider ad;
    private final PressedStateHelper ae;
    private int af;
    private OnTimeSelectedListener ag;
    private final ImageButton b;
    private final ImageButton c;
    private final TextView d;
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
    private boolean q;
    private OnValueChangeListener r;
    private OnScrollListener s;
    private Formatter t;
    private long u;
    private final SparseArray v;
    private final int w[];
    private final Paint x;
    private final Paint y;
    private final Paint z;

    public SnapchatTimePicker(Context context)
    {
        this(context, null);
    }

    public SnapchatTimePicker(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, R.attr.snapchatTimePickerStyle);
    }

    public SnapchatTimePicker(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset);
        q = false;
        u = 300L;
        v = new SparseArray();
        w = new int[3];
        B = 0x80000000;
        T = 0;
        af = -1;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, R.styleable.SnapchatTimePicker, i1, 0);
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
        typedarray.recycle();
        ae = new PressedStateHelper();
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

            final SnapchatTimePicker a;

            public void onClick(View view)
            {
                SnapchatTimePicker.a(a).clearFocus();
                if (view.getId() == R.id.np__increment)
                {
                    SnapchatTimePicker.a(a, true);
                    return;
                } else
                {
                    SnapchatTimePicker.a(a, false);
                    return;
                }
            }

            
            {
                a = SnapchatTimePicker.this;
                super();
            }
        };
        onlongclicklistener = new android.view.View.OnLongClickListener() {

            final SnapchatTimePicker a;

            public boolean onLongClick(View view)
            {
                SnapchatTimePicker.a(a).clearFocus();
                if (view.getId() == R.id.np__increment)
                {
                    SnapchatTimePicker.a(a, true, 0L);
                    return true;
                } else
                {
                    SnapchatTimePicker.a(a, false, 0L);
                    return true;
                }
            }

            
            {
                a = SnapchatTimePicker.this;
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
        d = (TextView)findViewById(R.id.np__numberpicker_input);
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
        x = paint;
        y = new Paint();
        y.setAntiAlias(true);
        y.setTextAlign(android.graphics.Paint.Align.CENTER);
        y.setTypeface(FontUtils.a);
        y.setTextSize(e);
        y.setColor(0xff000000);
        z = new Paint(y);
        z.setColor(Color.argb(150, 0, 0, 0));
        z.setTypeface(FontUtils.a);
        z.setTextSize((float)e / 1.7F);
        D = new Scroller(getContext(), null, true);
        E = new Scroller(getContext(), new DecelerateInterpolator(2.5F));
        e();
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

    static TextView a(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.d;
    }

    private void a()
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
                    float f3 = x.measureText(f(j2));
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
                    f1 = x.measureText(m[k1]);
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

    private void a(int i1)
    {
        if (T != i1)
        {
            T = i1;
            if (s != null)
            {
                s.a(this, i1);
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
        e();
        if (flag)
        {
            b(k1, j1);
        }
        b();
        invalidate();
    }

    static void a(SnapchatTimePicker snapchattimepicker, boolean flag)
    {
        snapchattimepicker.a(flag);
    }

    static void a(SnapchatTimePicker snapchattimepicker, boolean flag, long l1)
    {
        snapchattimepicker.a(flag, l1);
    }

    private void a(boolean flag)
    {
        if (Q)
        {
            d.setVisibility(4);
            if (!a(D))
            {
                a(E);
            }
            F = 0;
            if (flag)
            {
                D.a(0, 0, 0, -A, 300);
            } else
            {
                D.a(0, 0, 0, A, 300);
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
        if (G == null)
        {
            G = new ChangeCurrentByOneFromLongPressCommand();
        } else
        {
            removeCallbacks(G);
        }
        ChangeCurrentByOneFromLongPressCommand.a(G, flag);
        postDelayed(G, l1);
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

    private boolean a(Scroller scroller)
    {
        scroller.a(true);
        int i1 = scroller.e() - scroller.b();
        int j1 = (i1 + C) % A;
        int k1 = B - j1;
        if (k1 != 0)
        {
            if (Math.abs(k1) > A / 2)
            {
                if (k1 > 0)
                {
                    k1 -= A;
                } else
                {
                    k1 += A;
                }
            }
            scrollBy(0, k1 + i1);
            return true;
        } else
        {
            return false;
        }
    }

    static boolean a(SnapchatTimePicker snapchattimepicker, int i1)
    {
        boolean flag = (byte)(i1 ^ snapchattimepicker.ab);
        snapchattimepicker.ab = flag;
        return flag;
    }

    private int b(int i1, int j1, int k1)
    {
        if (i1 != -1)
        {
            j1 = a(Math.max(i1, j1), k1, 0);
        }
        return j1;
    }

    private void b()
    {
        v.clear();
        int ai[] = w;
        int i1 = getValue();
        for (int j1 = 0; j1 < w.length; j1++)
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

    private void b(int i1)
    {
        F = 0;
        if (i1 > 0)
        {
            D.a(0, 0, 0, i1, 0, 0, 0, 0x7fffffff);
        } else
        {
            D.a(0, 0x7fffffff, 0, i1, 0, 0, 0, 0x7fffffff);
        }
        invalidate();
    }

    private void b(int i1, int j1)
    {
        if (r != null)
        {
            r.a(this, i1, p);
        }
    }

    private void b(Scroller scroller)
    {
        if (scroller == D)
        {
            if (!h())
            {
                e();
            }
            a(0);
        } else
        if (T != 1)
        {
            e();
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

    static boolean b(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.ab;
    }

    static boolean b(SnapchatTimePicker snapchattimepicker, int i1)
    {
        boolean flag = (byte)(i1 ^ snapchattimepicker.ac);
        snapchattimepicker.ac = flag;
        return flag;
    }

    static boolean b(SnapchatTimePicker snapchattimepicker, boolean flag)
    {
        snapchattimepicker.ab = flag;
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

    static int c(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.W;
    }

    static int c(SnapchatTimePicker snapchattimepicker, int i1)
    {
        return snapchattimepicker.c(i1);
    }

    private void c()
    {
        b();
        int ai[] = w;
        int i1 = ai.length * k;
        l = (int)(0.5F + (float)(getBottom() - getTop() - i1) / (float)ai.length);
        A = k + l;
        B = (d.getBaseline() + d.getTop()) - 1 * A;
        C = B;
        e();
    }

    static boolean c(SnapchatTimePicker snapchattimepicker, boolean flag)
    {
        snapchattimepicker.ac = flag;
        return flag;
    }

    static String d(SnapchatTimePicker snapchattimepicker, int i1)
    {
        return snapchattimepicker.e(i1);
    }

    private void d()
    {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength((getBottom() - getTop() - k) / 2);
    }

    private void d(int i1)
    {
        SparseArray sparsearray = v;
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

    static boolean d(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.ac;
    }

    static boolean d(SnapchatTimePicker snapchattimepicker, boolean flag)
    {
        snapchattimepicker.U = flag;
        return flag;
    }

    static int e(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.V;
    }

    private String e(int i1)
    {
        if (t != null)
        {
            return t.a(i1);
        } else
        {
            return f(i1);
        }
    }

    private boolean e()
    {
        String s1;
        if (m == null)
        {
            s1 = e(p);
        } else
        {
            s1 = m[p - n];
        }
        return !TextUtils.isEmpty(s1) && !s1.equals(d.getText().toString());
    }

    static long f(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.u;
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
        if (G != null)
        {
            removeCallbacks(G);
        }
    }

    static OnTimeSelectedListener g(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.ag;
    }

    private void g()
    {
        if (G != null)
        {
            removeCallbacks(G);
        }
        ae.a();
    }

    private SupportAccessibilityNodeProvider getSupportAccessibilityNodeProvider()
    {
        return new SupportAccessibilityNodeProvider();
    }

    public static final Formatter getTwoDigitFormatter()
    {
        return a;
    }

    static int h(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.S;
    }

    private boolean h()
    {
        int i1 = B - C;
        boolean flag = false;
        if (i1 != 0)
        {
            F = 0;
            if (Math.abs(i1) > A / 2)
            {
                int j1;
                if (i1 > 0)
                {
                    j1 = -A;
                } else
                {
                    j1 = A;
                }
                i1 += j1;
            }
            E.a(0, 0, 0, i1, 800);
            invalidate();
            flag = true;
        }
        return flag;
    }

    static int i(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.p;
    }

    static boolean j(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.O;
    }

    static int k(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.n;
    }

    static String[] l(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.m;
    }

    static int m(SnapchatTimePicker snapchattimepicker)
    {
        return snapchattimepicker.o;
    }

    public void computeScroll()
    {
        Scroller scroller = D;
        if (scroller.a())
        {
            scroller = E;
            if (scroller.a())
            {
                return;
            }
        }
        scroller.f();
        int i1 = scroller.b();
        if (F == 0)
        {
            F = scroller.d();
        }
        scrollBy(0, i1 - F);
        F = i1;
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
        if (i1 < V)
        {
            j1 = 3;
        } else
        if (i1 > W)
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
        aa = j1;
        supportaccessibilitynodeprovider.a(j1, 64, null);
        continue; /* Loop/switch isn't completed */
_L3:
        if (aa != j1 && aa != -1)
        {
            supportaccessibilitynodeprovider.a(aa, 256);
            supportaccessibilitynodeprovider.a(j1, 128);
            aa = j1;
            supportaccessibilitynodeprovider.a(j1, 64, null);
        }
        continue; /* Loop/switch isn't completed */
_L5:
        supportaccessibilitynodeprovider.a(j1, 256);
        aa = -1;
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
        g();
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
        af = i1;
        g();
        if (!D.a()) goto _L10; else goto _L9
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
        if (af != i1) goto _L12; else goto _L11
_L11:
        af = -1;
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
        g();
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
        g();
        if (true) goto _L1; else goto _L3
_L3:
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider()
    {
        if (!Q)
        {
            return super.getAccessibilityNodeProvider();
        }
        if (ad == null)
        {
            ad = new SupportAccessibilityNodeProvider();
        }
        return ad.a;
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
        g();
    }

    protected void onDraw(Canvas canvas)
    {
        if (!Q)
        {
            super.onDraw(canvas);
            return;
        }
        float f1 = (getRight() - getLeft()) / 2;
        float f2 = (float)(C - e) + 0.95F * (float)A;
        int ai[] = w;
        int i1 = 0;
        float f3 = f2;
        for (; i1 < ai.length; i1++)
        {
            int l1 = ai[i1];
            canvas.drawText((String)v.get(l1), f1 + (float)A / 5F, f3, y);
            f3 += A;
        }

        if (R != null)
        {
            int j1 = V;
            int k1 = W;
            R.setBounds(0, j1, getRight(), k1);
            R.draw(canvas);
        }
        String s1;
        if (p == 1)
        {
            s1 = "      second";
        } else
        {
            s1 = "       seconds";
        }
        canvas.drawText(s1, f1 + (float)A / 4F, 1.1F * (float)B + (float)(A * (ai.length / 2)), z);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(net/simonvt/numberpicker/SnapchatTimePicker.getName());
        accessibilityevent.setScrollable(true);
        accessibilityevent.setScrollY((n + p) * A);
        accessibilityevent.setMaxScrollY((o - n) * A);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (Q && isEnabled()) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        switch (0xff & motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            g();
            break;
        }
        d.setVisibility(4);
        float f1 = motionevent.getY();
        H = f1;
        J = f1;
        I = motionevent.getEventTime();
        U = false;
        q = false;
        if (H < (float)V)
        {
            if (T == 0)
            {
                ae.a(2);
            }
        } else
        if (H > (float)W && T == 0)
        {
            ae.a(flag);
        }
        getParent().requestDisallowInterceptTouchEvent(flag);
        if (D.a())
        {
            break; /* Loop/switch isn't completed */
        }
        D.a(flag);
        E.a(flag);
        a(0);
        if (p != getMinValue() && p != getMaxValue())
        {
            q = flag;
            return flag;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!E.a())
        {
            D.a(flag);
            E.a(flag);
            return flag;
        }
        if (H < (float)V)
        {
            a(false, ViewConfiguration.getLongPressTimeout());
            return flag;
        }
        if (H > (float)W)
        {
            a(flag, ViewConfiguration.getLongPressTimeout());
            return flag;
        }
        if (true) goto _L4; else goto _L5
_L5:
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
                c();
                d();
                V = (getHeight() - e) / 2 - S;
                W = V + 2 * S + e;
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
            f();
            ae.a();
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
                    int l1 = -1 + j1 / A;
                    if (l1 > 0)
                    {
                        a(flag);
                        ae.b(flag);
                    } else
                    if (l1 < 0)
                    {
                        a(false);
                        ae.b(2);
                    } else
                    if (!q)
                    {
                        ag.a();
                    }
                }
                h();
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
                g();
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
        int ai[] = w;
        if (!O && j1 > 0 && ai[1] <= n)
        {
            C = B;
        } else
        {
            if (!O && j1 < 0 && ai[1] >= o)
            {
                C = B;
                return;
            }
            C = j1 + C;
            do
            {
                if (C - B <= l)
                {
                    break;
                }
                C = C - A;
                b(ai);
                a(ai[1], true);
                if (!O && ai[1] <= n)
                {
                    C = B;
                }
            } while (true);
            while (C - B < -l) 
            {
                C = C + A;
                a(ai);
                a(ai[1], true);
                if (!O && ai[1] >= o)
                {
                    C = B;
                }
            }
        }
    }

    public void setDisplayedValues(String as[])
    {
        if (m == as)
        {
            return;
        } else
        {
            m = as;
            e();
            b();
            a();
            return;
        }
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
    }

    public void setFormatter(Formatter formatter)
    {
        if (formatter == t)
        {
            return;
        } else
        {
            t = formatter;
            b();
            e();
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
        if (o - n > w.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWrapSelectorWheel(flag);
        b();
        e();
        a();
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
        if (o - n > w.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWrapSelectorWheel(flag);
        b();
        e();
        a();
        invalidate();
    }

    public void setOnLongPressUpdateInterval(long l1)
    {
        u = l1;
    }

    public void setOnScrollListener(OnScrollListener onscrolllistener)
    {
        s = onscrolllistener;
    }

    public void setOnTimeSelectedListener(OnTimeSelectedListener ontimeselectedlistener)
    {
        ag = ontimeselectedlistener;
    }

    public void setOnValueChangedListener(OnValueChangeListener onvaluechangelistener)
    {
        r = onvaluechangelistener;
    }

    public void setValue(int i1)
    {
        a(i1, false);
    }

    public void setWrapSelectorWheel(boolean flag)
    {
        boolean flag1;
        if (o - n >= w.length)
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
