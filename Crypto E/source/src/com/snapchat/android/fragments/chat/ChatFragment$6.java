// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.text.Editable;
import android.text.Layout;
import android.text.Selection;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.here.HereTooltip;
import com.snapchat.android.util.chat.EmojiDetector;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements TextWatcher
{

    final ChatFragment a;
    private boolean b;
    private boolean c;

    public void afterTextChanged(Editable editable)
    {
        if (!c)
        {
            if (b)
            {
                int i = Selection.getSelectionStart(editable);
                int j = Selection.getSelectionEnd(editable);
                if (i == j && ChatFragment.j(a))
                {
                    ImageSpan aimagespan[] = (ImageSpan[])editable.getSpans(i, j, android/text/style/ImageSpan);
                    if (aimagespan.length > 0)
                    {
                        c = true;
                        editable.replace(editable.getSpanStart(aimagespan[0]), editable.getSpanEnd(aimagespan[0]), "");
                        editable.removeSpan(aimagespan[0]);
                        c = false;
                        if (!ChatFragment.j(a))
                        {
                            ChatFragment.a(a, null);
                        }
                    }
                }
            }
            boolean flag = ChatFragment.a(a);
            Layout layout = ChatFragment.k(a).getLayout();
            boolean flag1;
            byte byte0;
            if (layout != null)
            {
                if (ChatFragment.l(a) == 1.401298E-45F)
                {
                    ChatFragment.a(a, ChatFragment.i(a).getLeft());
                }
                if (ChatFragment.m(a) == 1.401298E-45F)
                {
                    ChatFragment.b(a, ChatFragment.k(a).getPaddingLeft());
                }
                float f = ChatFragment.m(a) + layout.getLineWidth(0);
                ChatCameraButton chatcamerabutton;
                HereTooltip heretooltip;
                ChatConversation chatconversation;
                boolean flag3;
                if (layout.getLineCount() > 1)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                if (flag3 || f >= ChatFragment.l(a))
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            } else
            {
                flag1 = false;
            }
            chatcamerabutton = ChatFragment.i(a);
            if (flag1)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            chatcamerabutton.setVisibility(byte0);
            if (ChatFragment.h(a) != null)
            {
                heretooltip = ChatFragment.n(a);
                chatconversation = ChatFragment.h(a);
                boolean flag2;
                if (!flag1 && !flag)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                heretooltip.a(chatconversation, flag2);
            }
            if (ChatFragment.h(a) != null && ChatFragment.h(a).az())
            {
                if (editable.length() == 0)
                {
                    ChatFragment.h(a).k(false);
                    return;
                } else
                {
                    ChatFragment.h(a).k(true);
                    return;
                }
            }
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        boolean flag;
        if (k <= 2)
        {
            String s = charsequence.subSequence(i, i + k).toString();
            ChatFragment.i(a).setIsEmoji(EmojiDetector.a(s, false));
        } else
        {
            ChatFragment.i(a).setIsEmoji(false);
        }
        flag = false;
        if (k < j)
        {
            flag = true;
        }
        b = flag;
    }

    (ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
