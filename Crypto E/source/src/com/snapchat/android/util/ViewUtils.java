// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.Recyclable;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.squareup.otto.Bus;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class ViewUtils
{

    private static final AtomicInteger a = new AtomicInteger(1);

    private ViewUtils()
    {
    }

    public static float a(float f1, Context context)
    {
        return f1 * ((float)context.getResources().getDisplayMetrics().densityDpi / 160F);
    }

    public static int a(int i)
    {
label0:
        {
label1:
            {
                byte byte0 = 0;
                switch (i)
                {
                default:
                    boolean flag = ReleaseManager.e();
                    byte0 = 0;
                    if (flag)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Unexpected rotation: ").append(i).toString());
                    }
                    break;

                case 0: // '\0'
                    break;

                case 2: // '\002'
                    break label1;

                case 3: // '\003'
                    break label0;

                case 1: // '\001'
                    byte0 = 90;
                    break;
                }
                return byte0;
            }
            return 180;
        }
        return 270;
    }

    public static int a(int i, int j)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        flag = c(i);
        flag1 = f(i);
        flag2 = d(i);
        flag3 = e(i);
        j;
        JVM INSTR tableswitch 0 3: default 52
    //                   0 85
    //                   1 121
    //                   2 134
    //                   3 151;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_151;
_L1:
        if (ReleaseManager.e())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected rotation: ").append(j).toString());
        }
          goto _L6
_L2:
        boolean flag7 = flag1;
        flag1 = flag;
        flag = flag2;
        flag2 = flag7;
_L7:
        boolean flag4;
        byte byte0;
        int k;
        boolean flag5;
        boolean flag6;
        if (flag1)
        {
            byte0 = 48;
        } else
        if (flag)
        {
            byte0 = 80;
        } else
        {
            byte0 = 16;
        }
        if (flag3)
        {
            k = byte0 | 3;
        } else
        if (flag2)
        {
            k = byte0 | 5;
        } else
        {
            k = byte0 | 1;
        }
        i = k;
_L6:
        return i;
_L3:
        flag6 = flag;
        flag = flag3;
        flag3 = flag6;
          goto _L7
