// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.Html;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.camera.AutofocusCrosshair;
import com.snapchat.android.camera.CameraUtils;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.UnviewedContentCount;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.TakeSnapButton;
import com.snapchat.android.util.BouncyToucher;
import com.snapchat.android.util.EmojiUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ProfileViewFlipEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CameraDecor

public class DefaultCameraDecor extends CameraDecor
    implements android.view.View.OnTouchListener
{
    class CameraTapListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        final DefaultCameraDecor a;

        public boolean onDoubleTapEvent(MotionEvent motionevent)
        {
            if (motionevent.getActionMasked() == 0 && a.a != null)
            {
                a.j.a();
                a.a.w();
            }
            return true;
        }

        public boolean onSingleTapUp(MotionEvent motionevent)
        {
            a.a.b(motionevent);
            return true;
        }

        private CameraTapListener()
        {
            a = DefaultCameraDecor.this;
            super();
        }

    }

    class ZoomListener extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
    {

        final DefaultCameraDecor a;

        public boolean onScale(ScaleGestureDetector scalegesturedetector)
        {
            a.a.a(scalegesturedetector.getScaleFactor());
            return true;
        }

        private ZoomListener()
        {
            a = DefaultCameraDecor.this;
            super();
        }

    }


    protected final Context b;
    protected final SharedPreferences c;
    protected final ImageButton d;
    protected final ImageButton e;
    protected final TextView f;
    protected final TextView g;
    protected final TakeSnapButton h;
    protected final ImageButton i;
    protected final BouncyToucher j;
    protected final View k;
    protected final View l;
    protected final TextView m;
    private boolean n;
    private ScaleGestureDetector o;
    private GestureDetector p;
    private AutofocusCrosshair q;
    private String r;

    public DefaultCameraDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface)
    {
        super(context, relativelayout, cameradecorinterface);
        n = false;
        b = context;
        c = PreferenceManager.getDefaultSharedPreferences(b);
        LayoutInflater layoutinflater = (LayoutInflater)b.getSystemService("layout_inflater");
        relativelayout.removeAllViews();
        relativelayout.setOnTouchListener(this);
        RelativeLayout relativelayout1 = (RelativeLayout)layoutinflater.inflate(0x7f04000f, relativelayout, true);
        if (relativelayout1 == null)
        {
            throw new NullPointerException();
        } else
        {
            Resources resources = b.getResources();
            Object aobj[] = new Object[1];
            aobj[0] = EmojiUtils.a(EmojiUtils.d);
            r = resources.getString(0x7f0c0173, aobj);
            o = new ScaleGestureDetector(b, new ZoomListener());
            p = new GestureDetector(b, new CameraTapListener());
            q = new AutofocusCrosshair(b);
            relativelayout.addView(q);
            d = (ImageButton)relativelayout1.findViewById(0x7f0a008a);
            e = (ImageButton)relativelayout1.findViewById(0x7f0a008f);
            a(a.l_());
            f = (TextView)relativelayout1.findViewById(0x7f0a0093);
            g = (TextView)relativelayout1.findViewById(0x7f0a0094);
            h = (TakeSnapButton)relativelayout1.findViewById(0x7f0a0090);
            i = (ImageButton)relativelayout1.findViewById(0x7f0a008c);
            i.setOnClickListener(new android.view.View.OnClickListener() {

                final DefaultCameraDecor a;

                public void onClick(View view)
                {
                    BusProvider.a().a(new ProfileViewFlipEvent(0));
                }

            
            {
                a = DefaultCameraDecor.this;
                super();
            }
            });
            d.setOnTouchListener(new BouncyToucher(d));
            j = new BouncyToucher(e);
            e.setOnTouchListener(j);
            f.setOnTouchListener(new BouncyToucher(f));
            i.setOnTouchListener(new BouncyToucher(i));
            g.setOnTouchListener(new BouncyToucher(g));
            d.setOnClickListener(new android.view.View.OnClickListener() {

                final DefaultCameraDecor a;

                public void onClick(View view)
                {
                    a.a.t();
                }

            
            {
                a = DefaultCameraDecor.this;
                super();
            }
            });
            e.setOnClickListener(new android.view.View.OnClickListener() {

                final DefaultCameraDecor a;

                public void onClick(View view)
                {
                    a.a.c(false);
                }

            
            {
                a = DefaultCameraDecor.this;
                super();
            }
            });
            f.setOnClickListener(new android.view.View.OnClickListener() {

                final DefaultCameraDecor a;

                public void onClick(View view)
                {
                    a.a.a(1, true);
                }

            
            {
                a = DefaultCameraDecor.this;
                super();
            }
            });
            g.setOnClickListener(new android.view.View.OnClickListener() {

                final DefaultCameraDecor a;

                public void onClick(View view)
                {
                    a.a.a(3, true);
                }

            
            {
                a = DefaultCameraDecor.this;
                super();
            }
            });
            h.setClickable(true);
            h.setOnTouchListener(new BouncyToucher(h) {

                final DefaultCameraDecor a;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    int i1 = motionevent.getActionMasked();
                    if (i1 != 1 && i1 != 3) goto _L2; else goto _L1
_L1:
                    a.a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.b);
_L4:
                    return super.onTouch(view, motionevent);
_L2:
                    if (i1 == 0)
                    {
                        a.h.a();
                        a.a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.a);
                    }
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = DefaultCameraDecor.this;
                super(view);
            }
            });
            k = relativelayout1.findViewById(0x7f0a0091);
            l = relativelayout1.findViewById(0x7f0a008d);
            m = (TextView)relativelayout1.findViewById(0x7f0a008e);
            a();
            return;
        }
    }

    public void a()
    {
        byte byte0 = 4;
        if (a.q())
        {
            return;
        }
        ImageButton imagebutton = e;
        int i1;
        ImageButton imagebutton1;
        ImageButton imagebutton2;
        int j1;
        if (CameraUtils.b())
        {
            i1 = 0;
        } else
        {
            i1 = byte0;
        }
        imagebutton.setVisibility(i1);
        imagebutton1 = d;
        if (a.s())
        {
            byte0 = 0;
        }
        imagebutton1.setVisibility(byte0);
        imagebutton2 = d;
        if (a.i())
        {
            j1 = 0x7f020021;
        } else
        {
            j1 = 0x7f020020;
        }
        imagebutton2.setImageResource(j1);
        h.d();
        if (f())
        {
            k.setVisibility(0);
            ((TextView)k.findViewById(0x7f0a0092)).setText(Html.fromHtml(b.getString(0x7f0c0037)));
        } else
        {
            k.setVisibility(8);
        }
        c(true);
        g();
    }

    public void a(int i1, int j1)
    {
        q.a(i1, j1);
    }

    protected void a(TextView textview, int i1, int j1, int k1)
    {
        if (k1 > 0)
        {
            textview.setBackgroundResource(i1);
            if (k1 < 10)
            {
                textview.setText(Integer.toString(k1));
                textview.setTextSize(1, 22F);
                textview.setPadding(0, 0, 0, 4);
                return;
            } else
            {
                textview.setText("+");
                textview.setTextSize(1, 30F);
                textview.setPadding(0, 0, 0, 10);
                return;
            }
        } else
        {
            textview.setBackgroundResource(j1);
            textview.setText("");
            return;
        }
    }

    protected void a(User user)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        ImageButton imagebutton;
        int i1;
        boolean flag3;
        boolean flag4;
        View view;
        int j1;
        if (user == null)
        {
            flag1 = false;
        } else
        if (user.d() > 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (flag1 && h())
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        imagebutton = i;
        if (flag2)
        {
            i1 = 0x7f020092;
        } else
        {
            i1 = 0x7f020091;
        }
        imagebutton.setImageResource(i1);
        if (!flag2 || UserPrefs.aw())
        {
            flag = false;
        }
        flag3 = UserPrefs.av();
        flag4 = a(flag, flag3);
        view = l;
        j1 = 0;
        if (!flag4)
        {
            j1 = 8;
        }
        view.setVisibility(j1);
        if (flag)
        {
            m.setText(0x7f0c012f);
        } else
        if (!flag3)
        {
            m.setText(r);
            return;
        }
    }

    public void a(boolean flag)
    {
        ImageButton imagebutton = e;
        int i1;
        if (flag)
        {
            i1 = 0x7f02008c;
        } else
        {
            i1 = 0x7f020024;
        }
        imagebutton.setImageResource(i1);
    }

    protected boolean a(boolean flag, boolean flag1)
    {
        return (flag || !flag1) && !f();
    }

    public void b()
    {
        SnapUtils.b();
    }

    public void b(boolean flag)
    {
        if (flag == n)
        {
            return;
        }
        n = flag;
        long l1 = SystemClock.uptimeMillis();
        long l2 = SystemClock.uptimeMillis();
        int i1;
        MotionEvent motionevent;
        if (n)
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        motionevent = MotionEvent.obtain(l1, l2, i1, h.getX() + (float)h.getWidth() / 2.0F, h.getY() + (float)h.getHeight() / 2.0F, 0);
        if (motionevent == null)
        {
            throw new NullPointerException();
        } else
        {
            h.dispatchTouchEvent(motionevent);
            return;
        }
    }

    public void c()
    {
        c(false);
        d.setVisibility(8);
        l.setVisibility(8);
        h.b();
    }

    protected void c(boolean flag)
    {
        int j1;
        int i1;
        ImageButton imagebutton;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 4;
        }
        e.setVisibility(i1);
        f.setVisibility(i1);
        g.setVisibility(i1);
        imagebutton = i;
        if (!h()) goto _L2; else goto _L1
_L1:
        j1 = 0;
        if (!flag) goto _L2; else goto _L3
_L3:
        imagebutton.setVisibility(j1);
        return;
_L2:
        j1 = 8;
        if (true) goto _L3; else goto _L4
_L4:
    }

    public void d()
    {
        h.c();
    }

    protected boolean f()
    {
        return UserPrefs.e() == 0 && !UserPrefs.z();
    }

    protected void g()
    {
        UnviewedContentCount unviewedcontentcount = ConversationUtils.b();
        int i1 = unviewedcontentcount.a();
        int j1 = unviewedcontentcount.b();
        int k1 = unviewedcontentcount.c();
        int l1 = 0x7f02001e;
        User user;
        if (i1 == j1)
        {
            l1 = 0x7f02001d;
        } else
        if (i1 == k1)
        {
            l1 = 0x7f02001c;
        }
        a(f, l1, 0x7f02001f, i1);
        user = User.c();
        a(user);
        if (user == null)
        {
            return;
        } else
        {
            a(g, 0x7f020023, 0x7f020022, StoryLibrary.a().n());
            return;
        }
    }

    protected boolean h()
    {
        return true;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        o.onTouchEvent(motionevent);
        p.onTouchEvent(motionevent);
        return true;
    }
}
