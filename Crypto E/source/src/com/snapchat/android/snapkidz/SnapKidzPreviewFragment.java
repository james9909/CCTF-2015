// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.snapkidz;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.ui.CanvasViewBase;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;
import com.snapchat.android.util.cache.SaveVideoToGalleryTask;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.snapchat.android.util.eventbus.ColorPickedEvent;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.snapchat.android.util.eventbus.TitleBarEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.io.File;

public class SnapKidzPreviewFragment extends SnapchatFragment
    implements com.snapchat.android.ui.SnapEditorView.SnapEditorViewInterface
{
    class HideButtonRunnable
        implements Runnable
    {

        final SnapKidzPreviewFragment a;
        private boolean b;

        public void a()
        {
            b = true;
        }

        public void run()
        {
            if (!b)
            {
                SnapKidzPreviewFragment.h(a);
            }
        }

        private HideButtonRunnable()
        {
            a = SnapKidzPreviewFragment.this;
            super();
            b = false;
        }

    }


    private SnapEditorView a;
    private CanvasViewBase b;
    private ImageButton c;
    private View d;
    private boolean e;
    private boolean f;
    private ImageButton g;
    private View h;
    private ImageButton i;
    private boolean j;
    private ImageButton k;
    private ImageButton l;
    private int m;
    private SnapCapturedEvent n;
    private View o;
    private com.snapchat.android.ui.SnapEditorView.SnapEditorViewBundle p;
    private Handler q;
    private HideButtonRunnable r;
    private long s;

    public SnapKidzPreviewFragment()
    {
        e = false;
        f = false;
        j = false;
        q = new Handler();
        s = -1L;
    }

    static Object a(SnapKidzPreviewFragment snapkidzpreviewfragment, String s1)
    {
        return snapkidzpreviewfragment.b(s1);
    }

    static void a(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.k();
    }

    static boolean a(SnapKidzPreviewFragment snapkidzpreviewfragment, boolean flag)
    {
        snapkidzpreviewfragment.f = flag;
        return flag;
    }

    static ImageButton b(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        return snapkidzpreviewfragment.k;
    }

    static void c(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.o();
    }

    static void d(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.r();
    }

    static boolean e(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        return snapkidzpreviewfragment.j;
    }

    static void f(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.q();
    }

    static void g(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.p();
    }

    static void h(SnapKidzPreviewFragment snapkidzpreviewfragment)
    {
        snapkidzpreviewfragment.t();
    }

    private void i()
    {
        h.setVisibility(0);
        c.setVisibility(8);
        if (b.getNumberOfStrokes() > 0)
        {
            i.setVisibility(0);
            o.setVisibility(0);
            return;
        } else
        {
            o.setVisibility(4);
            i.setVisibility(4);
            return;
        }
    }

    private void k()
    {
        if (n == null)
        {
            return;
        }
        if (j)
        {
            (new File(n.a().I().getPath())).delete();
        } else
        {
            n.a().H();
        }
        n = null;
    }

    private void n()
    {
        k.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzPreviewFragment a;

            public void onClick(View view)
            {
                ((InputMethodManager)SnapKidzPreviewFragment.a(a, "input_method")).hideSoftInputFromWindow(SnapKidzPreviewFragment.b(a).getApplicationWindowToken(), 0);
                SnapKidzPreviewFragment.a(a);
                a.getActivity().onBackPressed();
            }

            
            {
                a = SnapKidzPreviewFragment.this;
                super();
            }
        });
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzPreviewFragment a;

            public void onClick(View view)
            {
                SnapKidzPreviewFragment.c(a);
            }

            
            {
                a = SnapKidzPreviewFragment.this;
                super();
            }
        });
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzPreviewFragment a;

            public void onClick(View view)
            {
                SnapKidzPreviewFragment.c(a);
            }

            
            {
                a = SnapKidzPreviewFragment.this;
                super();
            }
        });
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzPreviewFragment a;

            public void onClick(View view)
            {
                SnapKidzPreviewFragment.d(a);
            }

            
            {
                a = SnapKidzPreviewFragment.this;
                super();
            }
        });
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzPreviewFragment a;

            public void onClick(View view)
            {
                if (SnapKidzPreviewFragment.e(a))
                {
                    SnapKidzPreviewFragment.f(a);
                    return;
                } else
                {
                    SnapKidzPreviewFragment.g(a);
                    return;
                }
            }

            
            {
                a = SnapKidzPreviewFragment.this;
                super();
            }
        });
    }

    private void o()
    {
        boolean flag;
        boolean flag1;
        if (b.getDrawingEnabled())
        {
            h.setVisibility(8);
            c.setVisibility(0);
        } else
        {
            i();
        }
        flag = e;
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        e = flag1;
        b.setDrawingEnabled(e);
    }

    private void p()
    {
        FragmentActivity fragmentactivity = getActivity();
        (new SaveImageToGalleryTask(fragmentactivity, a.a(fragmentactivity))).executeOnExecutor(ScExecutors.c, new Void[0]);
    }

    private void q()
    {
        Mediabryo mediabryo;
        Uri uri;
        if (n == null)
        {
            mediabryo = null;
        } else
        {
            mediabryo = n.a();
        }
        uri = null;
        if (mediabryo != null)
        {
            uri = mediabryo.I();
        }
        (new SaveVideoToGalleryTask(getActivity(), uri)).executeOnExecutor(ScExecutors.c, new Void[0]);
    }

    private void r()
    {
        b.c();
        if (b.getNumberOfStrokes() > 0)
        {
            d.setBackgroundColor(b.getColor());
            o.setBackgroundColor(b.getLastColor());
            return;
        } else
        {
            i.setVisibility(8);
            o.setVisibility(4);
            return;
        }
    }

    private void s()
    {
        b.a(m);
        m = ViewUtils.c(getActivity());
    }

    private void t()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(400L);
        alphaanimation.setFillAfter(true);
        s = System.nanoTime();
        d(0x7f0a02c2).startAnimation(alphaanimation);
        d(0x7f0a02c8).startAnimation(alphaanimation);
        d(0x7f0a02c0).startAnimation(alphaanimation);
    }

    private void u()
    {
        if (s == -1L)
        {
            return;
        }
        float f1 = (1E+12F * (float)(System.nanoTime() - s)) / 400F;
        s = -1L;
        if (f1 > 1.0F)
        {
            f1 = 1.0F;
        }
        AlphaAnimation alphaanimation = new AlphaAnimation(f1 * 0.0F, 1.0F);
        alphaanimation.setDuration(400L);
        d(0x7f0a02c2).startAnimation(alphaanimation);
        d(0x7f0a02c8).startAnimation(alphaanimation);
        d(0x7f0a02c0).startAnimation(alphaanimation);
    }

    public void b()
    {
        BusProvider.a().a(new TitleBarEvent(false));
        if (n.a().b() == 0)
        {
            j = false;
            if (getUserVisibleHint())
            {
                BusProvider.a().a(new ChangeOrientationEvent(-1));
            }
        } else
        {
            j = true;
            if (getUserVisibleHint())
            {
                BusProvider.a().a(new ChangeOrientationEvent(1));
            }
        }
        n();
        a.getCaptionView().setIsVideoSnap(j);
        if (p == null)
        {
            a.setMediabryo(n.a());
        } else
        {
            a.a(p);
        }
        s();
    }

    public boolean e()
    {
        if (!f && a.getCaptionView() != null && b != null)
        {
            if (b.d())
            {
                (new TwoButtonDialog(getActivity(), getString(0x7f0c002d)) {

                    final SnapKidzPreviewFragment a;

                    protected void a()
                    {
                    }

                    protected void b()
                    {
                        SnapKidzPreviewFragment.a(a, true);
                        SnapKidzPreviewFragment.a(a);
                        a.getActivity().onBackPressed();
                    }

            
            {
                a = SnapKidzPreviewFragment.this;
                super(context, s1);
            }
                }).show();
                return true;
            }
            if (n != null)
            {
                k();
                return false;
            }
        }
        return false;
    }

    public boolean h()
    {
        return false;
    }

    public int l()
    {
        return k.getBottom();
    }

    public boolean m()
    {
        return false;
    }

    public void onColorPickedEvent(ColorPickedEvent colorpickedevent)
    {
        b.setColor(colorpickedevent.a());
        d.setBackgroundColor(b.getColor());
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0xfffffdff & layoutparams.flags;
        G().setAttributes(layoutparams);
        if (n == null)
        {
            Timber.c("SnapKidzPreviewFragment", "mSnapCapturedEvent is null. Getting a new one from LandingPageActivity", new Object[0]);
            n = ((SnapkidzHomeActivity)getActivity()).a();
            if (n == null)
            {
                n = new SnapCapturedEvent(null);
                f = true;
                getActivity().onBackPressed();
                return x;
            }
        }
        x = layoutinflater.inflate(0x7f04007f, viewgroup, false);
        o = d(0x7f0a02c5);
        d = d(0x7f0a02c3);
        k = (ImageButton)d(0x7f0a02c0);
        c = (ImageButton)d(0x7f0a02c1);
        g = (ImageButton)d(0x7f0a02c4);
        i = (ImageButton)d(0x7f0a02c6);
        l = (ImageButton)d(0x7f0a02c9);
        h = d(0x7f0a02c2);
        a = (SnapEditorView)d(0x7f0a02bf);
        a.setInterface(this);
        b = a.getCanvasView();
        b();
        d.setBackgroundColor(b.getColor());
        b.setColor(b.getColor());
        o.setBackgroundColor(b.getLastColor());
        return x;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (n != null)
        {
            n.a().H();
        }
        n = null;
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0x200 | layoutparams.flags;
        G().setAttributes(layoutparams);
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        a.b();
        android.view.WindowManager.LayoutParams layoutparams = G().getAttributes();
        layoutparams.flags = 0x200 | layoutparams.flags;
        G().setAttributes(layoutparams);
    }

    public void onDrawingEvent(DrawingEvent drawingevent)
    {
        if (r != null)
        {
            r.a();
            r = null;
        }
        if (drawingevent.a() == com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.b)
        {
            r = new HideButtonRunnable();
            q.postDelayed(r, 250L);
        } else
        if (drawingevent.a() == com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.a)
        {
            u();
            i.setVisibility(0);
            o.setVisibility(0);
            o.setBackgroundColor(b.getLastColor());
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        BusProvider.a().b(a.getCaptionView());
        if (a.getCaptionView() != null)
        {
            a.getCaptionView().f();
        }
        if (b != null)
        {
            b.a();
        }
        p = a.a();
        a.c();
    }

    public void onResume()
    {
        super.onResume();
        BusProvider.a().c(a.getCaptionView());
        b.setDrawingEnabled(e);
        if (e)
        {
            i();
        }
    }

    protected void s_()
    {
        BusProvider.a().a(new TitleBarEvent(false));
        if (!j && n != null && (n.a() instanceof Snapbryo) && ((Snapbryo)n.a()).B() != null)
        {
            BusProvider.a().a(new ChangeOrientationEvent(-1));
        }
        if (j)
        {
            a.a((Snapbryo)n.a());
        }
    }
}
