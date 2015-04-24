// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.view.View;
import android.view.WindowInsets;

// Referenced classes of package android.support.v4.widget:
//            DrawerLayoutImpl

class DrawerLayoutCompatApi21
{
    static class InsetsListener
        implements android.view.View.OnApplyWindowInsetsListener
    {

        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowinsets)
        {
            DrawerLayoutImpl drawerlayoutimpl = (DrawerLayoutImpl)view;
            boolean flag;
            if (windowinsets.getSystemWindowInsetTop() > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            drawerlayoutimpl.setChildInsets(windowinsets, flag);
            return windowinsets.consumeSystemWindowInsets();
        }

        InsetsListener()
        {
        }
    }


    DrawerLayoutCompatApi21()
    {
    }

    public static void applyMarginInsets(android.view.ViewGroup.MarginLayoutParams marginlayoutparams, Object obj, int i)
    {
        WindowInsets windowinsets = (WindowInsets)obj;
        if (i != 3) goto _L2; else goto _L1
_L1:
        windowinsets = windowinsets.replaceSystemWindowInsets(windowinsets.getSystemWindowInsetLeft(), windowinsets.getSystemWindowInsetTop(), 0, windowinsets.getSystemWindowInsetBottom());
_L4:
        marginlayoutparams.leftMargin = windowinsets.getSystemWindowInsetLeft();
        marginlayoutparams.topMargin = windowinsets.getSystemWindowInsetTop();
        marginlayoutparams.rightMargin = windowinsets.getSystemWindowInsetRight();
        marginlayoutparams.bottomMargin = windowinsets.getSystemWindowInsetBottom();
        return;
_L2:
        if (i == 5)
        {
            windowinsets = windowinsets.replaceSystemWindowInsets(0, windowinsets.getSystemWindowInsetTop(), windowinsets.getSystemWindowInsetRight(), windowinsets.getSystemWindowInsetBottom());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void configureApplyInsets(View view)
    {
        if (view instanceof DrawerLayoutImpl)
        {
            view.setOnApplyWindowInsetsListener(new InsetsListener());
            view.setSystemUiVisibility(1280);
        }
    }

    public static void dispatchChildInsets(View view, Object obj, int i)
    {
        WindowInsets windowinsets = (WindowInsets)obj;
        if (i != 3) goto _L2; else goto _L1
_L1:
        windowinsets = windowinsets.replaceSystemWindowInsets(windowinsets.getSystemWindowInsetLeft(), windowinsets.getSystemWindowInsetTop(), 0, windowinsets.getSystemWindowInsetBottom());
_L4:
        view.dispatchApplyWindowInsets(windowinsets);
        return;
_L2:
        if (i == 5)
        {
            windowinsets = windowinsets.replaceSystemWindowInsets(0, windowinsets.getSystemWindowInsetTop(), windowinsets.getSystemWindowInsetRight(), windowinsets.getSystemWindowInsetBottom());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int getTopInset(Object obj)
    {
        if (obj != null)
        {
            return ((WindowInsets)obj).getSystemWindowInsetTop();
        } else
        {
            return 0;
        }
    }
}
