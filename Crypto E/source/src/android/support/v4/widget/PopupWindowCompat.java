// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.view.View;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v4.widget:
//            PopupWindowCompatKitKat

public class PopupWindowCompat
{
    static class BasePopupWindowImpl
        implements PopupWindowImpl
    {

        public void showAsDropDown(PopupWindow popupwindow, View view, int i, int j, int k)
        {
            popupwindow.showAsDropDown(view, i, j);
        }

        BasePopupWindowImpl()
        {
        }
    }

    static class KitKatPopupWindowImpl extends BasePopupWindowImpl
    {

        public void showAsDropDown(PopupWindow popupwindow, View view, int i, int j, int k)
        {
            PopupWindowCompatKitKat.showAsDropDown(popupwindow, view, i, j, k);
        }

        KitKatPopupWindowImpl()
        {
        }
    }

    static interface PopupWindowImpl
    {

        public abstract void showAsDropDown(PopupWindow popupwindow, View view, int i, int j, int k);
    }


    static final PopupWindowImpl IMPL;

    private PopupWindowCompat()
    {
    }

    public static void showAsDropDown(PopupWindow popupwindow, View view, int i, int j, int k)
    {
        IMPL.showAsDropDown(popupwindow, view, i, j, k);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            IMPL = new KitKatPopupWindowImpl();
        } else
        {
            IMPL = new BasePopupWindowImpl();
        }
    }
}