_L4:
        flag5 = flag3;
        flag3 = flag1;
        flag1 = flag2;
        flag2 = flag5;
          goto _L7
        flag4 = flag;
        flag = flag1;
        flag1 = flag3;
        flag3 = flag2;
        flag2 = flag4;
          goto _L7
    }

    public static int a(Context context)
    {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int a(DisplayMetrics displaymetrics, boolean flag)
    {
        if (flag)
        {
            return Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        } else
        {
            return Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        }
    }

    public static ValueAnimator a(View view, int i, int j, int k)
    {
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            i, j
        });
        valueanimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueanimator.setDuration(k);
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(view) {

            final View a;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                int l = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                layoutparams.height = l;
                a.setLayoutParams(layoutparams);
            }

            
            {
                a = view;
                super();
            }
        });
        return valueanimator;
    }

    public static ColorFilter a(double d1, double d2)
    {
        float af[][] = {
            {
                0.299F, 0.587F, 0.114F
            }, {
                0.596F, -0.274F, -0.321F
            }, {
                0.211F, -0.523F, 0.311F
            }
        };
        float af1[][] = new float[3][];
        float af2[] = new float[3];
        af2[0] = (float)d2;
        af2[1] = 0.0F;
        af2[2] = 0.0F;
        af1[0] = af2;
        float af3[] = new float[3];
        af3[0] = 0.0F;
        af3[1] = (float)Math.cos(d1);
        af3[2] = (float)(-Math.sin(d1));
        af1[1] = af3;
        float af4[] = new float[3];
        af4[0] = 0.0F;
        af4[1] = (float)Math.sin(d1);
        af4[2] = (float)Math.cos(d1);
        af1[2] = af4;
        float af5[][] = a(a(new float[][] {
            new float[] {
                1.0F, 0.956F, 0.621F
            }, new float[] {
                1.0F, -0.272F, -0.647F
            }, new float[] {
                1.0F, -1.107F, 1.705F
            }
        }, af1), af);
        float af6[] = new float[20];
        af6[0] = af5[0][0];
        af6[1] = af5[0][1];
        af6[2] = af5[0][2];
        af6[3] = 0.0F;
        af6[4] = 0.0F;
        af6[5] = af5[1][0];
        af6[6] = af5[1][1];
        af6[7] = af5[1][2];
        af6[8] = 0.0F;
        af6[9] = 0.0F;
        af6[10] = af5[2][0];
        af6[11] = af5[2][1];
        af6[12] = af5[2][2];
        af6[13] = 0.0F;
        af6[14] = 0.0F;
        af6[15] = 0.0F;
        af6[16] = 0.0F;
        af6[17] = 0.0F;
        af6[18] = 1.0F;
        af6[19] = 0.0F;
        return new ColorMatrixColorFilter(af6);
    }

    public static String a(DisplayMetrics displaymetrics)
    {
        switch (displaymetrics.densityDpi)
        {
        default:
            return "DENSITY_UNKNOWN";

        case 120: // 'x'
            return "DENSITY_LOW";

        case 160: 
            return "DENSITY_MEDIUM";

        case 240: 
            return "DENSITY_HIGH";

        case 320: 
            return "DENSITY_XHIGH";

        case 480: 
            return "DENSITY_XXHIGH";

        case 640: 
            return "DENSITY_XXXHIGH";

        case 213: 
            return "DENSITY_TV";

        case 400: 
            return "DENSITY_400";

        case 560: 
            return "DENSITY_560";
        }
    }

    public static List a(ViewGroup viewgroup)
    {
        ArrayList arraylist = new ArrayList();
        int i = viewgroup.getChildCount();
        for (int j = 0; j < i; j++)
        {
            arraylist.add(viewgroup.getChildAt(j));
        }

        return arraylist;
    }

    public static void a(Context context, View view)
    {
        if (context == null)
        {
            Timber.d("ViewUtils", "Attempting to hide keyboard with null context", new Object[0]);
            return;
        } else
        {
            ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            return;
        }
    }

    public static void a(View view)
    {
        view.setPadding(0, 0, 0, 0);
    }

    public static void a(View view, int i)
    {
        view.setVisibility(0);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        a(view, 0, b(view), i).start();
    }

    public static void a(View view, Drawable drawable)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            view.setBackground(drawable);
            return;
        } else
        {
            view.setBackgroundDrawable(drawable);
            return;
        }
    }

    public static void a(View view, View view1, int i)
    {
        view.post(new Runnable(view1, i, view) {

            final View a;
            final int b;
            final View c;

            public void run()
            {
                Rect rect = new Rect();
                a.getHitRect(rect);
                rect.top = rect.top - b;
                rect.left = rect.left - b;
                rect.right = rect.right + b;
                rect.bottom = rect.bottom + b;
                c.setTouchDelegate(new TouchDelegate(rect, a));
            }

            
            {
                a = view;
                b = i;
                c = view1;
                super();
            }
        });
    }

    public static void a(View view, Window window)
    {
        a(view);
        window.clearFlags(512);
        window.addFlags(256);
    }

    public static void a(View view, boolean flag)
    {
        BusProvider.a().a(new TitleBarEvent(flag));
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 2;
        }
        view.setSystemUiVisibility(i);
    }

    public static void a(Window window, View view, Context context)
    {
        if (view == null)
        {
            return;
        } else
        {
            a(true, window);
            view.setPadding(0, (int)a(25F, context), 0, 0);
            return;
        }
    }

    public static void a(Window window, boolean flag)
    {
        if (flag)
        {
            window.addFlags(1024);
            window.clearFlags(2048);
            return;
        } else
        {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
    }

    public static void a(boolean flag, Window window)
    {
        if (window != null)
        {
            boolean flag1;
            if ((0x200 & window.getAttributes().flags) != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag != flag1)
            {
                if (flag)
                {
                    window.addFlags(768);
                    return;
                } else
                {
                    window.clearFlags(512);
                    return;
                }
            }
        }
    }

    public static boolean a(Window window)
    {
        while (window == null || (0x400 & window.getAttributes().flags) == 0) 
        {
            return false;
        }
        return true;
    }

    private static float[][] a(float af[][], float af1[][])
    {
        int i = af.length;
        int j = af[0].length;
        int _tmp = af1.length;
        int k = af1[0].length;
        int ai[] = {
            i, k
        };
        float af2[][] = (float[][])Array.newInstance(Float.TYPE, ai);
        for (int l = 0; l < i; l++)
        {
            for (int i1 = 0; i1 < k; i1++)
            {
                for (int j1 = 0; j1 < j; j1++)
                {
                    float af3[] = af2[l];
                    af3[i1] = af3[i1] + af[l][j1] * af1[j1][i1];
                }

            }

        }

        return af2;
    }

    public static float b(float f1, Context context)
    {
        return f1 / ((float)context.getResources().getDisplayMetrics().densityDpi / 160F);
    }

    public static int b(Context context)
    {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int b(DisplayMetrics displaymetrics, boolean flag)
    {
        if (flag)
        {
            return Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        } else
        {
            return Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        }
    }

    public static int b(View view)
    {
        boolean flag;
        int i;
        if (view.getVisibility() == 8)
        {
            flag = true;
            view.setVisibility(4);
        } else
        {
            flag = false;
        }
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        i = view.getMeasuredHeight();
        if (flag)
        {
            view.setVisibility(8);
        }
        return i;
    }

    public static ValueAnimator b(View view, int i)
    {
        ValueAnimator valueanimator = a(view, view.getHeight(), 0, i);
        valueanimator.addListener(new android.animation.Animator.AnimatorListener(view) {

            final View a;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                a.setVisibility(8);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                a = view;
                super();
            }
        });
        valueanimator.start();
        return valueanimator;
    }

    public static boolean b(int i)
    {
        boolean flag = false;
        switch (i)
        {
        default:
            boolean flag1 = ReleaseManager.e();
            flag = false;
            if (flag1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unexpected rotation: ").append(i).toString());
            }
            break;

        case 0: // '\0'
        case 2: // '\002'
            flag = true;
            break;

        case 1: // '\001'
        case 3: // '\003'
            break;
        }
        return flag;
    }

    public static int c(Context context)
    {
        int i;
        try
        {
            i = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
        }
        catch (RuntimeException runtimeexception)
        {
            runtimeexception.printStackTrace();
            return 0;
        }
        return i;
    }

    public static ValueAnimator c(View view)
    {
        return b(view, 300);
    }

    public static void c(View view, int i)
    {
        if (view != null)
        {
            view.setVisibility(i);
        }
    }

    public static boolean c(int i)
    {
        return (0xffffffef & (i & 0x30)) != 0;
    }

    public static void d(View view)
    {
        if (view != null && (view instanceof ViewGroup))
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i = -1 + viewgroup.getChildCount();
            while (i >= 0) 
            {
                e(viewgroup.getChildAt(i));
                i--;
            }
        }
    }

    public static boolean d(int i)
    {
        return (0xffffffef & (i & 0x50)) != 0;
    }

    public static boolean d(Context context)
    {
        Display display;
        try
        {
            display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        }
        catch (RuntimeException runtimeexception)
        {
            runtimeexception.printStackTrace();
            return true;
        }
        return display.getWidth() < display.getHeight();
    }

    public static void e(Context context)
    {
        if (context == null)
        {
            Timber.d("ViewUtils", "Attempting to show keyboard with null context", new Object[0]);
            return;
        } else
        {
            ((InputMethodManager)context.getSystemService("input_method")).toggleSoftInput(2, 1);
            return;
        }
    }

    public static void e(View view)
    {
        if (view != null)
        {
            d(view);
            if (view instanceof Recyclable)
            {
                ((Recyclable)view).c();
                return;
            }
        }
    }

    public static boolean e(int i)
    {
        return (-2 & (i & 3)) != 0;
    }

    public static void f(Context context)
    {
        if (context == null)
        {
            Timber.d("ViewUtils", "Attempting to show keyboard with null context", new Object[0]);
            return;
        } else
        {
            ((InputMethodManager)context.getSystemService("input_method")).toggleSoftInput(1, 1);
            return;
        }
    }

    public static void f(View view)
    {
        ViewGroup viewgroup = (ViewGroup)view.getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(view);
            viewgroup.addView(view, 0);
        }
    }

    public static boolean f(int i)
    {
        return (-2 & (i & 5)) != 0;
    }

    public static int g(View view)
    {
        View view1 = view.getRootView();
        int i;
        int j;
        View view2;
        do
        {
            i = a.get();
            j = i + 1;
            if (j > 0xffffff)
            {
                j = 1;
            }
            view2 = view1.findViewById(j);
        } while (!a.compareAndSet(i, j) || view2 != null);
        return i;
    }

}
