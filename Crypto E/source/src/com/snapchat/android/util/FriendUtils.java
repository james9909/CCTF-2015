// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.TextUtils;
import com.snapchat.android.chat.ConversationUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatConversationManager;
import com.snapchat.android.model.server.ServerFriend;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.Iterator;
import java.util.List;

public class FriendUtils
{

    public FriendUtils()
    {
    }

    public static Friend a(Friend friend, User user)
    {
        user.v().remove(friend);
        user.e(friend);
        user.d(friend);
        List list = user.w();
        int k = list.indexOf(friend);
        if (k != -1)
        {
            ((Friend)list.get(k)).b(true);
        }
        return friend;
    }

    public static Friend a(ServerFriend serverfriend, User user)
    {
        return a(new Friend(serverfriend, user), user);
    }

    public static Friend a(String s, User user)
    {
        if (user != null)
        {
            Friend friend = user.b(s);
            if (friend != null)
            {
                return friend;
            }
        }
        return new Friend(s);
    }

    public static void a(String s, String s1, User user)
    {
        if (s.equals(UserPrefs.k()))
        {
            UserPrefs.f(s1);
        } else
        {
            Friend friend = user.b(s);
            if (friend != null)
            {
                friend.d(s1);
                return;
            }
        }
    }

    public static void a(String s, boolean flag, User user)
    {
        Friend friend = user.b(s);
        if (friend != null)
        {
            friend.b(flag);
        }
        Iterator iterator = user.r().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Friend friend1 = (Friend)iterator.next();
            if (!TextUtils.equals(friend1.a(), s))
            {
                continue;
            }
            friend1.b(flag);
            break;
        } while (true);
    }

    public static boolean a(Friend friend)
    {
        if (friend != null) goto _L2; else goto _L1
_L1:
        if (UserPrefs.h() != com.snapchat.android.fragments.settings.SettingsFragment.PrivacyOptions.a.ordinal()) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (friend.J() || friend.H() || friend.x())
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public static boolean a(String s)
    {
        User user = User.c();
        if (user == null)
        {
            return false;
        } else
        {
            return a(user.b(s));
        }
    }

    public static Friend b(Friend friend, User user)
    {
        friend.e(true);
        user.d(friend);
        return friend;
    }

    public static Friend b(ServerFriend serverfriend, User user)
    {
        return b(new Friend(serverfriend, user), user);
    }

    public static Friend b(String s, User user)
    {
        if (user != null)
        {
            return user.c(s);
        } else
        {
            return null;
        }
    }

    public static boolean c(String s, User user)
    {
        if (user != null)
        {
            Friend friend = user.b(s);
            if (friend != null)
            {
                return friend.r_();
            }
        }
        return false;
    }

    public static String d(String s, User user)
    {
        if (user != null)
        {
            Friend friend = user.b(s);
            if (friend != null)
            {
                s = friend.o();
            }
        }
        return s;
    }

    public static boolean e(String s, User user)
    {
        if (user == null)
        {
            return false;
        } else
        {
            return user.d(s);
        }
    }

    public static boolean f(String s, User user)
    {
        Friend friend = user.b(s);
        boolean flag = false;
        if (friend != null)
        {
            boolean flag1 = friend.x();
            flag = false;
            if (!flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    public static void g(String s, User user)
    {
        Friend friend = new Friend(s);
        user.e(friend);
        user.v().remove(friend);
        List list = user.w();
        int k = list.indexOf(friend);
        if (k != -1)
        {
            ((Friend)list.get(k)).b(false);
        }
        j(s, user);
        StoryLibrary.a().d(s);
        ChatConversation chatconversation = ConversationUtils.b(s);
        if (chatconversation != null)
        {
            chatconversation.e(false);
        }
    }

    public static void h(String s, User user)
    {
        user.b(s, true);
        StoryLibrary.a().d(s);
        ChatConversationManager.a().c(ChatUtils.a(s));
        j(s, user);
    }

    public static void i(String s, User user)
    {
        user.b(s, false);
    }

    private static void j(String s, User user)
    {
        List list;
        Iterator iterator;
        list = user.m();
        iterator = list.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Friend friend1 = (Friend)iterator.next();
        if (!friend1.a().equals(s)) goto _L4; else goto _L3
_L3:
        list.remove(friend1);
_L6:
        return;
_L2:
        List list1;
        Friend friend;
        list1 = user.u();
        Iterator iterator1 = list1.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            friend = (Friend)iterator1.next();
        } while (!friend.a().equals(s));
        break; /* Loop/switch isn't completed */
        if (true) goto _L6; else goto _L5
_L5:
        list1.remove(friend);
        return;
    }
}
