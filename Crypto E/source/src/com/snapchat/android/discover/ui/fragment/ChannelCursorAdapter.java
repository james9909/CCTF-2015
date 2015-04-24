// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimator;
import com.snapchat.android.util.AlertDialogUtils;

public class ChannelCursorAdapter extends CursorAdapter
{
    public static interface ChannelViewCallback
    {

        public abstract void b();
    }


    protected android.view.View.OnClickListener a = new android.view.View.OnClickListener() {

        final ChannelCursorAdapter a;

        public void onClick(View view)
        {
            ChannelView channelview = (ChannelView)view;
            ChannelPage channelpage = channelview.getChannelPage();
            if (!ChannelCursorAdapter.a(a) && channelview.b())
            {
                ChannelCursorAdapter.a(a, true);
                ChannelCursorAdapter.b(a).b();
                ChannelCursorAdapter.c(a).c(channelpage.a());
                ChannelCursorAdapter.d(a).a(channelview);
                ChannelCursorAdapter.e(a).a(channelpage);
                return;
            }
            if (!channelpage.n())
            {
                channelview.setProgressBarVisibility(true);
                ChannelCursorAdapter.f(a).a(channelpage, null);
                ChannelCursorAdapter.e(a).a(channelpage);
                return;
            } else
            {
                ChannelCursorAdapter.a(a, channelpage);
                return;
            }
        }

            
            {
                a = ChannelCursorAdapter.this;
                super();
            }
    };
    private final DiscoverRepository b;
    private final LayoutInflater c;
    private final OpenChannelAnimator d;
    private final ChannelViewCallback e;
    private final DiscoverMediaManager f;
    private final DiscoverViewTrackingManager g;
    private final DiscoverPerformanceAnalytics h;
    private boolean i;

    protected ChannelCursorAdapter(Context context, OpenChannelAnimator openchannelanimator, Cursor cursor, DiscoverRepository discoverrepository, DiscoverMediaManager discovermediamanager, DiscoverViewTrackingManager discoverviewtrackingmanager, ChannelViewCallback channelviewcallback, 
            DiscoverPerformanceAnalytics discoverperformanceanalytics)
    {
        super(context, cursor, 0);
        i = false;
        d = openchannelanimator;
        c = (LayoutInflater)context.getSystemService("layout_inflater");
        b = discoverrepository;
        f = discovermediamanager;
        g = discoverviewtrackingmanager;
        e = channelviewcallback;
        h = discoverperformanceanalytics;
    }

    public ChannelCursorAdapter(Context context, OpenChannelAnimator openchannelanimator, ChannelViewCallback channelviewcallback, Cursor cursor)
    {
        this(context, openchannelanimator, cursor, DiscoverRepository.a(), DiscoverMediaManager.a(), DiscoverViewTrackingManager.a(), channelviewcallback, DiscoverPerformanceAnalytics.a());
    }

    private void a(ChannelPage channelpage)
    {
        boolean flag = true;
        MediaState mediastate = channelpage.v();
        MediaState mediastate1 = channelpage.s();
        MediaState mediastate2 = channelpage.t();
        MediaState mediastate3 = channelpage.u();
        MediaState mediastate4;
        if (channelpage.f() == null || !channelpage.x())
        {
            AlertDialogUtils.a(0x7f0c00d1, mContext);
            mediastate4 = MediaState.f;
        } else
        {
            boolean flag1;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            boolean flag5;
            boolean flag6;
            if (mediastate == MediaState.g)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (mediastate1 == MediaState.g)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            flag3 = flag2 | flag1;
            if (mediastate2 == MediaState.g)
            {
                flag4 = flag;
            } else
            {
                flag4 = false;
            }
            flag5 = flag3 | flag4;
            if (mediastate3 == MediaState.g)
            {
                flag6 = flag;
            } else
            {
                flag6 = false;
            }
            if (flag6 | flag5)
            {
                Resources resources = mContext.getResources();
                AlertDialogUtils.a(mContext, resources.getString(0x7f0c00c8), resources.getString(0x7f0c00c9));
                mediastate4 = MediaState.g;
            } else
            {
                boolean flag7;
                boolean flag8;
                boolean flag9;
                boolean flag10;
                boolean flag11;
                boolean flag12;
                if (mediastate == MediaState.i)
                {
                    flag7 = flag;
                } else
                {
                    flag7 = false;
                }
                if (mediastate1 == MediaState.i)
                {
                    flag8 = flag;
                } else
                {
                    flag8 = false;
                }
                flag9 = flag8 | flag7;
                if (mediastate2 == MediaState.i)
                {
                    flag10 = flag;
                } else
                {
                    flag10 = false;
                }
                flag11 = flag9 | flag10;
                if (mediastate3 == MediaState.i)
                {
                    flag12 = flag;
                } else
                {
                    flag12 = false;
                }
                if (flag12 | flag11)
                {
                    AlertDialogUtils.a(0x7f0c00cd, mContext);
                    mediastate4 = MediaState.i;
                } else
                {
                    boolean flag13;
                    boolean flag14;
                    boolean flag15;
                    boolean flag16;
                    boolean flag17;
                    if (mediastate == MediaState.k)
                    {
                        flag13 = flag;
                    } else
                    {
                        flag13 = false;
                    }
                    if (mediastate1 == MediaState.k)
                    {
                        flag14 = flag;
                    } else
                    {
                        flag14 = false;
                    }
                    flag15 = flag14 | flag13;
                    if (mediastate2 == MediaState.k)
                    {
                        flag16 = flag;
                    } else
                    {
                        flag16 = false;
                    }
                    flag17 = flag16 | flag15;
                    if (mediastate3 != MediaState.k)
                    {
                        flag = false;
                    }
                    if (flag17 | flag)
                    {
                        AlertDialogUtils.a(0x7f0c00cc, mContext);
                        mediastate4 = MediaState.k;
                    } else
                    {
                        mediastate4 = MediaState.f;
                    }
                }
            }
        }
        if (mediastate4.b())
        {
            h.a(channelpage.a(), mediastate4);
        }
    }

    static void a(ChannelCursorAdapter channelcursoradapter, ChannelPage channelpage)
    {
        channelcursoradapter.a(channelpage);
    }

    static boolean a(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.i;
    }

    static boolean a(ChannelCursorAdapter channelcursoradapter, boolean flag)
    {
        channelcursoradapter.i = flag;
        return flag;
    }

    static ChannelViewCallback b(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.e;
    }

    static DiscoverViewTrackingManager c(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.g;
    }

    static OpenChannelAnimator d(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.d;
    }

    static DiscoverPerformanceAnalytics e(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.h;
    }

    static DiscoverMediaManager f(ChannelCursorAdapter channelcursoradapter)
    {
        return channelcursoradapter.f;
    }

    public void a()
    {
        i = false;
    }

    public boolean b()
    {
        return i;
    }

    public void bindView(View view, Context context, Cursor cursor)
    {
        ChannelView channelview;
label0:
        {
            if (view instanceof ChannelView)
            {
                channelview = (ChannelView)view;
                ChannelPage channelpage = b.b(cursor);
                if (channelpage == null)
                {
                    break label0;
                }
                channelview.setVisibility(0);
                channelview.setChannelPage(channelpage);
                channelview.invalidate();
                channelview.setOnClickListener(a);
            }
            return;
        }
        Timber.e("ChannelCursorAdapter", "Invalid ChannelPage found in the cursor adapter!", new Object[0]);
        channelview.setVisibility(8);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
    {
        return c.inflate(0x7f040021, viewgroup, false);
    }
}
