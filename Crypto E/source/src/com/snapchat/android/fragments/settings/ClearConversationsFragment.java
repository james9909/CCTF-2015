// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.chat.ClearFeedTask;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ListViewAdapterList;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.Iterator;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            ClearConversationsAdapter

public class ClearConversationsFragment extends SnapchatFragment
    implements com.snapchat.android.api2.chat.ClearFeedTask.ClearFeedTaskCallback
{

    private ListViewAdapterList a;
    private BaseAdapter b;
    private TextView c;
    private ProgressBar d;
    private TextView e;

    public ClearConversationsFragment()
    {
    }

    static TextView a(ClearConversationsFragment clearconversationsfragment)
    {
        return clearconversationsfragment.c;
    }

    static void a(ClearConversationsFragment clearconversationsfragment, boolean flag)
    {
        clearconversationsfragment.a(flag);
    }

    private void a(boolean flag)
    {
        ListViewAdapterList listviewadapterlist = a;
        listviewadapterlist;
        JVM INSTR monitorenter ;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((ChatConversation)iterator.next()).m(flag)) { }
        break MISSING_BLOCK_LABEL_48;
        Exception exception;
        exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
        throw exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
    }

    static ProgressBar b(ClearConversationsFragment clearconversationsfragment)
    {
        return clearconversationsfragment.d;
    }

    static BaseAdapter c(ClearConversationsFragment clearconversationsfragment)
    {
        return clearconversationsfragment.b;
    }

    static ListViewAdapterList d(ClearConversationsFragment clearconversationsfragment)
    {
        return clearconversationsfragment.a;
    }

    private void h()
    {
        ((ListView)d(0x7f0a012d)).setAdapter(b);
        d(0x7f0a012a).setOnClickListener(new android.view.View.OnClickListener() {

            final ClearConversationsFragment a;

            public void onClick(View view)
            {
                a.getActivity().onBackPressed();
            }

            
            {
                a = ClearConversationsFragment.this;
                super();
            }
        });
        d = (ProgressBar)d(0x7f0a012c);
        e = (TextView)d(0x7f0a012e);
        c = (TextView)d(0x7f0a012b);
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final ClearConversationsFragment a;

            public void onClick(View view)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a.getActivity());
                builder.setTitle(a.getString(0x7f0c01aa)).setMessage(a.getString(0x7f0c01ab)).setPositiveButton(a.getString(0x7f0c0142), new android.content.DialogInterface.OnClickListener(this) {

                    final _cls2 a;

                    public void onClick(DialogInterface dialoginterface, int j)
                    {
                        AlertDialogUtils.a(a.a.getString(0x7f0c01b1), a.a.getActivity());
                        ClearConversationsFragment.a(a.a).setVisibility(8);
                        ClearConversationsFragment.b(a.a).setVisibility(0);
                        AnalyticsEvents.J();
                        AnalyticsEvents.K();
                        ClearConversationsFragment.a(a.a, true);
                        (new ClearFeedTask(a.a)).g();
                        ClearConversationsFragment.c(a.a).notifyDataSetChanged();
                    }

            
            {
                a = _pcls2;
                super();
            }
                }).setNegativeButton(a.getString(0x7f0c003d), null);
                builder.create().show();
            }

            
            {
                a = ClearConversationsFragment.this;
                super();
            }
        });
        synchronized (a)
        {
            if (a.isEmpty())
            {
                c.setVisibility(8);
                e.setVisibility(0);
            }
        }
        return;
        exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void i()
    {
        synchronized (a)
        {
            a.clear();
            a.addAll(ChatConversationManager.a().d());
        }
        b.notifyDataSetChanged();
        return;
        exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        ChatConversationManager.a().i();
        if (isAdded())
        {
            ThreadUtils.a(new Runnable() {

                final ClearConversationsFragment a;

                public void run()
                {
                    synchronized (ClearConversationsFragment.d(a))
                    {
                        ClearConversationsFragment.b(a).setVisibility(8);
                    }
                    return;
                    exception;
                    listviewadapterlist;
                    JVM INSTR monitorexit ;
                    throw exception;
                }

            
            {
                a = ClearConversationsFragment.this;
                super();
            }
            });
        }
    }

    public void b()
    {
        a(false);
        if (isAdded())
        {
            ThreadUtils.a(new Runnable() {

                final ClearConversationsFragment a;

                public void run()
                {
                    ClearConversationsFragment.a(a).setEnabled(true);
                    ClearConversationsFragment.b(a).setVisibility(8);
                    AlertDialogUtils.a(a.getString(0x7f0c01af), a.getActivity());
                }

            
            {
                a = ClearConversationsFragment.this;
                super();
            }
            });
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = layoutinflater.inflate(0x7f04002e, viewgroup, false);
        ViewUtils.a(G(), x, getActivity());
        a = ChatConversationManager.a().e();
        b = ClearConversationsAdapter.a(getActivity(), a);
        h();
        return x;
    }

    public void onUpdateFeedEvent(UpdateFeedEvent updatefeedevent)
    {
        ListViewAdapterList listviewadapterlist = a;
        listviewadapterlist;
        JVM INSTR monitorenter ;
        i();
        if (!a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_41;
        }
        c.setVisibility(8);
        e.setVisibility(0);
_L2:
        return;
        c.setVisibility(0);
        e.setVisibility(8);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
