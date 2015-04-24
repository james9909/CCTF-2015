// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.User;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportRemoteLogListAdapter

public class BugReportRemoteLogListFragment extends SnapchatFragment
{
    public static interface OnFriendSelectedListener
    {

        public abstract void a(String s);
    }


    public BugReportRemoteLogListFragment()
    {
    }

    private String[] b()
    {
        User user = User.c();
        if (user == null)
        {
            return new String[0];
        }
        List list = user.s();
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(((Friend)iterator.next()).a())) { }
        Collections.sort(arraylist);
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator1 = arraylist.iterator();
        char c = '.';
        String s;
        for (; iterator1.hasNext(); arraylist1.add(s))
        {
            s = (String)iterator1.next();
            if (c != s.charAt(0))
            {
                c = s.charAt(0);
                arraylist1.add((new StringBuilder()).append("").append(Character.toUpperCase(c)).toString());
            }
        }

        String as[] = new String[arraylist1.size()];
        arraylist1.toArray(as);
        return as;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f04000c, viewgroup, false);
        e(view);
        ListView listview = (ListView)d(0x7f0a007f);
        listview.setAdapter(new BugReportRemoteLogListAdapter(getActivity(), 0x7f04000d, b()));
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final BugReportRemoteLogListFragment a;

            public void onItemClick(AdapterView adapterview, View view1, int i, long l)
            {
                if (adapterview.getItemAtPosition(i).toString().length() == 1)
                {
                    return;
                }
                if (a.getActivity() instanceof OnFriendSelectedListener)
                {
                    String s = adapterview.getItemAtPosition(i).toString();
                    ((OnFriendSelectedListener)a.getActivity()).a(s);
                }
                a.getActivity().getSupportFragmentManager().beginTransaction().remove(a).addToBackStack("Chosen remote recipient").commit();
            }

            
            {
                a = BugReportRemoteLogListFragment.this;
                super();
            }
        });
        return view;
    }
}
