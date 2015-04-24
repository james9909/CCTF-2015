// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.chat.ClearConversationTask;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.DateTimeUtils;
import com.snapchat.android.util.ListViewAdapterList;

public class ClearConversationsAdapter extends ArrayAdapter
{
    class ClearConversationsViewHolder
    {

        TextView a;
        TextView b;
        ImageView c;
        ProgressBar d;
        final ClearConversationsAdapter e;

        private ClearConversationsViewHolder()
        {
            e = ClearConversationsAdapter.this;
            super();
        }

    }


    private final Context a;
    private final LayoutInflater b;
    private final ListViewAdapterList c;

    private ClearConversationsAdapter(Context context, ListViewAdapterList listviewadapterlist)
    {
        super(context, 0x7f04002f, listviewadapterlist);
        a = context;
        b = (LayoutInflater)context.getSystemService("layout_inflater");
        c = listviewadapterlist;
    }

    static Context a(ClearConversationsAdapter clearconversationsadapter)
    {
        return clearconversationsadapter.a;
    }

    public static ClearConversationsAdapter a(Context context, ListViewAdapterList listviewadapterlist)
    {
        ClearConversationsAdapter clearconversationsadapter = new ClearConversationsAdapter(context, listviewadapterlist);
        listviewadapterlist.a(clearconversationsadapter);
        return clearconversationsadapter;
    }

    private void a(ClearConversationsViewHolder clearconversationsviewholder, ChatConversation chatconversation)
    {
        chatconversation.m(true);
        a(true, clearconversationsviewholder, chatconversation);
        AnalyticsEvents.n(chatconversation.c());
        AnalyticsEvents.K();
        (new ClearConversationTask(chatconversation)).g();
    }

    static void a(ClearConversationsAdapter clearconversationsadapter, ClearConversationsViewHolder clearconversationsviewholder, ChatConversation chatconversation)
    {
        clearconversationsadapter.a(clearconversationsviewholder, chatconversation);
    }

    private void a(boolean flag, ClearConversationsViewHolder clearconversationsviewholder, ChatConversation chatconversation)
    {
        if (flag)
        {
            clearconversationsviewholder.b.setText(0x7f0c01b1);
            clearconversationsviewholder.c.setVisibility(8);
            clearconversationsviewholder.d.setVisibility(0);
            return;
        } else
        {
            clearconversationsviewholder.b.setText(DateTimeUtils.b(getContext(), chatconversation.U()));
            clearconversationsviewholder.c.setVisibility(0);
            clearconversationsviewholder.d.setVisibility(8);
            return;
        }
    }

    static LayoutInflater b(ClearConversationsAdapter clearconversationsadapter)
    {
        return clearconversationsadapter.b;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ClearConversationsViewHolder clearconversationsviewholder;
        ChatConversation chatconversation;
        if (view == null)
        {
            clearconversationsviewholder = new ClearConversationsViewHolder();
            view = b.inflate(0x7f04002f, viewgroup, false);
            clearconversationsviewholder.a = (TextView)view.findViewById(0x7f0a012f);
            clearconversationsviewholder.b = (TextView)view.findViewById(0x7f0a0130);
            clearconversationsviewholder.c = (ImageView)view.findViewById(0x7f0a0131);
            clearconversationsviewholder.d = (ProgressBar)view.findViewById(0x7f0a0132);
            view.setTag(clearconversationsviewholder);
        } else
        {
            clearconversationsviewholder = (ClearConversationsViewHolder)view.getTag();
        }
        chatconversation = (ChatConversation)c.get(i);
        clearconversationsviewholder.a.setText(ConversationUtils.a(chatconversation));
        a(chatconversation.aB(), clearconversationsviewholder, chatconversation);
        clearconversationsviewholder.c.setOnClickListener(new android.view.View.OnClickListener(clearconversationsviewholder, chatconversation) {

            final ClearConversationsViewHolder a;
            final ChatConversation b;
            final ClearConversationsAdapter c;

            public void onClick(View view1)
            {
                if (UserPrefs.I())
                {
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(ClearConversationsAdapter.a(c));
                    View view2 = ClearConversationsAdapter.b(c).inflate(0x7f04002d, null);
                    if (view2 == null)
                    {
                        throw new NullPointerException();
                    } else
                    {
                        CheckBox checkbox = (CheckBox)view2.findViewById(0x7f0a0128);
                        checkbox.setText(0x7f0c022b);
                        builder.setView(view2).setTitle(0x7f0c01ac).setPositiveButton(0x7f0c0142, new android.content.DialogInterface.OnClickListener(this, checkbox) {

                            final CheckBox a;
                            final _cls1 b;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                if (a.isChecked())
                                {
                                    UserPrefs.j(false);
                                }
                                ClearConversationsAdapter.a(b.c, b.a, b.b);
                            }

            
            {
                b = _pcls1;
                a = checkbox;
                super();
            }
                        }).setNegativeButton(0x7f0c003d, null);
                        builder.create().show();
                        return;
                    }
                } else
                {
                    ClearConversationsAdapter.a(c, a, b);
                    return;
                }
            }

            
            {
                c = ClearConversationsAdapter.this;
                a = clearconversationsviewholder;
                b = chatconversation;
                super();
            }
        });
        return view;
    }
}
