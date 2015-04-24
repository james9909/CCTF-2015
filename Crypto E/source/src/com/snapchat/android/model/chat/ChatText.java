// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.model.server.chat.ChatMessage;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.chat:
//            Chat

public class ChatText extends Chat
{
    public static class Builder extends Chat.Builder
    {

        private boolean hasLinks;
        private String text;

        static String a(Builder builder)
        {
            return builder.text;
        }

        static boolean b(Builder builder)
        {
            return builder.hasLinks;
        }

        public Builder a(String s)
        {
            text = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            hasLinks = flag;
            return this;
        }

        public ChatText a()
        {
            return new ChatText(this);
        }

        public Builder(String s, String s1)
        {
            super(s, s1);
        }
    }


    public static final String TYPE = "text";
    private boolean mHasLinks;

    protected ChatText(Builder builder)
    {
        super(builder);
        mUserText = Builder.a(builder);
        mHasLinks = Builder.b(builder);
    }

    public ChatText(ChatMessage chatmessage)
    {
        super(chatmessage);
        if (chatmessage.getBody().getAttributes() != null)
        {
            a(chatmessage.getBody().getText(), chatmessage.getBody().getAttributes());
        }
    }

    private void a(String s, List list)
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        int i;
        Collections.sort(list);
        stringbuilder = new StringBuilder(s);
        iterator = list.iterator();
        i = 0;
_L7:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Attributes attributes;
        attributes = (com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Attributes)iterator.next();
        if (!attributes.getAttribute().getType().equalsIgnoreCase(com.snapchat.android.model.server.chat.ChatMessage.MessageBody.Attributes.Attribute.AttributeType.LINK.name()))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (attributes.getAttribute().getAndroidHref() == null) goto _L4; else goto _L3
_L3:
        String s2 = (new StringBuilder()).append("<a href=\"").append(attributes.getAttribute().getAndroidHref()).append("\">").append(s.substring(attributes.getStart(), attributes.getEnd())).append("</a>").toString();
_L5:
        if (s2 != null)
        {
            stringbuilder.replace(i + attributes.getStart(), i + attributes.getEnd(), s2);
            i += s2.length() - (attributes.getEnd() - attributes.getStart());
            mHasLinks = true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        String s1 = attributes.getAttribute().getHref();
        s2 = null;
        if (s1 != null)
        {
            s2 = (new StringBuilder()).append("<a href=\"").append(attributes.getAttribute().getHref()).append("\">").append(s.substring(attributes.getStart(), attributes.getEnd())).append("</a>").toString();
        }
        if (true) goto _L5; else goto _L2
_L2:
        mUserText = stringbuilder.toString();
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a(Chat chat)
    {
        super.a(chat);
        mUserText = chat.mUserText;
    }

    public boolean aq()
    {
        return mHasLinks;
    }

    public String e()
    {
        return "text";
    }
}
