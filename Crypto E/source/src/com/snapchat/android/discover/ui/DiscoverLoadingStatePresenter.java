// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.ui.fragment.ChannelCursorAdapter;

// Referenced classes of package com.snapchat.android.discover.ui:
//            ChannelGroupView

public class DiscoverLoadingStatePresenter
{
    public static final class LoadingState extends Enum
    {

        public static final LoadingState a;
        public static final LoadingState b;
        public static final LoadingState c;
        public static final LoadingState d;
        public static final LoadingState e;
        private static final LoadingState f[];

        public static LoadingState valueOf(String s)
        {
            return (LoadingState)Enum.valueOf(com/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState, s);
        }

        public static LoadingState[] values()
        {
            return (LoadingState[])f.clone();
        }

        static 
        {
            a = new LoadingState("LOADING", 0);
            b = new LoadingState("LOADED", 1);
            c = new LoadingState("NETWORK_ERROR", 2);
            d = new LoadingState("EXTERNAL_STORAGE_UNAVAILABLE", 3);
            e = new LoadingState("GENERIC_ERROR", 4);
            LoadingState aloadingstate[] = new LoadingState[5];
            aloadingstate[0] = a;
            aloadingstate[1] = b;
            aloadingstate[2] = c;
            aloadingstate[3] = d;
            aloadingstate[4] = e;
            f = aloadingstate;
        }

        private LoadingState(String s, int j)
        {
            super(s, j);
        }
    }


    private View a;
    private TextView b;
    private ImageView c;
    private View d;
    private ImageView e;
    private ChannelGroupView f;
    private View g;
    private ChannelCursorAdapter h;
    private com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility i;

    public DiscoverLoadingStatePresenter()
    {
        i = com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.a;
    }

    private void a()
    {
        f.setVisibility(8);
        a.setVisibility(0);
        c.setVisibility(0);
        b.setVisibility(0);
        b.setText(0x7f0c00cd);
        c();
    }

    private void a(int j)
    {
        f.setVisibility(8);
        d.setVisibility(8);
        g.setVisibility(8);
        d.setVisibility(4);
        a.setVisibility(0);
        c.setVisibility(8);
        b.setVisibility(0);
        b.setText(j);
    }

    static void a(DiscoverLoadingStatePresenter discoverloadingstatepresenter)
    {
        discoverloadingstatepresenter.f();
    }

    private void b()
    {
        f.setVisibility(8);
        a.setVisibility(0);
        c.setVisibility(8);
        b.setVisibility(0);
        b.setText(0x7f0c00cf);
        c();
    }

    private void c()
    {
        d.setVisibility(0);
        g.setVisibility(8);
        d.setClickable(true);
        e.setVisibility(0);
    }

    private void d()
    {
        static class _cls2
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.values().length];
                try
                {
                    b[com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                a = new int[LoadingState.values().length];
                try
                {
                    a[LoadingState.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[LoadingState.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[LoadingState.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[LoadingState.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[LoadingState.e.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7)
                {
                    return;
                }
            }
        }

        switch (_cls2.b[i.ordinal()])
        {
        default:
            a(0x7f0c00d7);
            return;

        case 1: // '\001'
            a(0x7f0c00d9);
            break;
        }
    }

    private void e()
    {
        a(0x7f0c00d7);
    }

    private void f()
    {
        a.setVisibility(8);
        d.setVisibility(8);
        g.setVisibility(0);
    }

    private void g()
    {
        f.setVisibility(0);
        a.setVisibility(8);
        d.setVisibility(8);
        g.setVisibility(8);
    }

    public void a(View view, ChannelCursorAdapter channelcursoradapter, android.view.View.OnClickListener onclicklistener)
    {
        a = view.findViewById(0x7f0a0194);
        b = (TextView)a.findViewById(0x7f0a0195);
        c = (ImageView)a.findViewById(0x7f0a0196);
        d = view.findViewById(0x7f0a0197);
        d.setClickable(false);
        e = (ImageView)d.findViewById(0x7f0a0198);
        d.setOnClickListener(new android.view.View.OnClickListener(onclicklistener) {

            final android.view.View.OnClickListener a;
            final DiscoverLoadingStatePresenter b;

            public void onClick(View view1)
            {
                DiscoverLoadingStatePresenter.a(b);
                a.onClick(view1);
            }

            
            {
                b = DiscoverLoadingStatePresenter.this;
                a = onclicklistener;
                super();
            }
        });
        g = view.findViewById(0x7f0a019a);
        f = (ChannelGroupView)view.findViewById(0x7f0a0193);
        h = channelcursoradapter;
    }

    public void a(LoadingState loadingstate)
    {
        Object aobj[] = new Object[2];
        aobj[0] = loadingstate;
        aobj[1] = i;
        Timber.c("DiscoverLoadingStatePresenter", "Setting loading state %s (compatibility is %s)", aobj);
        if (i != com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.e && i != com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.a)
        {
            d();
        } else
        if (h != null)
        {
            if (!h.isEmpty())
            {
                g();
                return;
            }
            switch (_cls2.a[loadingstate.ordinal()])
            {
            default:
                g();
                return;

            case 1: // '\001'
                g();
                return;

            case 2: // '\002'
                f();
                return;

            case 3: // '\003'
                a();
                return;

            case 4: // '\004'
                b();
                return;

            case 5: // '\005'
                e();
                break;
            }
            return;
        }
    }

    public void a(com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility compatibility)
    {
        Object aobj[] = new Object[2];
        aobj[0] = compatibility;
        aobj[1] = i;
        Timber.c("DiscoverLoadingStatePresenter", "Setting compatibility %s (from %s)", aobj);
        i = compatibility;
        if (i != com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.a && i != com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility.e)
        {
            d();
        }
    }
}
