// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            ClearConversationsAdapter

class a
    implements android.content.r
{

    final CheckBox a;
    final b b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (a.isChecked())
        {
            UserPrefs.j(false);
        }
        ClearConversationsAdapter.a(b.b, b.b, b.b);
    }

    rConversationsViewHolder(rConversationsViewHolder rconversationsviewholder, CheckBox checkbox)
    {
        b = rconversationsviewholder;
        a = checkbox;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/ClearConversationsAdapter$1

/* anonymous class */
    class ClearConversationsAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final ClearConversationsAdapter.ClearConversationsViewHolder a;
        final ChatConversation b;
        final ClearConversationsAdapter c;

        public void onClick(View view)
        {
            if (UserPrefs.I())
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(ClearConversationsAdapter.a(c));
                View view1 = ClearConversationsAdapter.b(c).inflate(0x7f04002d, null);
                if (view1 == null)
                {
                    throw new NullPointerException();
                } else
                {
                    CheckBox checkbox = (CheckBox)view1.findViewById(0x7f0a0128);
                    checkbox.setText(0x7f0c022b);
                    builder.setView(view1).setTitle(0x7f0c01ac).setPositiveButton(0x7f0c0142, new ClearConversationsAdapter._cls1._cls1(this, checkbox)).setNegativeButton(0x7f0c003d, null);
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
                c = clearconversationsadapter;
                a = clearconversationsviewholder;
                b = chatconversation;
                super();
            }
    }

}
