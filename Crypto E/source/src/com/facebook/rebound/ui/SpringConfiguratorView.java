// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.facebook.rebound.OrigamiValueConverter;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringConfigRegistry;
import com.facebook.rebound.SpringListener;
import com.facebook.rebound.SpringSystem;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.facebook.rebound.ui:
//            Util

public class SpringConfiguratorView extends FrameLayout
{
    class OnNubTouchListener
        implements android.view.View.OnTouchListener
    {

        final SpringConfiguratorView a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if (motionevent.getAction() == 0)
            {
                SpringConfiguratorView.g(a);
            }
            return true;
        }

        private OnNubTouchListener()
        {
            a = SpringConfiguratorView.this;
            super();
        }

    }

    class RevealerSpringListener
        implements SpringListener
    {

        final SpringConfiguratorView a;

        public void a(Spring spring)
        {
            float f1 = (float)spring.b();
            float f2 = SpringConfiguratorView.h(a);
            float f3 = f2 + f1 * (SpringConfiguratorView.i(a) - f2);
            a.setTranslationY(f3);
        }

        public void b(Spring spring)
        {
        }

        public void c(Spring spring)
        {
        }

        public void d(Spring spring)
        {
        }

        private RevealerSpringListener()
        {
            a = SpringConfiguratorView.this;
            super();
        }

    }

    class SeekbarListener
        implements android.widget.SeekBar.OnSeekBarChangeListener
    {

        final SpringConfiguratorView a;

        public void onProgressChanged(SeekBar seekbar, int i1, boolean flag)
        {
            if (seekbar == SpringConfiguratorView.c(a))
            {
                float f2 = 0.0F + (200F * (float)i1) / 100000F;
                SpringConfiguratorView.b(a).b = OrigamiValueConverter.a(f2);
                String s1 = SpringConfiguratorView.b().format(f2);
                SpringConfiguratorView.d(a).setText((new StringBuilder()).append("T:").append(s1).toString());
            }
            if (seekbar == SpringConfiguratorView.e(a))
            {
                float f1 = 0.0F + (50F * (float)i1) / 100000F;
                SpringConfiguratorView.b(a).a = OrigamiValueConverter.c(f1);
                String s = SpringConfiguratorView.b().format(f1);
                SpringConfiguratorView.f(a).setText((new StringBuilder()).append("F:").append(s).toString());
            }
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
        }

        private SeekbarListener()
        {
            a = SpringConfiguratorView.this;
            super();
        }

    }

    class SpinnerAdapter extends BaseAdapter
    {

        final SpringConfiguratorView a;
        private final Context b;
        private final List c = new ArrayList();

        public void a()
        {
            c.clear();
            notifyDataSetChanged();
        }

        public void a(String s)
        {
            c.add(s);
            notifyDataSetChanged();
        }

        public int getCount()
        {
            return c.size();
        }

        public Object getItem(int i1)
        {
            return c.get(i1);
        }

        public long getItemId(int i1)
        {
            return (long)i1;
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            TextView textview;
            if (view == null)
            {
                textview = new TextView(b);
                textview.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, -1));
                int j1 = Util.a(12F, a.getResources());
                textview.setPadding(j1, j1, j1, j1);
                textview.setTextColor(SpringConfiguratorView.j(a));
            } else
            {
                textview = (TextView)view;
            }
            textview.setText((CharSequence)c.get(i1));
            return textview;
        }

        public SpinnerAdapter(Context context)
        {
            a = SpringConfiguratorView.this;
            super();
            b = context;
        }
    }

    class SpringSelectedListener
        implements android.widget.AdapterView.OnItemSelectedListener
    {

        final SpringConfiguratorView a;

        public void onItemSelected(AdapterView adapterview, View view, int i1, long l1)
        {
            SpringConfiguratorView.a(a, (SpringConfig)SpringConfiguratorView.a(a).get(i1));
            SpringConfiguratorView.b(a, SpringConfiguratorView.b(a));
        }

        public void onNothingSelected(AdapterView adapterview)
        {
        }

        private SpringSelectedListener()
        {
            a = SpringConfiguratorView.this;
            super();
        }

    }


    private static final DecimalFormat a = new DecimalFormat("#.#");
    private final SpinnerAdapter b;
    private final List c;
    private final Spring d;
    private final float e;
    private final float f;
    private final SpringConfigRegistry g;
    private final int h;
    private SeekBar i;
    private SeekBar j;
    private Spinner k;
    private TextView l;
    private TextView m;
    private SpringConfig n;

    public SpringConfiguratorView(Context context)
    {
        this(context, null);
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = new ArrayList();
        h = Color.argb(255, 225, 225, 225);
        SpringSystem springsystem = SpringSystem.d();
        g = SpringConfigRegistry.a();
        b = new SpinnerAdapter(context);
        android.content.res.Resources resources = getResources();
        f = Util.a(40F, resources);
        e = Util.a(280F, resources);
        d = springsystem.b();
        RevealerSpringListener revealerspringlistener = new RevealerSpringListener();
        d.a(1.0D).b(1.0D).a(revealerspringlistener);
        addView(a(context));
        SeekbarListener seekbarlistener = new SeekbarListener();
        i.setMax(0x186a0);
        i.setOnSeekBarChangeListener(seekbarlistener);
        j.setMax(0x186a0);
        j.setOnSeekBarChangeListener(seekbarlistener);
        k.setAdapter(b);
        k.setOnItemSelectedListener(new SpringSelectedListener());
        a();
        setTranslationY(e);
    }

    private View a(Context context)
    {
        android.content.res.Resources resources = getResources();
        int i1 = Util.a(5F, resources);
        int j1 = Util.a(10F, resources);
        int k1 = Util.a(20F, resources);
        android.widget.TableLayout.LayoutParams layoutparams = new android.widget.TableLayout.LayoutParams(0, -2, 1.0F);
        layoutparams.setMargins(0, 0, i1, 0);
        FrameLayout framelayout = new FrameLayout(context);
        framelayout.setLayoutParams(Util.a(-1, Util.a(300F, resources)));
        FrameLayout framelayout1 = new FrameLayout(context);
        android.widget.FrameLayout.LayoutParams layoutparams1 = Util.a();
        layoutparams1.setMargins(0, k1, 0, 0);
        framelayout1.setLayoutParams(layoutparams1);
        framelayout1.setBackgroundColor(Color.argb(100, 0, 0, 0));
        framelayout.addView(framelayout1);
        k = new Spinner(context, 0);
        android.widget.FrameLayout.LayoutParams layoutparams2 = Util.b();
        layoutparams2.gravity = 48;
        layoutparams2.setMargins(j1, j1, j1, 0);
        k.setLayoutParams(layoutparams2);
        framelayout1.addView(k);
        LinearLayout linearlayout = new LinearLayout(context);
        android.widget.FrameLayout.LayoutParams layoutparams3 = Util.b();
        layoutparams3.setMargins(0, 0, 0, Util.a(80F, resources));
        layoutparams3.gravity = 80;
        linearlayout.setLayoutParams(layoutparams3);
        linearlayout.setOrientation(1);
        framelayout1.addView(linearlayout);
        LinearLayout linearlayout1 = new LinearLayout(context);
        android.widget.FrameLayout.LayoutParams layoutparams4 = Util.b();
        layoutparams4.setMargins(j1, j1, j1, k1);
        linearlayout1.setPadding(j1, j1, j1, j1);
        linearlayout1.setLayoutParams(layoutparams4);
        linearlayout1.setOrientation(0);
        linearlayout.addView(linearlayout1);
        i = new SeekBar(context);
        i.setLayoutParams(layoutparams);
        linearlayout1.addView(i);
        m = new TextView(getContext());
        m.setTextColor(h);
        android.widget.FrameLayout.LayoutParams layoutparams5 = Util.a(Util.a(50F, resources), -1);
        m.setGravity(19);
        m.setLayoutParams(layoutparams5);
        m.setMaxLines(1);
        linearlayout1.addView(m);
        LinearLayout linearlayout2 = new LinearLayout(context);
        android.widget.FrameLayout.LayoutParams layoutparams6 = Util.b();
        layoutparams6.setMargins(j1, j1, j1, k1);
        linearlayout2.setPadding(j1, j1, j1, j1);
        linearlayout2.setLayoutParams(layoutparams6);
        linearlayout2.setOrientation(0);
        linearlayout.addView(linearlayout2);
        j = new SeekBar(context);
        j.setLayoutParams(layoutparams);
        linearlayout2.addView(j);
        l = new TextView(getContext());
        l.setTextColor(h);
        android.widget.FrameLayout.LayoutParams layoutparams7 = Util.a(Util.a(50F, resources), -1);
        l.setGravity(19);
        l.setLayoutParams(layoutparams7);
        l.setMaxLines(1);
        linearlayout2.addView(l);
        View view = new View(context);
        android.widget.FrameLayout.LayoutParams layoutparams8 = Util.a(Util.a(60F, resources), Util.a(40F, resources));
        layoutparams8.gravity = 49;
        view.setLayoutParams(layoutparams8);
        view.setOnTouchListener(new OnNubTouchListener());
        view.setBackgroundColor(Color.argb(255, 0, 164, 209));
        framelayout.addView(view);
        return framelayout;
    }

    static SpringConfig a(SpringConfiguratorView springconfiguratorview, SpringConfig springconfig)
    {
        springconfiguratorview.n = springconfig;
        return springconfig;
    }

    static List a(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.c;
    }

    private void a(SpringConfig springconfig)
    {
        int i1 = Math.round((100000F * ((float)OrigamiValueConverter.b(springconfig.b) - 0.0F)) / 200F);
        int j1 = Math.round((100000F * ((float)OrigamiValueConverter.d(springconfig.a) - 0.0F)) / 50F);
        i.setProgress(i1);
        j.setProgress(j1);
    }

    static SpringConfig b(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.n;
    }

    static DecimalFormat b()
    {
        return a;
    }

    static void b(SpringConfiguratorView springconfiguratorview, SpringConfig springconfig)
    {
        springconfiguratorview.a(springconfig);
    }

    static SeekBar c(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.i;
    }

    private void c()
    {
        double d1 = 1.0D;
        double d2 = d.c();
        Spring spring = d;
        if (d2 == d1)
        {
            d1 = 0.0D;
        }
        spring.b(d1);
    }

    static TextView d(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.m;
    }

    static SeekBar e(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.j;
    }

    static TextView f(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.l;
    }

    static void g(SpringConfiguratorView springconfiguratorview)
    {
        springconfiguratorview.c();
    }

    static float h(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.f;
    }

    static float i(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.e;
    }

    static int j(SpringConfiguratorView springconfiguratorview)
    {
        return springconfiguratorview.h;
    }

    public void a()
    {
        Map map = g.b();
        b.a();
        c.clear();
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (entry.getKey() != SpringConfig.c)
            {
                c.add(entry.getKey());
                b.a((String)entry.getValue());
            }
        } while (true);
        c.add(SpringConfig.c);
        b.a((String)map.get(SpringConfig.c));
        b.notifyDataSetChanged();
        if (c.size() > 0)
        {
            k.setSelection(0);
        }
    }

}
