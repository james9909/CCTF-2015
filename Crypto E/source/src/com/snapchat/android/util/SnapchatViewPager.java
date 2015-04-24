// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.eventbus.AllowAccessToChatFragmentEvent;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SimulatedViewPagerDownEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.eventbus.UserFlingedIntoChatEvent;
import com.snapchat.android.util.eventbus.UserSwipedIntoChatEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.util:
//            ShiftAnimator, SnapchatPagerAdapter

public class SnapchatViewPager extends ViewPager
    implements ShiftAnimator.ShiftAnimatorInterface
{
    static final class MotionHandledEnum extends Enum
    {

        public static final MotionHandledEnum a;
        public static final MotionHandledEnum b;
        private static final MotionHandledEnum c[];

        public static MotionHandledEnum valueOf(String s)
        {
            return (MotionHandledEnum)Enum.valueOf(com/snapchat/android/util/SnapchatViewPager$MotionHandledEnum, s);
        }

        public static MotionHandledEnum[] values()
        {
            return (MotionHandledEnum[])c.clone();
        }

        static 
        {
            a = new MotionHandledEnum("MOTION_HANDLED_REJECT", 0);
            b = new MotionHandledEnum("MOTION_NOT_HANDLED", 1);
            MotionHandledEnum amotionhandledenum[] = new MotionHandledEnum[2];
            amotionhandledenum[0] = a;
            amotionhandledenum[1] = b;
            c = amotionhandledenum;
        }

        private MotionHandledEnum(String s, int i)
        {
            super(s, i);
        }
    }


    private boolean a;
    private boolean b;
    private SnapchatPagerAdapter c;
    private int d;
    private int e;
    private float f;
    private UserSwipedIntoChatEvent g;
    private NetworkAnalytics h;

    public SnapchatViewPager(Context context)
    {
        super(context);
        a = true;
        b = false;
        d = -1;
        e = -1;
        f = -1F;
        h = NetworkAnalytics.a();
        setOffscreenPageLimit(2);
    }

    public SnapchatViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = true;
        b = false;
        d = -1;
        e = -1;
        f = -1F;
        h = NetworkAnalytics.a();
        setOffscreenPageLimit(2);
    }

    private MotionHandledEnum a(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1 && g != null && g.a != null)
        {
            View view = g.a.findViewById(0x7f0a01d7);
            if (view != null)
            {
                (new ShiftAnimator(view, (int)view.getTranslationX(), 0, this)).a();
                if (g != null)
                {
                    g.a = null;
                }
            }
        }
        if (g != null)
        {
            return MotionHandledEnum.b;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 116
    //                   0 128
    //                   1 116
    //                   2 139;
           goto _L1 _L2 _L1 _L3
_L1:
        f = motionevent.getRawX();
        return MotionHandledEnum.b;
_L2:
        f = motionevent.getRawX();
        continue; /* Loop/switch isn't completed */
_L3:
        if (motionevent.getRawX() > f && (d == 1 && e == 0 || d == 0 && e == 0))
        {
            return MotionHandledEnum.a;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void e()
    {
        try
        {
            setCurrentItem(2, false);
            setCurrentItem(1, false);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.a("SnapchatViewPager", illegalstateexception);
        }
    }

    public void a()
    {
        g = null;
    }

    public void a(int i)
    {
        CameraEventAnalytics.a().f();
    }

    public SnapchatFragment b(int i)
    {
        if (c == null)
        {
            return null;
        } else
        {
            return (SnapchatFragment)c.b(this, i);
        }
    }

    public void b()
    {
        h.c();
    }

    public void c()
    {
        h.d();
    }

    public void d()
    {
        UserPrefs.y(true);
    }

    public boolean executeKeyEvent(KeyEvent keyevent)
    {
        return false;
    }

    public void onAllowAccessToChatFragmentEvent(AllowAccessToChatFragmentEvent allowaccesstochatfragmentevent)
    {
        b = allowaccesstochatfragmentevent.a;
    }

    public void onArtificialMotionDown(SimulatedViewPagerDownEvent simulatedviewpagerdownevent)
    {
        onTouchEvent(simulatedviewpagerdownevent.a);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        MotionHandledEnum motionhandledenum;
        if (motionevent.getPointerCount() > 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        motionhandledenum = a(motionevent);
        if (!a || flag || motionhandledenum == MotionHandledEnum.a)
        {
            return false;
        }
        boolean flag1;
        try
        {
            flag1 = super.onInterceptTouchEvent(motionevent);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return true;
        }
        return flag1;
    }

    protected void onPageScrolled(int i, float f1, int j)
    {
        super.onPageScrolled(i, f1, j);
        if (d == -1)
        {
            d = i;
        }
        if (e == -1)
        {
            e = j;
        }
        if (d == 3 && i == 2 || d == 1 && e == 0 && j != 0 && i == 1 || d == 0 && i == 2)
        {
            BusProvider.a().a(new TitleBarEvent(false));
            CameraEventAnalytics.a().a(com.snapchat.android.analytics.CameraEventAnalytics.CameraContext.SWIPE);
        }
        if (i == 1 && f1 == 0.0F || d == 2 && i > 2 || d == 1 && i < 1)
        {
            BusProvider.a().a(new TitleBarEvent(true));
        }
        if (i == 0 && !b)
        {
            e();
        }
        if (i == 1 && f1 == 0.0F)
        {
            b = false;
        }
        if (j != 0) goto _L2; else goto _L1
_L1:
        if (i != 3) goto _L4; else goto _L3
_L3:
        b();
_L2:
        d = i;
        e = j;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(d);
        aobj[1] = Integer.valueOf(e);
        Timber.a("SnapchatViewPager", false, "onPageScrolled position [%d] offset [%d]", aobj);
        return;
_L4:
        if (i == 1)
        {
            c();
        } else
        if (i == 4)
        {
            d();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        int i = getCurrentItem();
        super.onRestoreInstanceState(parcelable);
        setCurrentItem(i);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        while (a(motionevent) == MotionHandledEnum.a || !a) 
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = super.onTouchEvent(motionevent);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return true;
        }
        return flag;
    }

    public void onUserFlingedIntoChatEvent(UserFlingedIntoChatEvent userflingedintochatevent)
    {
        b = true;
        setCurrentItem(0, true);
    }

    public void onUserSwipedIntoChatEvent(UserSwipedIntoChatEvent userswipedintochatevent)
    {
        g = userswipedintochatevent;
    }

    public void setAdapter(SnapchatPagerAdapter snapchatpageradapter)
    {
        super.setAdapter(snapchatpageradapter);
        c = snapchatpageradapter;
    }

    public void setChatFragmentAccessible(boolean flag)
    {
        b = flag;
    }

    public void setPagingEnabled(boolean flag)
    {
        a = flag;
    }
}
